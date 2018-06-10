//
//  AXAListViewItem.swift
//  AXAListView_Example
//
//  Created by harald bregu on 09/06/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit

class AXAListViewItem: UIView {
    class func instatiateFromNib(nibName:String) -> UIView {
        let nib = UINib(nibName: nibName, bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as! UIView
    }
}
