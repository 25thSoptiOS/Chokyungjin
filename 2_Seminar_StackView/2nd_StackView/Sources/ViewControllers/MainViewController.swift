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
    //AppDelegate객체를 캐스팅하여 생성
    
    //inits..
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setBanner()
        bannerCV.delegate = self
        bannerCV.dataSource = self
        //CollectionView의 델리게이트와 데이터소스를 받아옴.
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
    
                let bannerCell = collectionView.dequeueReusableCell(withReuseIdentifier: "BannerCell", for: indexPath) as! BannerCell
                
                let banner = appDelegate!.bannerList[indexPath.row]
                bannerCell.banner?.image = banner.bannerImg
                bannerCell.banner?.contentMode = .scaleToFill
                
                return bannerCell
 
    }
    
}

extension MainViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
}

extension MainViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    //아직 셀에대한 Select 이벤트는 작성 x
    
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        let x = scrollView.contentOffset.x
        let w = scrollView.bounds.size.width
        let currentPage = Int(ceil(x/w))
        print(currentPage)
        self.paging.set(progress: currentPage, animated: true)
    }
   
    
}
