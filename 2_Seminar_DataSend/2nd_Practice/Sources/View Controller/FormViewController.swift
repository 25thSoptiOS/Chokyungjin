//
//  FormViewController.swift
//  2nd_Practice
//
//  Created by 조경진 on 12/10/2019.
//  Copyright © 2019 조경진. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {

    //IBO..
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var Update: UILabel!
    @IBOutlet weak var UpdateInterval: UILabel!
    @IBOutlet weak var UpdateSwitch: UISwitch!
    @IBOutlet weak var SubnitButton: UIButton!
    @IBOutlet weak var Stepper: UIStepper!
    
   //vars..
    var count = 0
    
    //inits..
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func UpdateAction(_ sender: UISwitch!) {
        if sender.isOn {
            Update.text = "자동갱신"
        }
        else {
            Update.text = "비자동갱신"
        }
    }
    
    //IBActions..
    @IBAction func counting(_ sender: Any) {
        
        self.UpdateInterval.text = String(Int(Stepper.value)) + "분 마다"
    }
    
    @IBAction func SubmitAction(_ sender: Any) {
        
        guard let rvc = self.storyboard?.instantiateViewController(identifier: "RVC") as? ResultViewController else {
            return
        }
        
        rvc.paramEmail = self.emailText.text!
        rvc.paramUpdate = self.UpdateSwitch.isOn
        rvc.paramInterval = self.Stepper.value
         
        self.present(rvc, animated: true, completion: nil)
        
    }

}
