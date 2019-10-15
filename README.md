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
<img width="374" alt="스크린샷 2019-09-30 오후 4 22 32" src="https://user-images.githubusercontent.com/46750574/65857667-42b56480-e39f-11e9-8e89-0cafbf28db95.png">

---

## 1st Assignments

* practice Autolayout
* Rounding ImageView
* Button Click event

---

### Screenshots

<img width="415" alt="스크린샷 2019-09-30 오후 4 19 10" src="https://user-images.githubusercontent.com/46750574/65857665-42b56480-e39f-11e9-9e5d-0c09d9a5c53b.png">


<img width="373" alt="스크린샷 2019-09-30 오후 4 19 20" src="https://user-images.githubusercontent.com/46750574/65857666-42b56480-e39f-11e9-89b8-5430be702014.png">

---

## 2nd Advanced_Seminar

* CoreLocation

---

### ScreenShots

<img width="442" alt="alert" src="https://user-images.githubusercontent.com/46750574/66695067-99079900-ecf7-11e9-8a81-0eb664322a27.png">



<img width="438" alt="location" src="https://user-images.githubusercontent.com/46750574/66695068-99079900-ecf7-11e9-8543-f1a2216ed171.png">

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

![123스크린샷 2019-10-14 오후 7](https://user-images.githubusercontent.com/46750574/66746834-efbecf80-eebd-11e9-8c78-a0ff6a4e4620.png)

---

### ScreenShots

![1스크린샷 2019-10-13 오후 3](https://user-images.githubusercontent.com/46750574/66711910-c3c52080-edcf-11e9-8bbb-fd003d64e3a9.png)

![스크린샷 2019-10-13 오후 3](https://user-images.githubusercontent.com/46750574/66711911-c4f64d80-edcf-11e9-966e-9234fa5cee1d.png)

![2스크린샷 2019-10-13 오후 3](https://user-images.githubusercontent.com/46750574/66711912-c6c01100-edcf-11e9-98ef-f53b10241e03.png)

![5스크린샷 2019-10-13 오후 3](https://user-images.githubusercontent.com/46750574/66711947-4c43c100-edd0-11e9-9bdb-cf8c68b2bfec.png)

![4스크린샷 2019-10-13 오후 3](https://user-images.githubusercontent.com/46750574/66711946-4c43c100-edd0-11e9-8b36-61f62771f396.png)

![3334스크린샷 2019-10-14 오후 7](https://user-images.githubusercontent.com/46750574/66746837-efbecf80-eebd-11e9-8233-ecd6a8a09748.png)

![333스크린샷 2019-10-14 오후 7](https://user-images.githubusercontent.com/46750574/66746835-efbecf80-eebd-11e9-8d7a-c327ed67dbd7.png)

