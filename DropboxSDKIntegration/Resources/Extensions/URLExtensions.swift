
//
//  URLExtensions.swift
//  DropboxSDKIntegration
//
//  Created by Kunal Gupta on 27/01/20.
//  Copyright © 2020 Kunal Gupta. All rights reserved.
//

public typealias JSON = [String: Any]

extension URL {

    public var queryParameters: [String: String]? {
        guard let components = URLComponents(url: self, resolvingAgainstBaseURL: true), let queryItems = components.queryItems else {
            return nil
        }
        var parameters = [String: String]()
        for item in queryItems {
            parameters[item.name] = item.value
        }

        return parameters
    }

}
