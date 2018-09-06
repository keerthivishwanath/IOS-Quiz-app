//
//  MainViewController.swift
//  QuestionAnswering
//
//  Created by VISHWANATH KEERTHI on 7/17/18.
//  Copyright © 2018 MAC. All rights reserved.
//

import UIKit


protocol RandomIntGeneratorTemplate {
    static var count: Int{get set}
    static var limitFrom: Int{get set}
    static var limitTo: Int{get set}
    static func getValues()->[Int]
}
class RandomGenerator: RandomIntGeneratorTemplate{
 
    static var count = 5
    static var limitFrom = 0
    static var limitTo = 10
    static func getValues() -> [Int] {
        var values:Array<Int> = Array()
        for _ in 0..<count{
            while(true){
                let v = arc4random_uniform(UInt32(limitTo - limitFrom)) + UInt32(limitFrom)
                if values.contains(Int(v)){
                    continue
                }
                values.append(Int(v))
                break
            }
            
        }
        return values
    }
 
}
class MainViewController: UIViewController {
    
    @IBOutlet var lblQuestion: UILabel!


    @IBOutlet var lblProgress: UILabel!
    
    @IBOutlet var btnA: UIButton!
    @IBOutlet var btnB: UIButton!
    @IBOutlet var btnC: UIButton!
    @IBOutlet var btnD: UIButton!
    var userName:String!
    var questions:Array<Question>!
    var currentIdx:Int = 0
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //lblQuestion.text = userName
        currentIdx = 0
        score = 0
        questions = Array()
        generateQuestions()
        displayQuestion()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func generateQuestions(){
        let questionDB = QuestionDB()
        let questionIdxs = RandomGenerator.getValues()
        for idx in questionIdxs{
            questions.append(questionDB.questions[idx])
        }
    }
    func quizFinished(){
        
        let resultView = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        resultView.score = score
        resultView.questions = questions
        resultView.userName = userName
        navigationController?.pushViewController(resultView, animated: true)
    }
    
    func displayQuestion(){
        if currentIdx == questions.count{
            quizFinished()
            return
        }
        lblProgress.text = "\(currentIdx + 1)/\(questions.count)"
        //lblProgress.text = userName
        lblQuestion.text = questions[currentIdx].question
        btnA.setTitle(questions[currentIdx].ansA, for: .normal)
        btnB.setTitle(questions[currentIdx].ansB, for: .normal)
        btnC.setTitle(questions[currentIdx].ansC, for: .normal)
        btnD.setTitle(questions[currentIdx].ansD, for: .normal)
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        if currentIdx == questions.count{
            return
        }
        let selectedIdx = sender.tag
        if selectedIdx == questions[currentIdx].idx{
            score += 1
        }
        currentIdx += 1
        displayQuestion()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
