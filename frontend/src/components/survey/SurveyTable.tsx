import * as React from "react";
import { styled } from "@mui/material/styles";
import Table from "@mui/material/Table";
import TableBody from "@mui/material/TableBody";
import TableCell, { tableCellClasses } from "@mui/material/TableCell";
import TableContainer from "@mui/material/TableContainer";
import TableHead from "@mui/material/TableHead";
import TableRow from "@mui/material/TableRow";
import Paper from "@mui/material/Paper";
import Typography from "@mui/material/Typography";
import { Laboratory } from "@/resources/types";
import { SurveyTableLabRow } from "@/components/survey/SurveyTableLabRow";

export const StyledTableCell = styled(TableCell)(({ theme }) => ({
  [`&.${tableCellClasses.head}`]: {
    backgroundColor: theme.palette.common.black,
    color: theme.palette.common.white,
  },
  [`&.${tableCellClasses.body}`]: {
    fontSize: 14,
  },
}));

export const StyledTableRow = styled(TableRow)(({ theme }) => ({
  "&:nth-of-type(even)": {
    backgroundColor: theme.palette.action.hover,
  },
  // hide last border
  "&:last-child td, &:last-child th": {
    border: 0,
  },
}));

const groupBy = <T, K extends keyof any>(arr: T[], key: (i: T) => K) =>
  arr.reduce((groups, item) => {
    (groups[key(item)] ||= []).push(item);
    return groups;
  }, {} as Record<K, T[]>);

export type SurveyTableProps = {
  max_request: number;
  laboratories: Laboratory[];
  isVoting: boolean;
  matches: boolean;
  selectedLabIds: { rank: number; labId: number }[];
  setSelectedLabIds: React.Dispatch<
    React.SetStateAction<{ rank: number; labId: number }[]>
  >;
  votedLabIds: { rank: number; labId: number }[];
  setVotedLabIds?: React.Dispatch<
    React.SetStateAction<{ rank: number; labId: number }[]>
  >;
};

export const SurveyTable = ({
  max_request,
  laboratories,
  isVoting,
  matches,
  selectedLabIds,
  setSelectedLabIds,
  votedLabIds,
}: SurveyTableProps) => {
  const labs_by_department = laboratories
    ? groupBy(laboratories, (lab) => lab.department)
    : {};
  const departments = Object.keys(labs_by_department);


  return (
    <TableContainer component={Paper}>
      <Table stickyHeader sx={{ minWidth: 400 }}>
        <TableHead>
          <TableRow>
            {matches && (
              <StyledTableCell align="center" colSpan={3}>
                研究室
              </StyledTableCell>
            )}
            <StyledTableCell align="center" colSpan={max_request}>
              希望順位
            </StyledTableCell>
            <StyledTableCell></StyledTableCell>
          </TableRow>
          <TableRow>
            {matches && (
              <>
                <StyledTableCell align="left">専攻</StyledTableCell>
                <StyledTableCell align="left">分野</StyledTableCell>
                <StyledTableCell align="left">教員</StyledTableCell>
              </>
            )}
            {Array.from(Array(max_request).keys()).map((i) => (
              <StyledTableCell key={i} align="center">
                {i + 1}
              </StyledTableCell>
            ))}
            <StyledTableCell align="left">総数</StyledTableCell>
          </TableRow>
        </TableHead>
        {departments.map((department, i) => (
          <TableBody key={i}>
            <StyledTableRow key={department}>
              <StyledTableCell
                component="th"
                scope="row"
                colSpan={matches ? max_request + 4 : max_request + 1}
                sx={{ backgroundColor: "#a9a9a9" }}
              >
                <Typography
                  variant="h6"
                  component="div"
                  align="center"
                  sx={{ fontWeight: "bold" }}
                >
                  {department}
                </Typography>
              </StyledTableCell>
            </StyledTableRow>
            {labs_by_department[department]
              .sort((a: Laboratory, b: Laboratory) => Number(a.field > b.field))
              .map((laboratory) => (
                <SurveyTableLabRow
                  key={laboratory.id}
                  max_request={max_request}
                  laboratory={laboratory}
                  isVoting={isVoting}
                  matches={matches}
                  selectedLabIds={selectedLabIds}
                  setSelectedLabIds={setSelectedLabIds}
                  votedLabIds={votedLabIds}
                />
              ))}
          </TableBody>
        ))}
      </Table>
    </TableContainer>
  );
};