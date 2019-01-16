//
//  ViewController.swift
//  IosComponents
//
//  Created by Artak Tsatinyan on 1/16/19.
//  Copyright © 2019 Artak Tsatinyan. All rights reserved.
//

import UIKit
import Component

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let view = LoadableViewExample.loadNib()!
        self.view.addSubview(view)
    }


}

