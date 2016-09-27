//
//  NewVC.swift
//  Demo_on_swift
//
//  Created by App Developer on 26/09/16.
//  Copyright © 2016 App Developer. All rights reserved.
//

import UIKit

class NewVC: UIViewController
{
   
var displayString = ""
    
    
      
    @IBOutlet var txtDisplay: UITextField!
    
    var strCurrentNumber = Float()
    var strCurrentOperation = String()
    var strResult = Float()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        strCurrentOperation = "="
        txtDisplay.text = ("\(strResult)")
        
    }
    
     
    @IBAction func btnintegers(_ sender: UIButton)
    {
     //   strCurrentNumber = strCurrentNumber * 10 + Float( Int(sender.titleLabel!.text!)!)
        
        strCurrentNumber = Float( Int(sender.titleLabel!.text!)!)
        
        
        txtDisplay.text = ("\(strCurrentNumber)")
        print(strCurrentNumber)
        
        
        
        
        
        
    }
    
    
    @IBAction func btnOperation(_ sender: UIButton)
    {
        switch strCurrentOperation {
        case "=":
            strResult = strCurrentNumber
            
        case "+":
            
            strResult = strResult + strCurrentNumber
            
        case "-":
            strResult = strResult - strCurrentNumber

        case "*":
            strResult = strResult * strCurrentNumber

        case "/":
            strResult = strResult / strCurrentNumber
        

        default:
            print("error")
            
        }
        
        strCurrentNumber = 0
        txtDisplay.text = ("\(strResult)")
        
        if sender.titleLabel!.text == "="
        {
            strResult = 0
            
        }
        
        strCurrentOperation = sender.titleLabel!.text! as String!
        
        
        
    }
    @IBAction func btnClear(_ sender: UIButton)
    {
        strCurrentOperation = "="
        strResult = 0
        strCurrentNumber = 0
        txtDisplay.text = ("\(strResult)")
        
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

}
