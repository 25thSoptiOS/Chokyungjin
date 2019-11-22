//
//  ResponseString.swift
//  test
//
//  Created by 조경진 on 2019/11/03.
//  Copyright © 2019 조경진. All rights reserved.
//

import Foundation
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
   // let userIdx: Int
  //  let id, password, name, phone: String
    let id , password: String
    //DataClass는 userIdx, id , password, name, phone의 인스턴스를 가지고있다. 
    
}

