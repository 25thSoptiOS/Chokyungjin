//
//  ViewController.swift
//  1st_assginment
//
//  Created by 조경진 on 30/09/2019.
//  Copyright © 2019 조경진. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //IBOutlet..
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var heart: UIButton!    
    @IBOutlet weak var likeTitle: UILabel!
    
    //Var..
    let imageProfile = UIImageView()
    let imagePicker = UIImagePickerController()
    let like = UIImage(named: "heart")
    let heartImage = UIImage(named: "like")
           
    
    
    //init..
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let img = UIImage(named: "image1.png")
        let bg = UIImage(named: "bg.png")
       
        self.profileImageView.image = img
        self.profileImageView.frame.size = CGSize(width: 50, height: 50)
        self.profileImageView.layer.cornerRadius = self.profileImageView.frame.width / 2
        self.profileImageView.layer.borderWidth = 0
        self.profileImageView.layer.masksToBounds = true
        //self.view.addSubview(imageProfile)
        
        self.imageView.image = bg
        self.imageView.contentMode = .scaleAspectFit
        heart.setImage(like, for: .normal)
        heart.setImage(heartImage, for: .selected)
        
        self.navigationItem.title = "SOPTstagram"
        titleLabel.text = "sopt.iOS.Lover"
        //titleLabel.safeAreaInsets.bottom = 2

        
    }

    //IBAction..
  //  self.txtUpdate.text = (sender.isOn == true ? "갱신함" : "갱신하지 않음")

    @IBAction func heartLike(_ sender: Any) {
        likeTitle.text = "\(titleLabel.text!) 님이 좋아합니다!"
        
        heart.isSelected = true

//        if heart.isSelected == true {
//            heart.isSelected = false
//        }
    }
    
}
