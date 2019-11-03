//
//  LoginService.swift
//  test
//
//  Created by 조경진 on 2019/11/03.
//  Copyright © 2019 조경진. All rights reserved.
//

import Foundation
import Alamofire

struct LoginService {
    
    static let shared = LoginService()
    //구조체의 정적 객체 생성
    
    func login(_ id: String, _ pwd: String , completion: @escaping (NetworkResult<Any>) -> Void) {
        //login의 대한 함수
        
        let header: HTTPHeaders = [
            "Content-Type" : "application/json"]
        //Content-Type도 종류가 많은데 그 중 하나인 application/json 을 채택
        //헤더는 : 형식으로 작성해야함.
        let body: Parameters = [
            "id":id,
            "pwd":pwd]
        //Parameters엔 id, pwd를 가지고있다.
        
    //1: URL 주소, 2: method 방법 3: 파라미터 , 4: encoding 방식 , 5: header 종류
    Alamofire.request(APIConstants.LoginURL, method: .post , parameters: body, encoding: JSONEncoding.default, headers: header).responseData { response in
            switch response.result {
            case .success:
                if let value = response.data {
                    if let status = response.response?.statusCode {
                        switch status {
                            //status 가 200이면 통신 성공
                                case 200:
                                    do {
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
                                            //completion으로 result.data전달
                                        case false:
                                            completion(.requestErr(result.message))
                                            //completion으로 result.message전달
                                        }
                                    }
                                    catch {
                                        completion(.pathErr)
                                        print(error.localizedDescription)
                                        print(APIConstants.LoginURL)
                                    }
                                case 400:
                                    //400이면 실패
                                    completion(.pathErr)
                                case 500:
                                    //500이면 serverErr
                                    completion(.serverErr)
                                default:
                                    break
                                }// switch
                            }// iflet
                        }
                        break
            // 통신 실패 - 네트워크 연결
                                case .failure(let err):
                                    print(err.localizedDescription)
                                    completion(.networkFail)
                                    // .networkFail이라는 반환 값이 넘어감
                                    break
                                } // response.result switch
                        } // alamofire.request
                    } // func login
    
    
    } // struct
