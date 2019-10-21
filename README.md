# 25th Chokyungjin 📱 💻 

---

> #### 1st Seminar_HelloWorld Complete.
>
> #### 1st Assignments_Soptsagram Complete.
>
> #### 2nd AdvancedSeminar_CoreLocation Complete.
>
> #### 2nd  Data_Send, Seminar_StackView Complete.

---
## 1st Seminar

* practice using button for moving page
* Autolayout

---

### Screenshots
<img width="300" alt="스크린샷 2019-10-22 오전 12 16 09" src="https://user-images.githubusercontent.com/46750574/67220282-75192580-f464-11e9-851c-27a38dd59c1a.png">

---

## 1st Assignments

* practice Autolayout
* Rounding ImageView
* Button Click event

---

### Screenshots

<img width="300" alt="스크린샷 2019-10-22 오전 12 16 31" src="https://user-images.githubusercontent.com/46750574/67220228-5f0b6500-f464-11e9-8539-15285fecd673.png">

---

## 2nd Advanced_Seminar

* CoreLocation

---

### ScreenShots

<img width="300" alt="스크린샷 2019-10-22 오전 12 17 05" src="https://user-images.githubusercontent.com/46750574/67220188-4733e100-f464-11e9-9364-0848dc6f4d04.png">

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

