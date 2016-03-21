//
//  ViewController.swift
//  Number guessing game
//
//  Created by Álvaro Márquez on 21/3/16.
//  Copyright © 2016 Álvaro Márquez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     var rand = Int(arc4random_uniform(100) + 1)
    @IBOutlet var UserNumberTextField: UITextField!
    @IBAction func NumberSubmitButton(sender: AnyObject) {
        
        let intInput = Int(UserNumberTextField.text!)
        if intInput > rand {
            AnswerLabel.text = "I'm thinking in a smaller number"
        }else if intInput < rand {
            AnswerLabel.text = "I'm thinking in a bigger number"
        }else{
            AnswerLabel.text = "Congrats, you're right"
        }
        
    }
    @IBOutlet var AnswerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

