//
//  ViewController.swift
//  AXAListView
//
//  Created by AldoOS on 06/09/2018.
//  Copyright (c) 2018 AldoOS. All rights reserved.
//

import UIKit
import AXAListView

class ViewController: UIViewController, AXAListViewDataSource {
    @IBOutlet weak var listView: AXAListView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // USING CLOSURES
        listView.reloadData(numberOfItems: { (listView) -> Int in
            return 13
        }) { (listView, index) -> UIView in
            return (index % 2 == 0) ? AXAListViewItem.instatiateFromNib(nibName: "AXAListViewItemOne") : AXAListViewItem.instatiateFromNib(nibName: "AXAListViewItemTwo")
        }
        
//        // Using protocols
//        listView.dataSource = self

    }
    
    // MARK: Using protocols
    func numberOfItems(in listView: AXAListView) -> Int {
        return 34
    }
    func listView(_ listView: AXAListView, itemForIndex index: Int) -> UIView {
        return (index % 2 == 0) ? AXAListViewItem.instatiateFromNib(nibName: "AXAListViewItemOne") : AXAListViewItem.instatiateFromNib(nibName: "AXAListViewItemTwo")
    }

}

