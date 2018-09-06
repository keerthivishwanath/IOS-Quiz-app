//
//  File.swift
//  QuestionAndAnswering
//
//  Created by VISHWANATH KEERTHI on 7/17/18.
//  Copyright © 2018 MAC. All rights reserved.
//

import Foundation
class QuestionDB{
    var questions:Array<Question> = Array()
    //var question = [Question]()
    init() {
        //Question-1
        questions.append(Question(question:"The DBMS acts as an interface between what two components of an enterprise-class database system?", ansA:"Database application and the database", ansB:"Data and the database", ansC:"The user and the database application", ansD:"Database application and SQL", idx:0))
       //Question-2
        questions.append(Question(question:"Which of the following products was an early implementation of the relational model developed by E.F. Codd of IBM?", ansA:"IDMS", ansB:"DB2", ansC:"dBase-II", ansD:"R:base", idx:1))
        //Question-3
        questions.append(Question(question:"The following are components of a database except ________ .", ansA:"user data", ansB:"metadata", ansC:"reports", ansD:"ndexes", idx:2))
        //Question-4
        questions.append(Question(question:"An application where only one user accesses the database at a given time is an example of a(n) ________ .", ansA:"single-user database application", ansB:"multiuser database application", ansC:"e-commerce database application", ansD:"data mining database application", idx:0))
        //Question-5
        questions.append(Question(question:"An on-line commercial site such as Amazon.com is an example of a(n) ________ .", ansA:"single-user database application", ansB:"multiuser database application", ansC:"e-commerce database application", ansD:"data mining database application", idx:2))
        //Question-6
        questions.append(Question(question:"Which of the following products was the first to implement true relational algebra in a PC DBMS?", ansA:"IDMS", ansB:"Oracle", ansC:"dBase-II", ansD:"R:base", idx:3))
        //Question-7
        questions.append(Question(question:"SQL stands for ________ .", ansA:"Structured Query Language", ansB:"Sequential Query Language", ansC:"Structured Question Language", ansD:"Sequential Question Language", idx:0))
        //Question-8
        questions.append(Question(question:"Because it contains a description of its own structure, a database is considered to be ________ .", ansA:"described", ansB:"metadata compatible", ansC:"self-describing", ansD:"an application program", idx:2))
        //Question-9
        questions.append(Question(question:"The following are functions of a DBMS except ________ .", ansA:"creating and processing forms", ansB:"creating databases", ansC:"processing data", ansD:"administrating databases", idx:0))
        //Question-10
        questions.append(Question(question:"Helping people keep track of things is the purpose of a(n) ________ .", ansA:"database", ansB:"table", ansC:"instance", ansD:"relationship", idx:0))
    }
}
