//
//  MainViewController.swift
//  2nd_StackView
//
//  Created by 조경진 on 2019/10/26.
//  Copyright © 2019 조경진. All rights reserved.
//

import UIKit
import CHIPageControl


class MainViewController: UIViewController {
    
    
    //IBOUTlet
    @IBOutlet var bannerCV: UICollectionView!
    @IBOutlet weak var paging: CHIPageControlAleppo!
    
    //vars..
    let appDelegate = UIApplication.shared.delegate as? AppDelegate

    
    //inits..
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setBanner()
        bannerCV.delegate = self
        bannerCV.dataSource = self
    }
    
    func setBanner() {
        let banner1 = Banner(bannerName: "mainImage")
        let banner2 = Banner(bannerName: "mainImage2")
        let banner3 = Banner(bannerName: "mainImage03")
        
        appDelegate!.bannerList = [banner1, banner2, banner3]

    }
    
    
    
    
}




//extension..
// UICollectionViewDataSource 를 채택합니다.
extension MainViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
//        if collectionView == self.workCV { return appDelegate.workList.count
//
//        }
        return appDelegate!.bannerList.count
    
    }
    
   func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
//            if collectionView == self.workCV {
//                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WorkCell", for: indexPath) as! WorkCell
//
//                let work = appDelegate.workList[indexPath.row]
//
//                cell.workIdx = work.workIdx
//                cell.workImg.image = work.workMainImg
//
//                return cell
//            }
//            else {
                let bannerCell = collectionView.dequeueReusableCell(withReuseIdentifier: "BannerCell", for: indexPath) as! BannerCell
                
                let banner = appDelegate!.bannerList[indexPath.row]
                bannerCell.banner?.image = banner.bannerImg
                
       //         bannerCell.banner = bannerList
                return bannerCell
    //        }
  //      }
    }
    
}

extension MainViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
    
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        let x = scrollView.contentOffset.x
        let w = scrollView.bounds.size.width
        let currentPage = Int(ceil(x/w))
        print(currentPage)
        self.paging.set(progress: currentPage, animated: true)
    }
}
