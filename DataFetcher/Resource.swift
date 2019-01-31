//
//  Resource.swift
//  Networking
//
//  Created by Artak Tsatinyan on 1/31/19.
//  Copyright © 2019 Artak Tsatinyan. All rights reserved.
//

import Foundation

protocol IResource {
    var baseUrl: String { get }
    var path: String { get }
    var params: [String: AnyHashable] { get }
    var headers: [String: AnyHashable] { get }
    var method: ResouceMethod { get }
}

enum ResouceMethod: String {
    case get = "GET"
    case post = "POST"
    case update = "UPDATE"
}
