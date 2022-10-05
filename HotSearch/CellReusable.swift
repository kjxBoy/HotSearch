//
//  cellReusable.swift
//  HotSearch
//
//  Created by 康佳兴 on 2022/10/3.
//

import UIKit

protocol Reusable: AnyObject {
    static var reuseIdentifier: String { get }
}

extension Reusable {
    static var reuseIdentifier: String {
        return String(describing: self)

    }
}

extension UITableViewCell: Reusable{}
extension UITableViewHeaderFooterView: Reusable{}
extension UICollectionViewCell: Reusable{}
