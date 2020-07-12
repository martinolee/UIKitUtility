//
//  Identifiable.swift
//  Pods-UIKitUtility_Example
//
//  Created by Soohan Lee on 2020/07/12.
//

import Foundation

public protocol Identifiable {
  static var identifier: String { get }
}

extension Identifiable {
  public static var identifier: String { String(describing: self) }
}
