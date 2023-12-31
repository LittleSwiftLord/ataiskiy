//
//  CollectionProductInfoHelper.swift
//
//
//  Created by Cristina Dobson
//


import Foundation


// MARK: - Product Collection Types enum

// Product Collection Types
enum CollectionType: String, CaseIterable {
    case wheel
    case bike
    case walks
  
  // Returns the title to use in ProductCatalogViewController
  var productTypeTitle: String {
    switch self {
      case .wheel:
        return "Коляски"
      case .bike:
        return "Велосипеды"
      case .walks:
        return "Ходунки"
    }
  }
}


struct CollectionProductInfoHelper {
  
  
  // MARK: - Get localized Product Collection type
  
  // Get the product collection type localized name
  static  func getProductCollectionTypeLocalizedName(from index: Int) -> String {
    
    let collectionTypeCases = CollectionType.allCases
    
    if index <= collectionTypeCases.count-1 {
      let collectionName = collectionTypeCases[index].productTypeTitle
      return NSLocalizedString(
        collectionName,
        comment: "Выбор коллекции")
    }
    
    return ""
  }
  
}















