
//
//  StringExtension.swift
//  DropboxSDKIntegration
//
//  Created by Kunal Gupta on 27/01/20.
//  Copyright © 2020 Kunal Gupta. All rights reserved.
//

import Foundation

extension String {
    func toJSON() -> Any {
        if let data = self.data(using: .utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: [])
            } catch {
                print(error.localizedDescription)
            }
        }
        return [:]
    }
}
