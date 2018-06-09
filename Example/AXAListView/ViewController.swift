//
//  ViewController.swift
//  AXAListView
//
//  Created by AldoOS on 06/09/2018.
//  Copyright (c) 2018 AldoOS. All rights reserved.
//

import UIKit
import AXAListView
//import HBView

class ViewController: UIViewController {
    @IBOutlet weak var listView: AXAListView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let ff = AXAListViewItem.instatiateFromNib()
        self.view.addSubview(ff)
        
        
        
        // Simple add new data 
//        listView.reloadData(numberOfItems: { (listView) -> Int in
//            return 1
//        }) { (listView, index) -> UIView in
//            return UIView()
//        }
        
//        let e = Example()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

