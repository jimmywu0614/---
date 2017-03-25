//
//  TipViewController.swift
//  只要我長大
//
//  Created by yuanchen on 2017/3/25.
//  Copyright © 2017年 yuanchen. All rights reserved.
//

import UIKit

class TipViewController: UIViewController {

    
    @IBOutlet weak var moneyTextField: UITextField!
    
    
    @IBOutlet weak var tipTextField: UITextField!
    
    
    @IBOutlet weak var result: UILabel!
  
    
    @IBAction func culculate(_ sender: Any) {
        if moneyTextField.text == "" || tipTextField.text == ""{
            result.text = "請輸入"
    }
        else {
            result.text = String(Double(moneyTextField.text!)! * Double(tipTextField.text!)! / 100)
        }
        
        
        
    func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func didReceiveMemoryWarning() {
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
