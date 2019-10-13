//
//  ViewController.swift
//  2nd_Practice
//
//  Created by 조경진 on 12/10/2019.
//  Copyright © 2019 조경진. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let destination = segue.destination
        let button = sender as! UIButton
        destination.title = button.titleLabel?.text

    }

}

