//
//  ViewController.swift
//  GS25_WITHSOPT
//
//  Created by 조경진 on 2019/11/18.
//  Copyright © 2019 조경진. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class ViewController: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadDesign()
        
                
        // Do any additional setup after loading the view.
    }


    override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
  
            let navigationHeight = UIApplication.shared.statusBarFrame.height
                                          + self.navigationController!.navigationBar.frame.height
            buttonBarView.frame = CGRect(x: 0, y: navigationHeight ,width: self.view.bounds.width,height: 50)

          
    }
    
    
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let child_1 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "TableOne")
        let child_2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "TableTwo")
        
        
      return [child_1,child_2]
    }
    

    func loadDesign() {
        
        self.settings.style.selectedBarHeight = 1.0
        self.settings.style.buttonBarBackgroundColor = UIColor.white
        self.settings.style.buttonBarItemBackgroundColor = .white
        self.settings.style.selectedBarBackgroundColor = .niceBlue
        self.settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 13)
        self.settings.style.buttonBarMinimumLineSpacing = 1
        self.settings.style.buttonBarItemTitleColor = .niceBlue
        self.settings.style.buttonBarItemsShouldFillAvailableWidth = true
      //  settings.style.buttonBarLeftContentInset = 200
      //  settings.style.buttonBarRightContentInset = 30
      //  settings.style.buttonBarItemLeftRightMargin = 0
        
       
        
        
        // iPhone X..
        if (UIDevice().userInterfaceIdiom == .phone) && (UIScreen.main.nativeBounds.height == 2436) {
            containerView.frame = CGRect(x: 0, y: buttonBarView.frame.height + 50 , width: 375, height: view.frame.height)

        }
        // iPhone 8..
        else {
            containerView.frame = CGRect(x: 0, y: buttonBarView.frame.height , width: 375, height: view.frame.height)

        }
        
        
        self.changeCurrentIndexProgressive = { [weak self] (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            
            oldCell?.label.textColor = UIColor.black
            newCell?.label.textColor = .niceBlue
        }

    }
    
}

