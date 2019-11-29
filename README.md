# 25th Chokyungjin 📱 💻 

---

> #### [1st Seminar_HelloWorld Complete.](#1st Seminar)
>
> #### [1st Assignments_Soptsagram Complete.](#1st Assignments)
>
> #### [2nd AdvancedSeminar_CoreLocation Complete.](#2nd Advanced_Seminar)
>
> #### [2nd  Data_Send, Seminar_StackView Complete.](#2nd Seminar)
>
> #### [2nd Assignments_Calculator Complete.](#2nd Assignments)
>
> #### [3rd Seminar_ScrollView, CollectionView Complete.](#3rd Seminar)
>
> #### [4th Seminar_ServerLogin Complete.](#4th Seminar)
>
> #### [5th Seminar_GS25_WITH_Design Complete.](#5th Seminar)
>
> #### [6th Seminar_GS25_WITH_Server Implementing..](#6th Seminar)

---
#1st Seminar

* practice using button for moving page
* Autolayout

---

### Screenshots
<img width="300" alt="스크린샷 2019-10-22 오후 2 37 38" src="https://user-images.githubusercontent.com/46750574/67261010-86504980-f4d9-11e9-809a-0a65797040c3.png"><img width="300" alt="스크린샷 2019-10-22 오전 12 16 09" src="https://user-images.githubusercontent.com/46750574/67220282-75192580-f464-11e9-851c-27a38dd59c1a.png">

---

#1st Assignments

* practice Autolayout
* Rounding ImageView
* Button Click event

---

### Screenshots

<img width="350" alt="스크린샷 2019-10-22 오후 2 31 26" src="https://user-images.githubusercontent.com/46750574/67260845-a7fd0100-f4d8-11e9-8a5e-ad2e8d415211.png"><img width="350" alt="스크린샷 2019-10-22 오전 12 16 31" src="https://user-images.githubusercontent.com/46750574/67220228-5f0b6500-f464-11e9-8539-15285fecd673.png">

---

#2nd Advanced_Seminar

* CoreLocation
* Info.plist에서 Location 접근요청

---

### ScreenShots

<img width="300" alt="스크린샷 2019-10-22 오후 2 33 59" src="https://user-images.githubusercontent.com/46750574/67260918-01fdc680-f4d9-11e9-93d3-a56b051f1e7e.png"><img width="300" alt="스크린샷 2019-10-22 오전 12 17 05" src="https://user-images.githubusercontent.com/46750574/67220188-4733e100-f464-11e9-9364-0848dc6f4d04.png">

---

#2nd Seminar

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

#2nd Assignments

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

---

#3rd Seminar
* ScrollView
* CollectionView

```swift
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    //bannerList의 갯수만큼 return
        return appDelegate!.bannerList.count
    
    }
func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
                let bannerCell = collectionView.dequeueReusableCell(withReuseIdentifier: "BannerCell", for: indexPath) as! BannerCell // 커스텀 CollectionViewCell의 BannerCell으로 캐스팅 시켜준다.
                
                let banner = appDelegate!.bannerList[indexPath.row]
                bannerCell.banner?.image = banner.bannerImg
  //bannerCell에 image 넣기.
                return bannerCell
  
    }
    
```

<img width="250" alt="스크린샷 2019-10-27 오전 12 02 40" src="https://user-images.githubusercontent.com/46750574/67621798-50e78b00-f84e-11e9-8a95-73cb5c1b26a4.png">

> 스크롤 뷰를 담을 뷰 컨트롤러의 Simulated Size를 fixed 에서 freeform 으로 바꾸고 height 크기를 1000으로 잡아준다

<img width="250" alt="스크린샷 2019-10-27 오전 12 02 58" src="https://user-images.githubusercontent.com/46750574/67621799-50e78b00-f84e-11e9-8635-d9159a58f512.png">

> estimate Size를 Automatic으로 하지말고 Cell Size를 임의로 414, 213.7로 수정한다. Min Spacing 은 0, 0으로 바꿔주자. 그리고 Size 수정이 안되면 스토리보드에서 직접 사이즈를 키워주자

<img width="250" alt="스크린샷 2019-10-27 오전 12 03 17" src="https://user-images.githubusercontent.com/46750574/67621800-51802180-f84e-11e9-8686-95259b70fdcf.png">

> Scroll Direction을 Vertical 에서 Horizontal로 변환해서 세로 스크롤이 아니라 가로스크롤로 할 수 있게 바꿔준다. 그리고 Indicator 속성을 체크해제 

* import Library using Cocoapods
  * CHIPageControl //Indicator같은 느낌!

<img width="250" alt="스크린샷 2019-10-27 오전 12 10 37" src="https://user-images.githubusercontent.com/46750574/67621803-51802180-f84e-11e9-8785-cf5b59d89961.png">   <img width="250" alt="스크린샷 2019-10-27 오전 12 21 28" src="https://user-images.githubusercontent.com/46750574/67621953-bd16be80-f84f-11e9-821a-a5b9486107ad.png">

```swift
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        let x = scrollView.contentOffset.x
        let w = scrollView.bounds.size.width
        let currentPage = Int(ceil(x/w))
        print(currentPage)
        self.paging.set(progress: currentPage, animated: true)
    }
//@IBOutlet weak var paging: CHIPageControlAleppo!
//paging을 연결하여 animate 작동시켜주기

```

---

### ScreenShots
* 아직 세로 스크롤 뷰는 구현하지 X

<img width="350" alt="스크린샷 2019-10-27 오전 12 07 27" src="https://user-images.githubusercontent.com/46750574/67621801-51802180-f84e-11e9-9bba-31b217ecb28d.png"><img width="350" alt="스크린샷 2019-10-27 오전 12 07 30" src="https://user-images.githubusercontent.com/46750574/67621802-51802180-f84e-11e9-846b-98aa8a4eb93a.png">

---

#4th Seminar

* Alamofire
* HTTP, REST API

```swift
//Decodable Protocol..
//Codable struct 생성
//Codable protocol은 JSON, plist 등으로 이루어 진 데이터를 편리하게 객체로 변환해주는 protocol..
//Decodable과 Encodable로 이루어져 있다.

// MARK: - ResponseString // 성공했을 때 response body
struct ResponseString: Codable {
    let success: Bool
    let message: String
    let data: DataClass?
    //Codable...
    //data는 DataClass의 객체
}

// MARK: - DataClass
struct DataClass: Codable {
    let userIdx: Int
    let id, password, name, phone: String
    //DataClass는 userIdx, id , password, name, phone의 인스턴스를 가지고있다. 
    
}
```

```swift
let decoder = JSONDecoder()
//decode 해주기위한 객체
print("value", value)
let result = try decoder.decode(ResponseString.self, from: value)
//value로 부터 값을 뽑아낸다, ResponseString 을 JSON으로 만들고
//Decode할 타입으로 만들어줌
print(result)
// ResponseString에 있는 success로 분기 처리
switch result.success {
//ResponseString에서 만든 Bool 형의 success
  case true:
  print("success")
  completion(.success(result.data))
  //completion으로 result.data 전달
  case false:
  completion(.requestErr(result.message))
  //completion으로 result.message 전달
}
```

---

### ScreenShot

<img width="300" alt="스크린샷 2019-11-12 오후 4 05 21" src="https://user-images.githubusercontent.com/46750574/68649587-6525ca80-0566-11ea-869d-db53ebf657ed.png"><img width="300" alt="스크린샷 2019-11-04 오전 12 16 06" src="https://user-images.githubusercontent.com/46750574/68087367-7bfa5c00-fe98-11e9-8a18-1044b3680ced.png">
<img width="350" alt="스크린샷 2019-11-12 오후 4 05 29" src="https://user-images.githubusercontent.com/46750574/68649588-6525ca80-0566-11ea-897c-5218620d2b29.png"><img width="300" alt="스크린샷 2019-11-12 오후 4 05 59" src="https://user-images.githubusercontent.com/46750574/68649589-65be6100-0566-11ea-950d-d6009cd51d3d.png">

---
#5th Seminar

* XLPagerTabStrip
* 상단 탭바
* Programmingly implementing components without Storyboard

```swift
let point1LeadingConstraint = NSLayoutConstraint(item: pointLabel1, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 62.5)
// LeadingConstraint를 코드로 구현
let point1VerticalSpace = NSLayoutConstraint(item:pointLabel1, attribute: .top, relatedBy: .equal, toItem: nameLabel, attribute: .bottom, multiplier: 1, constant: 2)
// VerticalConstraint를 코드로 구현
NSLayoutConstraint.activate([point1WidthConstraint, point1HeightConstraint, point1LeadingConstraint, point1VerticalSpace])

```

---
### ScreenShot

<img width="300" alt="스크린샷 2019-11-21 오후 11 41 08" src="https://user-images.githubusercontent.com/46750574/69348579-c150c300-0cb9-11ea-853b-116ae912a3fd.png"><img width="300" alt="스크린샷 2019-11-22 오후 2 50 40" src="https://user-images.githubusercontent.com/46750574/69401151-9dcc5d80-0d37-11ea-9d8e-0d2a72657c29.png">

---

#6th Seminar

* Alamofire
* Postman

```swift
//상품 조회하는 func.. 싱글턴으로 통신 성공한 데이터를 관리하여 data를 캐스팅!
func StorageCheck() {
        DataManager.sharedManager.productCheck()
            {
                data in        
                switch data {
                case .success(let data):
                    DataManager.sharedManager.setStorageList(list: data as! [DataClass])
                    self.setUp()
                  //setUp으로 getStorageList()시켜준다
                case .requestErr(let message):
                    self.simpleAlert(title: "로그인 실패", message: "\(message)", type: 0)
                case .pathErr:
                    print(".pathErr")
                case .serverErr:
                    print(".serverErr")
                case .networkFail:
                    self.simpleAlert(title: "로그인 실패", message: "네트워크 상태를 확인해주세요.", type: 1)
                }
        }
    }
```

---

### ScreenShots

<img width="300" alt="스크린샷 2019-11-25 오후 4 35 42" src="https://user-images.githubusercontent.com/46750574/69521160-b2ac2980-0fa1-11ea-9d19-36e105e5b3bf.png">

