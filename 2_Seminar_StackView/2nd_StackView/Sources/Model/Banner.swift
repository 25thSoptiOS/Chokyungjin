//
//  Banner.swift
//  2nd_StackView
//
//  Created by 조경진 on 2019/10/26.
//  Copyright © 2019 조경진. All rights reserved.
//

import Foundation
import UIKit

struct Banner {
    var bannerImg: UIImage?
    
    //init..
    init(bannerName: String){
        self.bannerImg = UIImage(named: bannerName)
    }
    
}
