//
//  UITableView+Ext.swift
//  UIPractice
//
//  Created by Ibragim Akaev on 25/03/2021.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
