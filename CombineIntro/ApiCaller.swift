//
//  ApiCaller.swift
//  CombineIntro
//
//  Created by PNT001 on 2022/09/27.
//

import Foundation
import Combine

class APICaller {
    static let shared = APICaller()
    
    //a traditional way
//    func fetchData(completion: ([String]) -> Void) {
//        completion(["Apple"])
//    }
    
    func fetchCompanies() -> Future<[String], Error> {
        return Future { promixe in
            DispatchQueue.main.asyncAfter(deadline: .now()+3) {
                promixe(.success(["PPP","NNN","TTT","BBB","III","ZZZ"]))
            
            }
        }
    }
}
