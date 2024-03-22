


import Foundation

struct QuizBrain{
    let quiz = [
            Question(q: "The Earth revolves around the Sun", a: "True"),
            Question(q: "Water boils at 100 degrees Celsius at sea level", a: "True"),
            Question(q: "The capital of France is London", a: "False"),
            Question(q: "Mount Everest is the tallest mountain in the world", a: "True"),
            Question(q: "The chemical symbol for gold is Go", a: "False"),
            Question(q: "The Great Wall of China is visible from space", a: "False"),
            Question(q: "Oxygen is the most abundant element in Earth's crust", a: "False"),
            Question(q: "The currency of Japan is the Yen", a: "True"),
            Question(q: "The Nile River is the longest river in the world", a: "True"),
            Question(q: "The human body has 206 bones", a: "False")
        ]
    
    var questionNumber = 0
    var score = 0
    
    func checkAnswer (_ userAnswer: String) -> Bool{
        
        if userAnswer == quiz[questionNumber].answer{
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String{
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float{
        return Float(questionNumber+1)/Float(quiz.count)
    }
  
//Why mutating?
//    Because we trying to alter the property 'questionNumber' of struct inside the struct, which is not allowed. Hence mutating keyword is used to allow the method of the same structure to alter the property of the same structure
    mutating func nextQuestion(){
        if questionNumber + 1 < quiz.count{
            questionNumber+=1
        }
        else {
            questionNumber = 0
        }
    }
    
    mutating func updateScore(correct: Bool) {
            if correct {
                score += 1
            }
        }
    
}
