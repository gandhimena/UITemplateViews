//
//  JSONDecoder+Extension.swift
//  TemplatesView
//
//  Created by GandhiMena on 10/10/19.
//  Copyright © 2019 gandhi. All rights reserved.
//

import Foundation

extension JSONDecoder {
    func decode<T: Decodable>(_ type: T.Type, withJSONObject object: Any, options opt: JSONSerialization.WritingOptions = []) throws -> T {
        let data = try JSONSerialization.data(withJSONObject: object, options: opt)
        return try decode(T.self, from: data)
    }
}
