//
//  ResultViewController.swift
//  QuestionAnswering
//
//  Created by VISHWANATH KEERTHI on 7/17/18.
//  Copyright © 2018 MAC. All rights reserved.
//

import UIKit
import AVFoundation

class ResultViewController: UIViewController {

    @IBOutlet var lblScore: UILabel!
    
    @IBOutlet var lblSentence: UILabel!
    
    @IBOutlet var btnRetake: UIBarButtonItem!
    
    @IBOutlet var btnShowAnswers: UIBarButtonItem!
    
    @IBOutlet var btnExit: UIBarButtonItem!
    var player: AVAudioPlayer?
    
    var score:Int = 0
    var questions:[Question]!
    var userName:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        display()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "sound", withExtension: "mp3")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
            
        } catch let error as NSError {
            print(error.description)
        }
    }
    
    func display(){
        lblScore.text = "Your score : \(score)/5"
        if score <= 2{
            lblSentence.text = "\(userName), please try again!"
        }
        if score == 3{
            lblSentence.text = "\(userName), good job!"
        }
        if score == 4{
            lblSentence.text = "\(userName), excellent work!"
        }
        if score == 5{
            lblSentence.text = "\(userName), you are genius!"
            playSound()
        }
        
        if score > 3{
            btnRetake.isEnabled = false
            btnRetake.tintColor = UIColor.clear
        }
        else{
            btnRetake.isEnabled = true
            btnRetake.tintColor = nil
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func exitPressed(_ sender: UIBarButtonItem) {
        exit(0)
    }
    
    
    @IBAction func showPressed(_ sender: UIBarButtonItem) {
       
        let resultView = storyboard?.instantiateViewController(withIdentifier: "CorrectAnswerViewController") as! CorrectAnswerViewController
        resultView.questions = questions
        navigationController?.pushViewController(resultView, animated: true)
       
    }
    
    @IBAction func retakePressed(_ sender: UIBarButtonItem) {
        
    }
    
}
