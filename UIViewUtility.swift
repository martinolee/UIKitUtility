//
//  UIViewUtility.swift
//  Pods-UIKitUtility_Example
//
//  Created by Soohan Lee on 2020/07/12.
//

import UIKit

public protocol UIViewUtility {
  /**
  Adds views to the end of the receiver’s list of subviews.
  
  - parameter views: The views to be added. After being added, these views appear on top of any other subviews.
  */
  func addSubviews(_ views: [UIView])
}

extension UIView: UIViewUtility {
  public func addSubviews(_ views: [UIView]) {
    for view in views {
      self.addSubview(view)
    }
  }
}
