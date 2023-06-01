
import UIKit

class ViewController: UIViewController {
    
   
    
    @IBOutlet weak var lblQuestion: UILabel!
    
    @IBOutlet weak var lblScore: UILabel!
    
    @IBOutlet weak var btnTrue: UIButton!
    
    @IBOutlet weak var btnFalse: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizProvider = QuizProvider()
    
    var totalQuestion : Int = 0
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func btnAnswerTouchUpInside(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotRight = quizProvider.checkAnswer(userAnswer)
        
        if userGotRight{
            sender.backgroundColor = UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
        }
        
        quizProvider.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI(){
        btnTrue.backgroundColor = UIColor.clear
        btnFalse.backgroundColor = UIColor.clear
        lblQuestion.text = quizProvider.getQuestionText()
        progressBar.progress = quizProvider.getProgress()
        lblScore.text = "Score: \(quizProvider.getScore()) / \(quizProvider.getQuestionCount())"
    }
}

