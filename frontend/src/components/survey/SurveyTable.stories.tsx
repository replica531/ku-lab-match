import { ComponentMeta, ComponentStoryObj } from "@storybook/react";

import { SurveyTable } from "./SurveyTable";

export default {
  component: SurveyTable
} as ComponentMeta<typeof SurveyTable>;

export const Loading: ComponentStoryObj<typeof SurveyTable> = {
  args: {
    
  },
};
