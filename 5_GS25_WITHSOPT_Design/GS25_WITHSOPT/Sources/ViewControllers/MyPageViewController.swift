//
//  MyPageViewController.swift
//  GS25_WITHSOPT
//
//  Created by 최은지 on 18/11/2019.
//  Copyright © 2019 조경진. All rights reserved.
//

import UIKit

class MyPageViewController: UIViewController {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var attendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.cardView.layer.cornerRadius = 10
        
        self.cardView.layer.shadowColor = UIColor.black.cgColor
        self.cardView.layer.shadowOpacity = 0.1
        self.cardView.layer.shadowOffset = .zero
        self.cardView.layer.shadowRadius = 10
        
        self.attendButton.layer.cornerRadius = 5
        
        
        
    }
    

    @IBAction func backBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
