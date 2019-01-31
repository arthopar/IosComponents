//
//  Parser.swift
//  Networking
//
//  Created by Artak Tsatinyan on 1/31/19.
//  Copyright © 2019 Artak Tsatinyan. All rights reserved.
//

import Foundation
import RxSwift

protocol IParser {
    func parse<T: Decodable>(data: Data) -> Single<T>
}
