//
//  NetworkResult<T>.swift
//  test
//
//  Created by 조경진 on 2019/11/03.
//  Copyright © 2019 조경진. All rights reserved.
//

import Foundation


//열거형 정의.. case별로 구분
enum NetworkResult<T> {
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
}

//API 주소별로 인스턴스 생성
struct APIConstants {
    // 전역 변수로 사용할 수 있게 APIConstants 선언하여 사용
//    static let BaseURL = "http://106.10.59.71:3000/users"
      static let BaseURL = "https://seunghun-empcs.run.goorm.io/api/auth"

    /* 유저(User) */
   // static let LoginURL = BaseURL + "/signin" // 로그인
    static let LoginURL = BaseURL + "/signin" // 로그인

    static let SignupURL = BaseURL + "/signup" // 회원가입
}
