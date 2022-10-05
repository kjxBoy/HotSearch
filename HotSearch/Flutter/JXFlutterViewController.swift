//
//  JXFlutterViewController.swift
//  HotSearch
//
//  Created by 康佳兴 on 2022/10/3.
//

import UIKit
import flutter_boost

class JXFlutterViewController: FBFlutterViewContainer {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.delegate = self
    }

}
