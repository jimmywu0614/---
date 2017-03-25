//
//  TipViewController.swift
//  只要我長大
//
//  Created by yuanchen on 2017/3/25.
//  Copyright © 2017年 yuanchen. All rights reserved.
//

import UIKit

class TipViewController: UIViewController {
    
    @IBOutlet weak var money: UITextField!
    
    @IBOutlet weak var tip: UITextField!

    @IBOutlet weak var result: UILabel!
    
    @IBAction func cilculate(_ sender: Any) {
        money.resignFirstResponder()
        tip.resignFirstResponder()
        
        result.isHidden = false
        
        if money.text == "" {
            result.text = "0"
        }
        else{
            if tip.text == "" {
                result.text = money.text
            }
            else {
                result.text = String(Int(money.text!)! * Int(tip.text!)! / 100)
            }
        }
    }
    
    //按按鈕收鍵盤
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        money.resignFirstResponder()
        tip.resignFirstResponder()
        return true
    }
    
    //按任意地方收鍵盤
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(TipViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
