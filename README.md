# 25th Chokyungjin 📱 💻 

---

> #### 1st Seminar_HelloWorld Complete.
>
> #### 1st Assignments_Soptsagram Complete.
>
> #### 2nd AdvancedSeminar_CoreLocation Complete.
>
> #### 2nd  Data_Send, Seminar_StackView Complete.
>
> #### 2nd Assignments_Calculator

---
## 1st Seminar

* practice using button for moving page
* Autolayout

---

### Screenshots
<img width="300" alt="스크린샷 2019-10-22 오후 2 37 38" src="https://user-images.githubusercontent.com/46750574/67261010-86504980-f4d9-11e9-809a-0a65797040c3.png"><img width="300" alt="스크린샷 2019-10-22 오전 12 16 09" src="https://user-images.githubusercontent.com/46750574/67220282-75192580-f464-11e9-851c-27a38dd59c1a.png">

---

## 1st Assignments

* practice Autolayout
* Rounding ImageView
* Button Click event

---

### Screenshots

<img width="350" alt="스크린샷 2019-10-22 오후 2 31 26" src="https://user-images.githubusercontent.com/46750574/67260845-a7fd0100-f4d8-11e9-8a5e-ad2e8d415211.png"><img width="350" alt="스크린샷 2019-10-22 오전 12 16 31" src="https://user-images.githubusercontent.com/46750574/67220228-5f0b6500-f464-11e9-8539-15285fecd673.png">

---

## 2nd Advanced_Seminar

* CoreLocation
* Info.plist에서 Location 접근요청

---

### ScreenShots

<img width="300" alt="스크린샷 2019-10-22 오후 2 33 59" src="https://user-images.githubusercontent.com/46750574/67260918-01fdc680-f4d9-11e9-93d3-a56b051f1e7e.png"><img width="300" alt="스크린샷 2019-10-22 오전 12 17 05" src="https://user-images.githubusercontent.com/46750574/67220188-4733e100-f464-11e9-9364-0848dc6f4d04.png">

---

## 2nd Seminar

* Data_Send

```swift
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let destination = segue.destination	
   //세그에 대한 목적지
        let button = sender as! UIButton	
   // 센더에 대한 옵셔널 강제 해제.(어차피 버튼이니까 강제로 해제해줘도 괜찮다)
        destination.title = button.titleLabel?.text 
   //데이터가 전달된 다음 화면의 네비게이션 바 설정

    }
```

* Stepper
  *  counting 되는값은 Value 프로퍼티로 접근 가능. 
  * Stepper.Value의 리턴 값은 Double.
  * 또한 Stepper의 Minimum, Maximum, Step을 직접 설정할 수 있다.

* StackView

```swift
    @IBOutlet weak var stackViewCenterY: NSLayoutConstraint!
//이번에 Constraint를 IBOutlet으로 연결하는걸 배웠는데 정말 꿀팁인듯하다.
```

```swift
 UIView.animate(withDuration: duration, delay: 0.0, options: .init(rawValue: curve), animations: {
            
            self.logoImageView.alpha = 0
            
            // +로 갈수록 y값이 내려가고 -로 갈수록 y값이 올라간다.
            self.stackViewCenterY.constant = -keyboardHeight/2 + 50
        })
//스택뷰 CenterY 잡아와서 constant 계산
```

<img width="325" alt="스크린샷 2019-10-22 오전 12 18 18" src="https://user-images.githubusercontent.com/46750574/67218949-32564e00-f462-11e9-9852-6c68178f9810.png">

---

### ScreenShots

<img width="250" src="https://user-images.githubusercontent.com/46750574/66711910-c3c52080-edcf-11e9-8bbb-fd003d64e3a9.png"><img width="250" src="https://user-images.githubusercontent.com/46750574/66711911-c4f64d80-edcf-11e9-966e-9234fa5cee1d.png"><img width="250" src="https://user-images.githubusercontent.com/46750574/66711912-c6c01100-edcf-11e9-98ef-f53b10241e03.png">

<img width="300" src="https://user-images.githubusercontent.com/46750574/66711947-4c43c100-edd0-11e9-9bdb-cf8c68b2bfec.png"><img width="300" src="https://user-images.githubusercontent.com/46750574/66711946-4c43c100-edd0-11e9-8b36-61f62771f396.png">

<img width="300" src="https://user-images.githubusercontent.com/46750574/67218952-32eee480-f462-11e9-9ab5-c4364cd2c43a.png"><img width="300" src="https://user-images.githubusercontent.com/46750574/67218951-32eee480-f462-11e9-848f-18a31b303d74.png">

---

## 2nd Assignments

* Data Formatting

```swift
//Data Formatting
@IBAction func buttonTap(_ sender: UIButton) {            
        if userIsInTheMiddleOfTyping {
            //텍스트 필드에 보여주기위한 string input
            input.append(sender.currentTitle!)
            //print(input)
            //실제 계산에 들어가는 string real
            real.append(sender.currentTitle!)
            formatNumber(input: input)
          //여기서 input 값을 formatting으로 변환하고 resultLabel에 넣어줌
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
```

* StackView_ Ratio Setting

> ##### 각 버튼을 ratio 를 1:1로 주면 width , height 을 일정한 비율로 설정할 수 있다.
>
> ##### 버튼 4개를 품은 스택 뷰는 Horizontal , Distribution은 Fill Equally, Spacing 은 10으로 설정.
>
> ##### 스택 뷰 4개를 품은 root 스택 뷰는 Vertical , Distribution은 Fill, Spacing 은 10으로 설정.
>
> ##### cf) ÷ 기호는 영문으로 바꾸고 option + / 동시에 누르면 나옴!

<img width="300" alt="스크린샷 2019-10-22 오후 2 16 17" src="https://user-images.githubusercontent.com/46750574/67260598-20fb5900-f4d7-11e9-92c8-54f11b73401c.png">

---

### ScreenShots

<img width="350" alt="스크린샷 2019-10-22 오후 2 15 34" src="https://user-images.githubusercontent.com/46750574/67260597-2062c280-f4d7-11e9-9a99-1ea2b56a9fc9.png"><img width="350" alt="스크린샷 2019-10-22 오후 1 55 21" src="https://user-images.githubusercontent.com/46750574/67260599-20fb5900-f4d7-11e9-88e7-fc2dbd0aa769.png">

---

<img width="250" alt="스크린샷 2019-10-22 오후 2 07 02" src="https://user-images.githubusercontent.com/46750574/67260600-20fb5900-f4d7-11e9-81ec-64a5bf4d5b4b.png"><img width="250" alt="스크린샷 2019-10-22 오후 2 07 05" src="https://user-images.githubusercontent.com/46750574/67260601-20fb5900-f4d7-11e9-91e6-8109dab6add7.png"><img width="250" alt="스크린샷 2019-10-22 오후 2 07 23" src="https://user-images.githubusercontent.com/46750574/67260602-2193ef80-f4d7-11e9-814d-43c815e5c89b.png">

