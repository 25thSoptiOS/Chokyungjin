//
//  ResultViewController.swift
//  2nd_Practice
//
//  Created by 조경진 on 12/10/2019.
//  Copyright © 2019 조경진. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    //IBO..
    
    @IBOutlet weak var resultEmail: UILabel!
    @IBOutlet weak var resultUpdate: UILabel!
    @IBOutlet weak var resultInterval: UILabel!
    
    
    //Vars..
       var paramEmail : String = ""
       var paramUpdate : Bool = false
       var paramInterval : Double = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.resultEmail.text = paramEmail
        self.resultUpdate.text = (self.paramUpdate == true ? "자동갱신" : "자동갱신 안함")
        self.resultInterval.text = "(\(Int(paramInterval))분 마다 갱신)"
    }
    

    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
 

}
