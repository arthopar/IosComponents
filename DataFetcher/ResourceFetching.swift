//
//  ResourceFetching.swift
//  Networking
//
//  Created by Artak Tsatinyan on 1/31/19.
//  Copyright © 2019 Artak Tsatinyan. All rights reserved.
//

import Foundation
import RxSwift

protocol IResourceFetching {
    func fetch(resourece: IResource) -> Single<Data>
}
