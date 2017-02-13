package edu.nvcc.csc;

/**
 * Created by Clue on 2/8/2017.
 */
    public class Question {
        int questionNumber;
        String questionBody;

        public Question() {}

        public Question(int questionNumber, String questionBody) {
            this.questionNumber = questionNumber;
            this.questionBody = questionBody;

        }
        public int getQuestionNumber(){
            return questionNumber;
        }

        public void setQuestionNumber(int questionNumber){
            this.questionNumber = questionNumber;
        }

        public String getQuestionBody(){
            return questionBody;
        }

        public void setQuestionBody(String questionBody){
            this.questionBody = questionBody;
        }

        @Override
        public String toString() {
            return "Question Number: "
                    + " "+ questionNumber + " | "
                    + questionBody+".";
    }
    }
