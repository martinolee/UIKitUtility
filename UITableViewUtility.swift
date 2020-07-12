//
//  UITableViewUtility.swift
//  Pods-UIKitUtility_Example
//
//  Created by Soohan Lee on 2020/07/12.
//

import UIKit

public protocol UITableViewUtility {
  /**
   registers a class for use in creating new table cells.
   
   - parameter cell: The cell that you want to use in the table (must be a [UITableViewCell](apple-reference-documentation://hsl8do-H6H) subclass).
   */
  func register<Cell>(cell: Cell.Type) where Cell: UITableViewCell
  
  
  /**
   Returns a reusable table-view cell object located by its identifier.
   
   - parameter reusableCell: The cell that you want to reuse in the table (must be a [UITableViewCell](apple-reference-documentation://hsl8do-H6H) subclass).
   - returns: A [UITableViewCell](apple-reference-documentation://hsl8do-H6H) object with the associated identifier.
   */
  func dequeue<Cell>(_ reusableCell: Cell.Type) -> Cell where Cell: UITableViewCell
  
  
  /**
   Returns a reusable table-view cell object for the specified reuse identifier and adds it to the table.
   
   - parameter reusableCell: The cell that you want to reuse in the table (must be a [UITableViewCell](apple-reference-documentation://hsl8do-H6H) subclass).
   - parameter indexPath: The index path specifying the location of the cell. Always specify the index path provided to you by your data source object. This method uses the index path to perform additional configuration based on the cell’s position in the table view.
   - returns: A [UITableViewCell](apple-reference-documentation://hsl8do-H6H) object with the associated reuse identifier.
   */
  func dequeue<Cell>(_ reusableCell: Cell.Type, for indexPath: IndexPath) -> Cell where Cell: UITableViewCell
}

extension UITableView: UITableViewUtility {
  public func register<Cell>(cell: Cell.Type) where Cell: UITableViewCell {
    register(cell, forCellReuseIdentifier: cell.identifier)
  }
  
  
  public func dequeue<Cell>(_ reusableCell: Cell.Type) -> Cell where Cell: UITableViewCell {
    dequeueReusableCell(withIdentifier: reusableCell.identifier) as! Cell
  }
  
  
  public func dequeue<Cell>(_ reusableCell: Cell.Type, for indexPath: IndexPath) -> Cell where Cell: UITableViewCell {
    dequeueReusableCell(withIdentifier: reusableCell.identifier, for: indexPath) as! Cell
  }
}


