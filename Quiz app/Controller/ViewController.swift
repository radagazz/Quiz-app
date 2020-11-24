//
//  ViewController.swift
//  Quiz app
//
//  Created by anurak teerarattananukulchai on 13/11/2563 BE.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLable: UILabel!
    @IBOutlet weak var progressBarView: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let userGotItRight = quizBrain.checkAnswer(userAnswer!)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateUI(){
        questionLable.text = quizBrain.getQuestionText()
        progressBarView.progress = quizBrain.getProgress()
        trueButton.backgroundColor = UIColor.systemIndigo
        falseButton.backgroundColor = UIColor.systemIndigo
        
    }
}

