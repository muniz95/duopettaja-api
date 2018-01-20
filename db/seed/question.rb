module Seed
  Question.create([
    {
      id: 1,
      category: "guess",
      expression: "Minä",
      weight: 33,
      audio: "",
      lesson_id: 1
    },
    {
      id: 2,
      category: "compound",
      expression: "Minä olen mies",
      weight: 33,
      audio: "",
      lesson_id: 1
    },
    {
      id: 3,
      category: "guess",
      expression: "Minä",
      weight: 34,
      audio: "",
      lesson_id: 1
    }
  ])
end