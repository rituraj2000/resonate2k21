class Quiz {
  List<quiz_question> quiz_Question = [
    quiz_question(
      question: 'Question1',
      options: [
        quiz_option(
          option: 'Option2',
          point: 2,
        ),
        quiz_option(
          option: 'Option3',
          point: 3,
        ),
        quiz_option(
          option: 'Option4',
          point: 1,
        ),
      ],
    ),
    quiz_question(
      question: 'Question5',
      options: [
        quiz_option(
          option: 'Option8',
          point: 5,
        ),
        quiz_option(
          option: 'Option3232',
          point: 7,
        ),
        quiz_option(
          option: 'Option376762',
          point: 2,
        ),
        quiz_option(
          option: 'Option3434342',
          point: 2,
        ),
      ],
    ),
  ];
}
/*
*
*
*
 */

class quiz_question {
  quiz_question({this.question, this.options});

  String question;

  List<quiz_option> options;
}

/*
*
*
* */

class quiz_option {
  quiz_option({this.option, this.point});

  String option;
  int point;
}
