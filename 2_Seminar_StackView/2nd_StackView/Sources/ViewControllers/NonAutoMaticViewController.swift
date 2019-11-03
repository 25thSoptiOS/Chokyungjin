//
//  NonAutoMaticViewController.swift
//  SOPT_2thTraining
//
//  Created by 남수김 on 2019/10/14.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class NonAutoMaticViewController: UIViewController, UITextFieldDelegate{

    var logoImg: UIImageView!
    var backImg: UIImageView!
    var idLabel: UILabel!
    var idTextField: UITextField!
    var pwLabel: UILabel!
    var pwTextField: UITextField!
    var loginBt: UIButton!
    var pwLine: UIView!
    var idLine: UIView!
    var signBt: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerNotification()
        
        logoImageGenerate()
        backgroundImageGenerate()
        idLabelGenerate()
        idTextFieldGenerate()
        idUnderLineGenerate()
        pwLabelGenerate()
        pwTextFieldGenerate()
        pwUnderLineGenerate()
        loginButtonGenerate()
        signUpButtonGenerate()
        
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        unregisterNotification()
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func registerNotification(){
        NotificationCenter.default.addObserver(self, selector: #selector(moveUp), name: UIResponder.keyboardDidShowNotification, object: nil)
        
         NotificationCenter.default.addObserver(self, selector: #selector(moveDown), name: UIResponder.keyboardDidHideNotification, object: nil)
    }
    
    func unregisterNotification(){
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardDidShowNotification, object: nil)
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardDidHideNotification, object: nil)
    }
    
    @objc func moveUp(_ notification: NSNotification){
        
        guard let keyboardHeight = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue.height else { return }
        
        guard let duration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double else { return }
        
        UIView.animate(withDuration: duration, delay: 0 , animations: {
            
            self.logoImg.alpha = 0.0
            // idLabel의 NSLayoutContraint 수정하는법...?
            
            let trans = CGAffineTransform(translationX: 0, y: -keyboardHeight/2)
            
            self.idLabel.transform = trans
            self.idTextField.transform = trans
            self.idLine.transform = trans
            self.pwLabel.transform = trans
            self.pwTextField.transform = trans
            self.pwLine.transform = trans
            self.signBt.transform = trans
            self.loginBt.transform = trans
            
        })
        
        
        
    }
    
    @objc func moveDown(_ notification: NSNotification){
        
        guard let duration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double else { return }
        
        UIView.animate(withDuration: duration, delay: 0,
                       animations: {
                        
                        self.logoImg.alpha = 1.0
                        
                        self.idLabel.transform = .identity
                        self.idTextField.transform = .identity
                        self.idLine.transform = .identity
                        self.pwLabel.transform = .identity
                        self.pwTextField.transform = .identity
                        self.pwLine.transform = .identity
                        self.signBt.transform = .identity
                        self.loginBt.transform = .identity
                        
        })
    }
}


