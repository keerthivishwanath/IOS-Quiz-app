//
//  ViewController.swift
//  QuestionAnswering
//
//  Created by VISHWANATH KEERTHI on 7/17/18.
//  Copyright © 2018 MAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var txtUserName: UITextField!
    @IBOutlet var btnEnter: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btnEnter.isEnabled = false
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
            if let mainView = segue.destination as? MainViewController{
                mainView.userName = txtUserName.text
            }
       
    }
    
    
    @IBAction func userNameChanged(_ sender: UITextField) {
        if txtUserName.text != ""{
            btnEnter.isEnabled = true
        }
    }
    @IBAction func btnEnterPressed(_ sender: UIButton) {
        
    }
    @IBAction func textFieldDoneEditing(sender: UITextField){
        
    }
    
    
    @IBAction func onTapGestureRecognized(_ sender: Any) {
        txtUserName.resignFirstResponder()
    }
    
}

