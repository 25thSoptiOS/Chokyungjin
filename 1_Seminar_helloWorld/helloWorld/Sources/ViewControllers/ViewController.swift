//
//  ViewController.swift
//  helloWorld
//
//  Created by 조경진 on 28/09/2019.
//  Copyright © 2019 조경진. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //IBOutlet..
    @IBOutlet weak var helloLabel: UILabel!
    
    //Vars..
    static var hello: String = ""
    
    //init
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //IBAction..
    @IBAction func hello(_ sender: Any) {
        self.helloLabel.text = "SOPT!"
    }
    
    @IBAction func move(_ sender: Any) {
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as? SecondViewController {
        
            
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    

}

