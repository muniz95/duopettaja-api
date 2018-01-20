module Seed
  QuestionOption.create([
    { id: 1, text: "I", correct: true, order: 0, question_id: 1 },
    { id: 2, text: "You", correct: false, order: 0, question_id: 1 },
    { id: 3, text: "We", correct: false, order: 0, question_id: 1 },
    { id: 4, text: "Me", correct: false, order: 0, question_id: 1 },
    { id: 5, text: "I", correct: true, order: 1, question_id: 2 },
    { id: 6, text: "apple", correct: false, order: 0, question_id: 2 },
    { id: 7, text: "go", correct: false, order: 0, question_id: 2 },
    { id: 8, text: "am", correct: true, order: 2, question_id: 2 },
    { id: 9, text: "a", correct: true, order: 3, question_id: 2 },
    { id: 10, text: "an", correct: false, order: 0, question_id: 2 },
    { id: 11, text: "man", correct: true, order: 4, question_id: 2 },
    { id: 12, text: "I", correct: true, question_id: 3 },
    { id: 13, text: "You", correct: false, question_id: 3 },
    { id: 14, text: "We", correct: false, question_id: 3 },
    { id: 15, text: "Me", correct: false, question_id: 3 }
  ])
end