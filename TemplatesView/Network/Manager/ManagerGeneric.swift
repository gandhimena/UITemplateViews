//
//  ManagerGeneric.swift
//  TemplatesView
//
//  Created by GandhiMena on 10/10/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import Foundation

//protocol ManagerProtocol {
//    var parser: ParserProtocl?
//    func request(_ model: Codable, _ completion: @escaping (Result<[String: Any], RemoteErrors>))
//    
//}
//
//class Manager: ManagerProtocol {
//    var parser: ParserProtocl?
//    
//    func request(_ model: Codable, _ completion: @escaping (Result<[String: Any], RemoteErrors>)) {
//        
//        closureProvider([:])
//        
//        provider.reuest(.request(model)) { result in
//            switch result {
//            case .success(let response):
//                guard let jsonString = try? response.mapString() else {return completion(.failure(.notInternet))}
//                self.parser?.parser(jsonString, completion)
//            case. failure(let error):
//                cpmpletion(.failure(.noInternet))
//            }
//        }
//    }
//}
