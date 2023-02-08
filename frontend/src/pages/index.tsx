import Head from 'next/head'
import { useAuth0 } from "@auth0/auth0-react";
import { useEffect, useState } from 'react';
import { useApiAgent } from '@/utils/api_agent';
import { Laboratory, User } from '@/resources/types';
import { SurveyTable } from '@/components/survey/SurveyTable';
import { Survey } from '@/resources/types';
import Grid from '@mui/material/Grid';
import Typography from '@mui/material/Typography';
import { VoteButton } from '@/components/survey/VoteButton';
import useMediaQuery from "@mui/material/useMediaQuery";
import { theme } from "@/styles/mui";
import { initialSurveyName } from "@/resources/constants";

export default function Home() {
  const apiAgent = useApiAgent();
  const { isLoading, isAuthenticated } = useAuth0();
  const [user, setUser] = useState<User | null>(null);
  const [survey, setSurvey] = useState<Survey | null>(null);
  const [surveyName, setSurveyName] = useState<string>(initialSurveyName);
  const [isVoting, setIsVoting] = useState<boolean>(false);
  const [laboratories, setLaboratories] = useState<Laboratory[]>([])
  const [voterCount, setVoterCount] = useState<number>(0);
  const [selectedLabIds, setSelectedLabIds] = useState<
    { rank: number; labId: number }[]
  >([]);
  const [votedLabIds, setVotedLabIds] = useState<
    { rank: number; labId: number }[]
  >([]);
  const matches: boolean = useMediaQuery(() => theme.breakpoints.up("sm"));

  const fetchUser = async () => {
    apiAgent({
      url: `/api/users/new`,
      method: "GET",
    })
      .then((response) => response.json())
      .then((json) => {
        setUser(json.user);
        setSelectedLabIds(json.votedLabIds);
        setVotedLabIds(json.votedLabIds);
      });
  };

  const fetchSurvey = async () => {
    const data = { name: surveyName };
    const query = new URLSearchParams(data).toString();
    apiAgent({
      url: `/api/surveys`,
      method: "GET",
      data: query,
      outerMember: true,
    })
      .then((response) => response.json())
      .then((json) => {
        setSurvey(json.survey);
        setLaboratories(json.laboratories);
        calculateVoterCount(json.laboratories);
      });
  };

  const calculateVoterCount = (laboratories: Laboratory[]) => {
    let count = 0;
    laboratories.forEach((lab) => {
      count += lab.users.filter((user) => user.rank == 1).length;
    });
    setVoterCount(count);
  };

  useEffect(() => {
    fetchSurvey();

    if(isAuthenticated){
      fetchUser();
    }
  }, [isAuthenticated]);

  if(isLoading){
    return <div>Loading...</div>
  }

  return (
    <>
      <Head>
        <title>KUlabMatch | HOME</title>
      </Head>
      <Grid container>
        <Grid item xs={9} md={11}>
          <Typography variant={ matches ? "h4" : "h6" } align="center" sx={{ p: 1 }}>
            {survey ? survey.name : ""}(投票者数: {voterCount})
          </Typography>
        </Grid>
        <Grid item xs={3} md={1} sx={{ display: "flex", alignItems: "center" }}>
          {user && (
            <VoteButton
              user={user}
              survey={survey}
              isVoting={isVoting}
              setIsVoting={setIsVoting}
              selectedLabIds={selectedLabIds}
              votedLabIds={votedLabIds}
              setVotedLabIds={setVotedLabIds}
              setLaboratories={setLaboratories}
            />
          )}
        </Grid>
      </Grid>
      {survey && (
        <SurveyTable
          max_request={survey.max_request}
          laboratories={laboratories}
          isVoting={isVoting}
          matches={matches}
          selectedLabIds={selectedLabIds}
          setSelectedLabIds={setSelectedLabIds}
          votedLabIds={votedLabIds}
          setVotedLabIds={setVotedLabIds}
        />
      )}
    </>
  )
}
