//
//  AXAListView.swift
//  myaxa
//
//  Created by harald bregu on 05/06/18.
//  Copyright © 2018 frog design. All rights reserved.
//

import UIKit

/* AXAListViewDataSource protocol is used to return to the view
 all data needed to create the list view.
 */
@objc protocol AXAListViewDataSource: class {
    /* Return the number of items that you whant to show in
     the list view.
     */
    @available(iOS 9.0, *)
    @objc optional func numberOfItems(in listView: AXAListView) -> Int
    
    /* Return the view for each index in the list view
     */
    @available(iOS 9.0, *)
    @objc optional func listView(_ listView: AXAListView, itemForIndex index:Int) -> UIView
}

/* AXAListView is a non-rendering subclass of UIStackView, intended for managing layout of its arrangedSubviews vertically.
 The layout will update automatically when arrangedSubviews list changes
 due to adding, removing, or inserting arrangedSubviews, and also when
 views in the arrangedSubviews list change their hidden property.
 */
@available(iOS 9.0, *)
public class AXAListView: UIStackView {
    
    /* Implement and assign dataSource to the view or
     controller where you want to use it. After this
     you have to implement the functions provided.
     */
    weak var dataSource: AXAListViewDataSource? {
        didSet {
            reloadData()
        }
    }
    
    /* Alternative of datasource methods use closures block
     and return all the data needed to build the view.
     */
    public func reloadData(numberOfItems:(AXAListView)->Int, itemForIndex:(AXAListView, Int)->UIView) {
        removeAllArrangedSubviews()
        let numberOfItems = numberOfItems(self)
        if numberOfItems > 0 {
            for i in 1...numberOfItems {
                let view = itemForIndex(self, i-1)
                view.translatesAutoresizingMaskIntoConstraints = false
                addArrangedSubview(view)
            }
        }
    }
    
    /* You can call this function to update the data inside
     the stackView. This method is called automatically after
     you return all data needed to build the view.
     */
    public func reloadData() {
        removeAllArrangedSubviews()
        let numberOfItems = self.numberOfItems()
        if numberOfItems! > 0 {
            for i in 1...numberOfItems! {
                let view = self.listView(self, itemForIndex: i-1)
                addArrangedSubview(view!)
                view?.translatesAutoresizingMaskIntoConstraints = false
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required public init(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    func setup() {
        self.axis = .vertical
        self.spacing = 10
        self.alignment = .fill
        self.distribution = .fillProportionally
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

/* AXAListView extension to get util functions and use them.
 */
@available(iOS 9.0, *)
public extension AXAListView {
    
    /* Read the current number of items in the list.
     */
    public func numberOfItems() -> Int! {
        guard let numberOfItems = self.dataSource?.numberOfItems!(in: self) else {
            return 0
        }
        return numberOfItems
    }
    
    /* Read the view in the list at index that you want.
     */
    public func listView(_ listView: AXAListView, itemForIndex index: Int) -> UIView! {
        guard let item = self.dataSource?.listView!(listView, itemForIndex: index) else {
            return UIView()
        }
        return item
    }
    
    /* Remove all arranged subviews in the stackview at once.
     */
    public func removeAllArrangedSubviews() {
        let removedSubviews = arrangedSubviews.reduce([]) { (allSubviews, subview) -> [UIView] in
            self.removeArrangedSubview(subview)
            return allSubviews + [subview]
        }
        // Deactivate all constraints
        NSLayoutConstraint.deactivate(removedSubviews.flatMap({ $0.constraints }))
        // Remove the views from self
        removedSubviews.forEach({ $0.removeFromSuperview() })
    }
}




