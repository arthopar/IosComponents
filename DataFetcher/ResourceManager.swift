//
//  ResourceManager.swift
//  Networking
//
//  Created by Artak Tsatinyan on 1/31/19.
//  Copyright © 2019 Artak Tsatinyan. All rights reserved.
//

import Foundation
import RxSwift

class ResourceManager {
    var parser: IParser!
    var fetcher: IResourceFetching!

    func fetchedObject<T: Decodable>(for resource: IResource) -> Single<T> {
        let response = fetcher.fetch(resourece: resource)

        return response.flatMap(parser.parse)
    }
}
