//
//  TabbarViewController.swift
//  GS25_WITHSOPT
//
//  Created by 조경진 on 2019/11/18.
//  Copyright © 2019 조경진. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    //IBOutlets...
    @IBInspectable var defaultIndex: Int = 2
    @IBOutlet weak var myPageBtn: UIBarButtonItem!
    
    //inits..
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedIndex = defaultIndex
    }
    
    
    @IBAction func myPageMove(_ sender: Any) {
        
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "MyPageVC") as? MyPageViewController {
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true, completion: nil)   // 식별자 가르키는 곳으로 이동
        }
    }
    
    
    
}
