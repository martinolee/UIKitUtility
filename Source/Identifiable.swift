//
//  Identifiable.swift
//  Pods-UIKitUtility_Example
//
//  Created by Soohan Lee on 2020/07/12.
//

import Foundation

protocol Identifiable {
  static var identifier: String { get }
}

extension Identifiable {
  static var identifier: String { String(describing: self) }
}
