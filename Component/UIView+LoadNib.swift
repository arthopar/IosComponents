//
//  UIView+LoadNib.swift
//  Component
//
//  Created by Artak Tsatinyan on 1/16/19.
//  Copyright © 2019 Artak Tsatinyan. All rights reserved.
//

import Foundation
import UIKit

public protocol NibLoadable: class {
    static var nibName: String? { get }
    static func loadNib() -> Self?
    static func loadNib(with nibName: String) -> Self?
}

extension UIView: NibLoadable {}

extension NibLoadable where Self: UIView {
    public static var nibName: String? {
        return self.description().components(separatedBy: ".").last
    }

    public static func loadNib() -> Self? {
         guard let nibName = self.nibName else { return nil}

        return loadNib(with: nibName)
    }

    public static func loadNib(with nibName: String) -> Self? {
        let bundle = Bundle.init(for: self)
        let nib = UINib(nibName: nibName, bundle: bundle)

        return nib.instantiate(withOwner: self, options: nil).first as? Self
    }
}
