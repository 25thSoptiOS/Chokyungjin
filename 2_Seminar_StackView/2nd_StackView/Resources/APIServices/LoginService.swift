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
                        print(status)
//                        print(response.request, response.response, response.result)
                        switch status {
                                case 200:
                                    do {
                                        let decoder = JSONDecoder()
//                                        print("value", value)
                                        let result = try decoder.decode(ResponseString.self, from: value)
                                        
                                        // ResponseString에 있는 success로 분기 처리
                                        switch result.success {
                                            
                                        case true:
                                            print("success")
                                            completion(.success(result.data))
                                        case false:
                                            completion(.requestErr(result.message))
                                        }
                                    }
                                    catch {
                                        completion(.pathErr)
                                        print(error.localizedDescription)
                                        print(APIConstants.LoginURL)
                                    }
                                case 400:
                                    completion(.pathErr)
                                case 500:
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
