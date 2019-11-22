//
//  TableViewControllerOne.swift
//  GS25_WITHSOPT
//
//  Created by 조경진 on 2019/11/18.
//  Copyright © 2019 조경진. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class TableViewControllerTwo: UITableViewController {

    let navigationHeight = UIApplication.shared.statusBarFrame.height

    override func viewDidLoad() {
        super.viewDidLoad()

    tableView.contentInset = UIEdgeInsets(top: 44, left: 0, bottom: 0, right: 0)
    
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        
        return self.view.bounds.height - ( navigationHeight + navigationController!.navigationBar.frame.height + (tabBarController?.navigationController?.navigationBar.frame.height)!)
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellTwo", for: indexPath) as! TableViewCellTwo
        
        
        cell.selectionStyle = .none

        return cell
    }
    
}

extension TableViewControllerTwo: IndicatorInfoProvider {
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        
        return IndicatorInfo(title: "카드 바코드")
    }
    
    
    
}
