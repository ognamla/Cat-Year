
//
//  ViewController.swift
//  Hello World
//
//  Created by Mac on 2017/1/18.
//  Copyright © 2017年 SwiftCourse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var ageText: UITextField!
    
    
    @IBOutlet var ageLabel: UILabel!
    
    @IBAction func ageSubmit(_ sender: Any) {
   
        
        var ageLabelInt: Int {
            get {
                return Int(ageLabel.text!)!
            }
            set {
                ageLabel.text = String(newValue)
            }
        }
        switch Int(ageText.text!)! {
        case 1: ageLabelInt = 15
        case 2: ageLabelInt = 24
        case 3...20 : ageLabelInt = (Int(ageText.text!)!-2) * 4 + 24
        default: break
        }
        
        
        
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

