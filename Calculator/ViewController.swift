//
//  ViewController.swift
//  Calculator
//
//  Created by HebeChung on 16/9/9.
//  Copyright © 2016年 HebeChung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var isMidleInTyping:Bool=false;

    @IBOutlet weak var display: UILabel!
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit=sender.currentTitle!
        let currentDigital=display.text!
        if isMidleInTyping {
            display.text=currentDigital+digit;
        } else{
            display.text=digit;
        }
        isMidleInTyping=true
    }
    
    @IBAction func touchSymble(_ sender: UIButton) {
        isMidleInTyping=false
        if let matchSymble=sender.currentTitle {
            if matchSymble=="π" {
                display.text=String(M_PI)
            }
        }
        
        
        
    }
    
    
}

