import * as React from "react";
import { styled } from "@mui/material/styles";
import TableCell, { tableCellClasses } from "@mui/material/TableCell";
import Checkbox from "@mui/material/Checkbox";
import { LaboratoryUser } from "@/resources/types";
import { StyledTableCell } from "@/components/survey/SurveyTable";

export type SurveyTableVoteCellProps = {
  rank: number;
  labId: number;
  users: LaboratoryUser[];
  isVoting: boolean;
  matches: boolean;
  max_request: number;
  selectedLabIds: { rank: number; labId: number }[];
  setSelectedLabIds: React.Dispatch<
    React.SetStateAction<{ rank: number; labId: number }[]>
  >;
  votedLabIds: { rank: number; labId: number }[];
};

export const SurveyTableVoteCell = ({
  rank,
  labId,
  users,
  isVoting,
  matches,
  max_request,
  selectedLabIds,
  setSelectedLabIds,
  votedLabIds,
}: SurveyTableVoteCellProps) => {
  const isVoted = (rank: number, labId: number) => {
    return votedLabIds.some((e) => e.rank === rank && e.labId === labId);
  };

  const isSelected = (rank: number, labId: number) => {
    return selectedLabIds.some((e) => e.rank === rank && e.labId === labId);
  };

  const onCheckBoxChange = (event: React.ChangeEvent<HTMLInputElement>) => {
    if (!event.target.checked) {
      setSelectedLabIds(
        selectedLabIds.filter((e) => e.rank !== rank || e.labId !== labId)
      );
    } else {
      setSelectedLabIds([
        ...selectedLabIds.filter((e) => e.rank !== rank && e.labId !== labId),
        { rank, labId },
      ]);
    }
  };

  return (
    <StyledTableCell
      align="center"
      sx={{ ...(isVoted(rank, labId) && { backgroundColor: "#ffffe0" })}}
      width={100 / (max_request + (matches ? 7 : 1)) + "%"}
    >
      {users.length}
      <br />
      <Checkbox
        checked={isSelected(rank, labId)}
        onChange={onCheckBoxChange}
        sx={{ visibility: isVoting ? "visible" : "hidden" }}
      />
    </StyledTableCell>
  );
};
