import Foundation

struct StoryBrain {
    let example = [Story(title: "You see a fork in the road.",
    choice1: "Take a left.",
    choice2: "Take a right."),
                   Story(title: "You see a tiger.",
                   choice1: "Shout for help.",
                   choice2: "Play dead."),
                   Story(title: "You find a treasure chest.",
                   choice1: "Open it.",
                   choice2: "Check for traps."),
                   Story(title: "The tiger killed you.",
                   choice1: "",
                   choice2: "Click to restart."),
                   Story(title: "Now you are a rich man.",
                   choice1: "",
                   choice2: "Click to restart."),
    ]
    
    var questionNumber = 0
    

    
    mutating func nextStory(_ userAnswer: String) {
        if userAnswer == example[questionNumber].choice1 {
            questionNumber += 1
          

        } else if userAnswer == example[questionNumber].choice2 {
            questionNumber += 2
                if questionNumber == 5 || questionNumber == 6 {
                    return questionNumber = 0
                }
        }
        
    }
    
    func getQestionText () -> String {
        return example[questionNumber].title
    }
    
    
}


