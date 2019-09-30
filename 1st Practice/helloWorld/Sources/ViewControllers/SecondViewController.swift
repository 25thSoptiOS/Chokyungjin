//
//  SecondViewController.swift
//  helloWorld
//
//  Created by 조경진 on 28/09/2019.
//  Copyright © 2019 조경진. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var backBut: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

}

