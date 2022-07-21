import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        var userAnswer = ""
        if let intResult = sender.currentTitle { userAnswer = intResult }

        storyBrain.nextStory(userAnswer)
        updateUI()

    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getQestionText()
        choice1Button.setTitle(storyBrain.example[storyBrain.questionNumber].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.example[storyBrain.questionNumber].choice2, for: .normal)
    }
    
    
    
    
}

