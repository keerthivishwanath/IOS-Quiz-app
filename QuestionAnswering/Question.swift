//
//  Question.swift
//  QuestionAndAnswering
//
//  Created by VISHWANATH KEERTHI on 7/17/18.
//  Copyright © 2018 MAC. All rights reserved.
//

import Foundation
/* Class to describe a question, 4 candidate answers for it and the index of correct answer*/
class Question{
    var question:String
    var ansA:String
    var ansB:String
    var ansC:String
    var ansD:String
    var idx:Int //index of correct answer
    
    init(question:String, ansA:String, ansB:String, ansC:String, ansD:String, idx:Int){
        self.question = question
        self.ansA = ansA
        self.ansB = ansB
        self.ansC = ansC
        self.ansD = ansD
        self.idx = idx
    }
}
