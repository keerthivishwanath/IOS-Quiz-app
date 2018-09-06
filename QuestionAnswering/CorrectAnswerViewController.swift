//
//  CorrectAnswerViewController.swift
//  QuestionAnswering
//
//  Created by VISHWANATH KEERTHI on 7/17/18.
//  Copyright © 2018 MAC. All rights reserved.
//

import UIKit

class CorrectAnswerViewController: UIViewController {

    @IBOutlet var lblAnswer1: UILabel!
    @IBOutlet var lblAnswer2: UILabel!
    @IBOutlet var lblAnswer3: UILabel!
    @IBOutlet var lblAnswer4: UILabel!
    @IBOutlet var lblAnswer5: UILabel!
    var questions:[Question]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        displayAnswers()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func getAns(index:Int)->String{
        var q:Question
        q = questions[index]
        switch q.idx {
        case 0:
            return q.ansA
        case 1:
            return q.ansB
        case 2:
            return q.ansC
        default:
            return q.ansD
        }
    }
    func displayAnswers(){
        lblAnswer1.text = "1. \(questions[0].question)\nANS : \(getAns(index:0))"
        lblAnswer2.text = "2. \(questions[1].question)\nANS : \(getAns(index:1))"
        lblAnswer3.text = "3. \(questions[2].question)\nANS : \(getAns(index:2))"
        lblAnswer4.text = "4. \(questions[3].question)\nANS : \(getAns(index:3))"
        lblAnswer5.text = "5. \(questions[4].question)\nANS : \(getAns(index:4))"
    }
    @IBAction func buttonBackPressed(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
    }
}
