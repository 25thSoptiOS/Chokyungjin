//
//  TableViewControllerOne.swift
//  GS25_WITHSOPT
//
//  Created by 조경진 on 2019/11/18.
//  Copyright © 2019 조경진. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class TableViewControllerOne: UITableViewController {
    
    
    let navigationHeight = UIApplication.shared.statusBarFrame.height
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        //        self.view.backgroundColor = UIColor.white
        
        let nameLabel = UILabel()
        nameLabel.font = UIFont(name: "SDGothicNeoa-cLt", size: 18.0)
        nameLabel.textColor = UIColor.charcoalGrey
        nameLabel.textAlignment = .left
        nameLabel.text = "세림님,"
        self.view.addSubview(nameLabel)
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let nameWidthConstraint = NSLayoutConstraint(item: nameLabel, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 250)
        
        let nameHeightConstraint = NSLayoutConstraint(item: nameLabel, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 20)
        
        let nameLeadingConstraint = NSLayoutConstraint(item: nameLabel, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 62.5)
        
        let nameTopConstraint = NSLayoutConstraint(item: nameLabel, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 95)
        
        NSLayoutConstraint.activate([nameWidthConstraint, nameHeightConstraint, nameLeadingConstraint, nameTopConstraint])
        
        let pointLabel1 = UILabel()
        pointLabel1.font = UIFont(name: "SDGothicNeoa-cLt", size: 18.0)
        pointLabel1.textColor = UIColor.charcoalGrey
        pointLabel1.textAlignment = .left
        pointLabel1.text = "현재 누적포인트"
        self.view.addSubview(pointLabel1)
        
        pointLabel1.translatesAutoresizingMaskIntoConstraints = false
        
        let point1WidthConstraint = NSLayoutConstraint(item: pointLabel1, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 115)
        
        let point1HeightConstraint = NSLayoutConstraint(item: pointLabel1, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 20)
        
        let point1LeadingConstraint = NSLayoutConstraint(item: pointLabel1, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 62.5)
        
        let point1VerticalSpace = NSLayoutConstraint(item:pointLabel1, attribute: .top, relatedBy: .equal, toItem: nameLabel, attribute: .bottom, multiplier: 1, constant: 2)
        
        NSLayoutConstraint.activate([point1WidthConstraint, point1HeightConstraint, point1LeadingConstraint, point1VerticalSpace])
        
        let pointLabel2 = UILabel()
        pointLabel2.font = UIFont.boldSystemFont(ofSize: 18.0)
        pointLabel2.textColor = UIColor.aquaMarine
        pointLabel2.textAlignment = .left
        pointLabel2.text = "12,050 P"
        self.view.addSubview(pointLabel2)
        
        pointLabel2.translatesAutoresizingMaskIntoConstraints = false
        
        let point2WidthConstraint = NSLayoutConstraint(item: pointLabel2, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 77)
        
        let point2HeightConstraint = NSLayoutConstraint(item: pointLabel2, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 20)
        
        let point2VerticalSpace = NSLayoutConstraint(item:pointLabel2, attribute: .top, relatedBy: .equal, toItem: nameLabel, attribute: .bottom, multiplier: 1, constant: 2)
        
        let point2LeadingSpace = NSLayoutConstraint(item: pointLabel2, attribute: .leading, relatedBy: .equal, toItem: pointLabel1, attribute: .trailing, multiplier: 1, constant: 0)
        
        NSLayoutConstraint.activate([point2WidthConstraint, point2HeightConstraint, point2VerticalSpace, point2LeadingSpace])
        
        
        let pointLabel3 = UILabel()
        pointLabel3.font = UIFont(name: "SDGothicNeoa-cLt", size: 17.0)
        pointLabel3.textColor = UIColor.charcoalGrey
        pointLabel3.textAlignment = .left
        pointLabel3.text = "입니다."
        self.view.addSubview(pointLabel3)
        
        pointLabel3.translatesAutoresizingMaskIntoConstraints = false
        
        let point3WidthConstraint = NSLayoutConstraint(item: pointLabel3, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 60)
        
        let point3HeightConstraint = NSLayoutConstraint(item: pointLabel3, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 20)
        
        let point3VerticalSpace = NSLayoutConstraint(item:pointLabel3, attribute: .top, relatedBy: .equal, toItem: nameLabel, attribute: .bottom, multiplier: 1, constant: 2)
        
        let point3LeadingSpace = NSLayoutConstraint(item: pointLabel3, attribute: .leading, relatedBy: .equal, toItem: pointLabel2, attribute: .trailing, multiplier: 1, constant: 0)
        
        NSLayoutConstraint.activate([point3WidthConstraint, point3HeightConstraint, point3VerticalSpace, point3LeadingSpace])
        
        
        
        // qr code Image
        let qrImage = UIImage(named: "20191115120619")
        let qrImageView = UIImageView(image: qrImage!)
        //        qrImageView.frame = CGRect(x:84, y:135, width: 192, height: 181)
        self.view.addSubview(qrImageView)
        
        qrImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let qrImageVerticalSpace = NSLayoutConstraint(item:qrImageView, attribute: .top, relatedBy: .equal, toItem: pointLabel1, attribute: .bottom, multiplier: 1, constant: 30)
        
        let qrImageHorizontalConstraint = NSLayoutConstraint(item: qrImageView, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0)
        
        let qrImageWidthConstraint = NSLayoutConstraint(item: qrImageView, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 210)
        
        let qrImageHeightConstraint = NSLayoutConstraint(item: qrImageView, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 199)
        
        NSLayoutConstraint.activate([qrImageVerticalSpace, qrImageHorizontalConstraint, qrImageWidthConstraint, qrImageHeightConstraint])
        
        
        
        // gs point Image - 1
        
        let gsImage = UIImage(named: "1StIcon")
        let gsImageView = UIImageView(image: gsImage)
        self.view.addSubview(gsImageView)
        
        gsImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let gsImageVerticalSpace = NSLayoutConstraint(item: gsImageView, attribute: .top, relatedBy: .equal, toItem: qrImageView, attribute: .bottom, multiplier: 1, constant: 3)
        
        
        let gsWidthConstraint = NSLayoutConstraint(item: gsImageView, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 58)
        
        let gsHeightConstraint = NSLayoutConstraint(item: gsImageView, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 58)
        
        //                let gsTrailingSpace = NSLayoutConstraint(item: gsImageView, attribute: .trailing, relatedBy: .equal, toItem: cardImageView, attribute: .leading, multiplier: 1, constant: 22)
        
        
        
        let gsImageLeadingConstraint = NSLayoutConstraint(item: gsImageView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 77)
        //
        //        let gsImageTrailingConstraint = NSLayoutConstraint(item: gsImageView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 231)
        
        NSLayoutConstraint.activate([gsImageVerticalSpace, gsWidthConstraint, gsHeightConstraint, gsImageLeadingConstraint])
        
        
        
        
        
        // card Image - 2
        
        let cardImage = UIImage(named: "2NdIcon")
        let cardImageView = UIImageView(image: cardImage!)
        self.view.addSubview(cardImageView)
        
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let cardImageVerticalSpace = NSLayoutConstraint(item: cardImageView, attribute: .top, relatedBy: .equal, toItem: qrImageView, attribute: .bottom, multiplier: 1, constant: 3)
        
        let cardLeadingSpace = NSLayoutConstraint(item: cardImageView, attribute: .leading, relatedBy: .equal, toItem: gsImageView, attribute: .trailing, multiplier: 1, constant: 24)
        
        
        //        let cardImageHorizontalConstraint = NSLayoutConstraint(item: cardImageView, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0)
        
        let cardWidthConstraint = NSLayoutConstraint(item: cardImageView, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 58)
        
        let cardHeightConstraint = NSLayoutConstraint(item: cardImageView, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 58)
        
        NSLayoutConstraint.activate([cardImageVerticalSpace, cardLeadingSpace, cardWidthConstraint, cardHeightConstraint])
        
        
        
        // mobile pop Image - 3
        
        let mobildImage = UIImage(named: "3RdIcon")
        let mobileImageView = UIImageView(image: mobildImage!)
        self.view.addSubview(mobileImageView)
        
        mobileImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let mobileImageVerticalSpace = NSLayoutConstraint(item: mobileImageView, attribute: .top, relatedBy: .equal, toItem: qrImageView, attribute: .bottom, multiplier: 1, constant: 3)
        
        let mobileLeadingSpace = NSLayoutConstraint(item: mobileImageView, attribute: .leading, relatedBy: .equal, toItem: cardImageView, attribute: .trailing, multiplier: 1, constant: 24)
        
        
        //        let mobileImageLeadingConstraint = NSLayoutConstraint(item: mobileImageView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 232)
        //
        //        let mobileImageTrailingConstraint = NSLayoutConstraint(item: mobileImageView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 70)
        
        let mobileWidthConstraint = NSLayoutConstraint(item: mobileImageView, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 58)
        
        let mobileHeightConstraint = NSLayoutConstraint(item: mobileImageView, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 58)
        
        NSLayoutConstraint.activate([mobileImageVerticalSpace, mobileLeadingSpace ,mobileWidthConstraint, mobileHeightConstraint])
        
        
        
        let gsLabel = UILabel()
        gsLabel.font = UIFont.systemFont(ofSize: 13.0)
        gsLabel.textColor = UIColor.charcoalGrey
        gsLabel.text = "GS&POINT"
        gsLabel.textAlignment = .center
        //gsLabel.frame = CGRect(x: 77.5, y: 505, width: 60, height: 13)
        //gsLabel.invalidateIntrinsicContentSize()
        self.view.addSubview(gsLabel)
        
        gsLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let gsLabelVerticalSpace = NSLayoutConstraint(item: gsLabel, attribute: .top, relatedBy: .equal, toItem: gsImageView, attribute: .bottom, multiplier: 1, constant: 7)
        
        let gsLabelLeadingConstraint = NSLayoutConstraint(item: gsLabel, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 73.5)
        
        NSLayoutConstraint.activate([gsLabelVerticalSpace,gsLabelLeadingConstraint])
        
        
        let cardLabel = UILabel()
        cardLabel.font = UIFont.systemFont(ofSize: 13.0)
        cardLabel.textColor = UIColor.charcoalGrey
        cardLabel.text = "할인카드"
        self.view.addSubview(cardLabel)
        
        cardLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let cardLabelVerticalSpace = NSLayoutConstraint(item: cardLabel, attribute: .top, relatedBy: .equal, toItem: cardImageView, attribute: .bottom, multiplier: 1, constant: 7)
        
        let cardLeadingConstraint = NSLayoutConstraint(item: cardLabel, attribute: .leading, relatedBy: .lessThanOrEqual, toItem: gsLabel, attribute: .trailing, multiplier: 1, constant: 28)
        
        NSLayoutConstraint.activate([cardLabelVerticalSpace,cardLeadingConstraint])
        
        
        let mobileLabel = UILabel()
        mobileLabel.font = UIFont.systemFont(ofSize: 13.0)
        mobileLabel.textColor = UIColor.charcoalGrey
        mobileLabel.text = "모바일팝"
        self.view.addSubview(mobileLabel)
        
        mobileLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let mobileLabelVerticalSpace = NSLayoutConstraint(item: mobileLabel, attribute: .top, relatedBy: .equal, toItem: mobileImageView, attribute: .bottom, multiplier: 1, constant: 7)
        
        //        let mobileLabelTrailingConstraint = NSLayoutConstraint(item: mobileLabel, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 74.5)
        
        let mobileLeadingConstraint = NSLayoutConstraint(item: mobileLabel, attribute: .leading, relatedBy: .equal, toItem: cardLabel, attribute: .trailing, multiplier: 1, constant: 35)
        
        let mobileTrailingConstraint = NSLayoutConstraint(item: mobileLabel, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 80.5)
        
        NSLayoutConstraint.activate([mobileLabelVerticalSpace,mobileLeadingConstraint])
        
        
        
        let saveImage = UIImage(named: "20191115122238")
        let saveImageView = UIImageView(image: saveImage!)
        self.view.addSubview(saveImageView)
        saveImageView.translatesAutoresizingMaskIntoConstraints = false
        
        
        let saveImageheightConstrant = NSLayoutConstraint(item: saveImageView, attribute: .top, relatedBy: .equal, toItem: qrImageView, attribute: .bottom, multiplier: 1, constant: 194)
        
        NSLayoutConstraint.activate([saveImageheightConstrant])
        
        
        let loginImage = UIImage(named:"1580")
        let loginImageView = UIImageView(image: loginImage!)
        self.view.addSubview(loginImageView)
        loginImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let loginImageviewConstrant = NSLayoutConstraint(item: loginImageView, attribute: .top, relatedBy: .equal, toItem: cardImageView, attribute: .bottom, multiplier: 1, constant: 47)
        NSLayoutConstraint.activate([loginImageviewConstrant])
        
        
        let loginLeadingConstraint = NSLayoutConstraint(item: loginImageView, attribute: .leading, relatedBy: .equal, toItem: view , attribute: .trailing, multiplier: 1, constant: 69)
        
        NSLayoutConstraint.activate([loginLeadingConstraint])
        
        
//        let loginLabel = UILabel()
//        loginLabel.font = UIFont.systemFont(ofSize: 15.0)
//        loginLabel.textColor = UIColor.white
//        loginLabel.text = "모바일팝 로그인하러 가기 >"
//        self.view.addSubview(loginLabel)
//
//        loginLabel.translatesAutoresizingMaskIntoConstraints = false
//
//        let loginLabelVerticalSpace = NSLayoutConstraint(item: loginLabel, attribute: .top, relatedBy: .equal, toItem:  loginImageView, attribute: .top, multiplier: 1, constant: 18)
//
//
//        let loginLabelLeadingConstraint = NSLayoutConstraint(item: loginLabel, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 109)
//
//        NSLayoutConstraint.activate([loginLabelVerticalSpace, loginLabelLeadingConstraint])
        
        
//
        
        // login button
        
        let loginButton = UIButton()
        loginButton.backgroundColor = UIColor.mainBlueBtn
        loginButton.setTitle("모바일팝 로그인하러가기 >", for: .normal)
        loginButton.setTitleColor(.white
            , for: .normal)
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 15.0)
        loginButton.layer.cornerRadius = 25
        
        self.view.addSubview(loginButton)
        
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        let loginButtonVerticalSpace = NSLayoutConstraint(item: loginButton, attribute: .top, relatedBy: .equal, toItem: cardLabel, attribute: .bottom, multiplier: 1, constant: 27)
        
        let loginButtonHorizontalConstraint = NSLayoutConstraint(item: loginButton, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0)
        
        
        let loginButtonWidthConstraint = NSLayoutConstraint(item: loginButton, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 238)
        
        let loginButtonHeightConstraint = NSLayoutConstraint(item: loginButton, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 50)
        
        
        NSLayoutConstraint.activate([loginButtonVerticalSpace, loginButtonHorizontalConstraint, loginButtonWidthConstraint, loginButtonHeightConstraint])
        
        
        
        
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellOne", for: indexPath) as! TableViewCellOne
        
        
        
        cell.selectionStyle = .none
        return cell
    }
    
}

extension TableViewControllerOne: IndicatorInfoProvider {
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        
        
        
        return IndicatorInfo(title: "QR 코드")
    }
    
    
    
}

