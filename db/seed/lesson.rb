module Seed
  Lesson.create([
    {
      id: 1,
      words: "Minä*Sinä*Hän",
      completed: true,
      skill_id: 1
    },
    { 
      id: 2,
      words: "Me*Te*He",
      completed: false,
      skill_id: 1
    }
  ])
end