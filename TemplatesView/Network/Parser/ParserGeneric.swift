//
//  ParserGeneric.swift
//  TemplatesView
//
//  Created by GandhiMena on 10/10/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import Foundation

//enum RemoteErrors: Error {
//    case noInternet
//}
//
//protocol ParserProtocl: class {
//     func parser(_ stringResponse: String, _ completion: @escaping (Result<[String: Any], RemoteErrors>) -> Void)
//}
//
//class Parser {
//
//    func parser(_ stringResponse: String, _ completion: @escaping (Result<[String: Any], RemoteErrors>) -> Void) {
//        guard let jsonData = serializeResponse(stringResponse) else { return completion(.failure(.noInternet)) }
//        return completion(.success(jsonData))
//    }
//
//    func serializeResponse(_ dataString: String) -> [String: Any]? {
//        return dataString.data(using: .utf8)
//            .flatMap { try? JSONSerialization.jsonObject(with: $0, options: [])}
//            .flatMap { $0 as? [String: Any]}
//    }
//}
