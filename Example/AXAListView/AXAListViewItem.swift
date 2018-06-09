//
//  AXAListViewItem.swift
//  AXAListView_Example
//
//  Created by harald bregu on 09/06/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit

class AXAListViewItem: UIView {
    class func instatiateFromNib() -> AXAListViewItem {
        let view = AXAListViewItem().fromNib() as! AXAListViewItem
        return view
    }
}

extension AXAListViewItem {
    func fromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nibName = type(of: self).description().components(separatedBy: ".").last!
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as! UIView
    }
}
