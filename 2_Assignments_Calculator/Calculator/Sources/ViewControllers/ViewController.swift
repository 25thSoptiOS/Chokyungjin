//
//  ViewController.swift
//  Calculator
//
//  Created by 조경진 on 14/10/2019.
//  Copyright © 2019 조경진. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //IBOutlets..
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var buttonAC: UIButton!
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var buttonEql: UIButton!
    
    @IBOutlet weak var buttonP: UIButton!
    @IBOutlet weak var buttonM: UIButton!
    @IBOutlet weak var buttonX: UIButton!
    @IBOutlet weak var buttonD: UIButton!
    
    //결과 보여줄 label
    @IBOutlet weak var resultLabel: UITextField!
    
    
    //Vars..
    //앞 string, 뒤 string 구별용 bool
    var userIsInTheMiddleOfTyping = false
  
    //연산 기호
    var isPlus = false
    var isMinus = false
    var isMultiply = false
    var isDivide = false
    
    //sum 은 총 계산용
    var sum = Double()
    var num = Double()
    var input: String = ""
    var real = String()
    
   
    //inits..
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //DidLoad에서 버튼을 깎으면 스택 뷰의 fillEqually 옵션때문에 우선순위가 밀릴수있다..!
        //그래서 스택 뷰가 형성된 다음인 viewDidAppear에서 버튼을 깎아줘야함!
        button7.setAsCircle()
        button8.setAsCircle()
        button9.setAsCircle()
        
        button4.setAsCircle()
        button5.setAsCircle()
        button6.setAsCircle()
        
        button1.setAsCircle()
        button2.setAsCircle()
        button3.setAsCircle()
        
        button0.setAsCircle()
        buttonD.setAsCircle()
        buttonM.setAsCircle()
        buttonX.setAsCircle()
        buttonP.setAsCircle()
        
        buttonAC.setAsCircle()
        buttonEql.setAsCircle()


    }

    //Button Tap시, resultLabel에 차곡차곡 들어감
    @IBAction func buttonTap(_ sender: UIButton) {
                    
        if userIsInTheMiddleOfTyping {
            //텍스트 필드에 보여주기위한 string input
            input.append(sender.currentTitle!)
            //print(input)
            //실제 계산에 들어가는 string real
            real.append(sender.currentTitle!)
            formatNumber(input: input)
            input = ""
           
        } else {
            //처음 텍스트에 아무것도 없을 때의logic
            input.append(sender.currentTitle!)
            resultLabel.text = input
            input = ""
        }
        //뒤에 string 으로 인식하기 위해 true로 설정
        userIsInTheMiddleOfTyping = true
        
    }
    
    //resultLabel 초기화
    @IBAction func allClear(_ sender: Any) {
        sum = 0
        num = 0
        input = ""
        real = ""
        self.resultLabel.text = ""
    }
    
    //plus method
    @IBAction func plus(_ sender: Any) {
        if isPlus == false {
            num = Double(real)!
            sum = num + sum
            userIsInTheMiddleOfTyping = false
            isPlus = true
        }
        
    }
    
    //minus method
    @IBAction func minus(_ sender: Any) {
        if isMinus == false {
            num = Double(real)!
            sum = num - sum
            userIsInTheMiddleOfTyping = false
            isMinus = true
        }
    }
    
    //multiply
    @IBAction func multiply(_ sender: Any) {
        if isMultiply == false {
            sum = 1
            
                   num = Double(real)!
                   sum = num * sum
                   userIsInTheMiddleOfTyping = false
                   isMultiply = true
               }
    }
    
    //divide
    @IBAction func divide(_ sender: Any) {
        if isDivide == false {
                          sum = 1
                          num = Double(real)!
                          sum = num / sum
                          userIsInTheMiddleOfTyping = false
                          isDivide = true
                      }
    }
    
    //equal Function method
    @IBAction func equalFunction(_ sender: Any) {
        
        if isPlus {
            sum = sum + Double(resultLabel.text!)!
            isPlus = false
        }
        if isMinus {
                   sum = sum - Double(resultLabel.text!)!
                   isMinus = false
               }
        if isMultiply {
                   sum = sum * Double(resultLabel.text!)!
                   isMultiply = false
               }
        if isDivide {
                   sum = sum / Double(resultLabel.text!)!
                   isDivide = false
               }
        resultLabel.text = String(sum)
        sum = 0
    }
    
    //자릿수 표현 formatting
    func formatNumber(input: String) -> String {
        
        let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            formatter.locale = Locale.current
            formatter.maximumFractionDigits = 0
        
        //자릿수 표현을 위한 , 를 일단 삭제시켜줌
        if let removeAllSeprator = resultLabel.text?.replacingOccurrences(of: formatter.groupingSeparator, with: ""){
            var beforeFormattedString = removeAllSeprator + input
            //삭제시킨 string을 beforeFormattedString에 넣어줌
            if formatter.number(from: input) != nil {
               //버튼에 입력받는 input이 nil이 아니면,
                if let formattedNumber = formatter.number(from: beforeFormattedString), let formattedString = formatter.string(from: formattedNumber){
                    resultLabel.text = formattedString
                    //formattedNumber에 beforeFormattedString을 number로 넣고
                    //formattedString에 formattedNumber를 string으로 넣어준다
                   return resultLabel.text!
                }
            }else {
               if input == "" {
                //input이 "" 이면
                        let lastIndex = beforeFormattedString.index(beforeFormattedString.endIndex, offsetBy: -1)
                //beforeFormattedString의 endIndex까지 요소들을 lastIndex에 다 넣어줌
                                     beforeFormattedString = String(beforeFormattedString[..<lastIndex])
                                     if let formattedNumber = formatter.number(from: beforeFormattedString), let formattedString = formatter.string(from: formattedNumber){
                                       resultLabel.text = formattedString
                                        //formattedNumber에 beforeFormattedString을 number로 넣고
                                        //formattedString에 formattedNumber를 string으로 넣어준다
                                        return resultLabel.text!
                    }
               } else {
                }
            }
        }
        return resultLabel.text!
    }
}

//Button Circle Extensions...
extension UIView {
    @discardableResult
    public func setAsCircle() -> Self {
        let frameSize = self.frame.size
        self.layer.cornerRadius = min(frameSize.width, frameSize.height) / 2.0
        self.clipsToBounds = true
        return self
    }
}
