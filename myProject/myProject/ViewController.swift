//
//  ViewController.swift
//  myProject
//
//  Created by Parker, Connor on 2/20/19.
//  Copyright © 2019 Parker, Connor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var score:Int = 0
    var clicks:Int = 0
    var name:String = ""
    var chars:Int = 0
    var counter:Int = 30
    var timer = Timer()
    var isTimerRunning:Bool = false
    
    
    @IBOutlet weak var myScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var bananaButton: UIButton!
    
    @IBOutlet weak var appleButton: UIButton!
    
    @IBOutlet weak var orangeButton: UIButton!
    
    
    @IBOutlet weak var grapeButton: UIButton!
    
    func didScore(points:Int){
        score = score + points
        if(score % chars == 0) {
            score=0
        }
        myScore.text = "Score: \(score)"
    }

    @IBAction func myBanana(_ sender: Any) {
        didScore(points:5)
        myScore.text = "Score: \(score)"
        func runTimer(){
            timer =
                Timer.scheduledTimer(timeInterval: 1, target: self, selector:
                    (#selector(ViewController.updateTimer)), userInfo: nil, repeats: true)
            isTimerRunning = true
        }
        if isTimerRunning == false{
            runTimer()
        }
    }
    
    @IBAction func myApple(_ sender: Any) {
        didScore(points:2)
        myScore.text = "Score: \(score)"
        clicks = clicks + 1
        if(clicks == 10){
            score=0
        }
        func runTimer(){
            timer =
                Timer.scheduledTimer(timeInterval: 1, target: self, selector:
                    (#selector(ViewController.updateTimer)), userInfo: nil, repeats: true)
            isTimerRunning = true
        }
        if isTimerRunning == false{
            runTimer()
        }
    }
    
    @IBAction func myGrape(_ sender: Any) {
        didScore(points:1)
        myScore.text = "Score: \(score)"
        clicks = clicks + 1
        if(clicks == 5){
            score = 0
        }
        func runTimer(){
            timer =
                Timer.scheduledTimer(timeInterval: 1, target: self, selector:
                    (#selector(ViewController.updateTimer)), userInfo: nil, repeats: true)
            isTimerRunning = true
        }
        if isTimerRunning == false{
            runTimer()
        }
    }
    
    @IBAction func myOrange(_ sender: Any) {
        didScore(points:3)
        myScore.text = "Score: \(score)"
        clicks = clicks + 1
        if(clicks == 8){
            score = 0 
        }
        func runTimer(){
            timer =
                Timer.scheduledTimer(timeInterval: 1, target: self, selector:
                    (#selector(ViewController.updateTimer)), userInfo: nil, repeats: true)
            isTimerRunning = true
        }
            if isTimerRunning == false{
                runTimer()
            }
        }

    
    @IBOutlet weak var timerLabel: UILabel!
    @objc func updateTimer(){
        counter -= 1
        timerLabel.text = "\(counter)"
        if(counter == 0){
            timerLabel.text = "Time's Up!"
            timer.invalidate()
            
        bananaButton.isHidden = true
        orangeButton.isHidden = true
        grapeButton.isHidden = true
        appleButton.isHidden = true
        }
    }
    @IBOutlet weak var myName: UITextField!
    
    
    
    @IBOutlet weak var myGreeting: UILabel!
    
    
    @IBAction func mySubmit(_ sender: Any) {
        let name = myName.text!
        chars = name.count
        myGreeting.text = "Your favorite fruit is a \(name)"
        myName.resignFirstResponder()
    }
    
    @IBAction func myReset(_ sender: Any) {
        score = 0
        myScore.text = "Score:\(score)"
        timer.invalidate()
        counter = 30
        timerLabel.text = "\(counter)"
        isTimerRunning = false
        bananaButton.isHidden = false
        appleButton.isHidden = false
        orangeButton.isHidden = false
        grapeButton.isHidden = false
    }
    
    
    
}

