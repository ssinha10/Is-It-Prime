//
//  ViewController.swift
//  Is It Prime
//
//  Created by Suraj Sinha on 12/29/14.
//  Copyright (c) 2014 KingSoy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var number: UITextField!
    
    @IBOutlet var result: UILabel!
    
    @IBAction func button(sender: AnyObject) {
        
        var numberInt = number.text.toInt()
        
        if numberInt != nil{
            
            var unwrappedNumber = numberInt!
            
            var isPrime = true
            
            if unwrappedNumber == 1 {
                
                isPrime = false
                
            }
            
            if unwrappedNumber != 2 && unwrappedNumber != 1 {
                
                for var i = 2; i < unwrappedNumber; i++ {
                    if unwrappedNumber % i == 0{
                        isPrime = false
                    }
                }
                
                
            }
            if isPrime == true {
            
                result.text = "Prime"
                
                
            } else{
                
                result.text = "Not Prime"
                
            }
            

            
            
        } else{
            result.text = "Please enter a number"
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

