/*
 ProductInfoHelper.swift
 
 
 Created by Cristina Dobson
 
 Methods to get the product information from
 a Product object
 */


import Foundation


struct ProductInfoHelper {
  
  
  // MARK: - Product Description 
  
  // Create the description string of a product
  static func createDescriptionString(for product: Product) -> String {
    
    var resultString = ""
    
    if let productInfo = product.info {
      
      if let material = productInfo.material {
        
        resultString = NSLocalizedString(
          material,
          comment: "Материал коляски") + ", "
        resultString.capitalizeFirstLetter()
      }
      else if let seats = productInfo.numberOfSeats {
        
        resultString =
        "\(seats) " +
        NSLocalizedString(
          "КГ",
          comment: "Есть ли накидка") + " "
      }
      
      if let color = product.info?.color {
        resultString += NSLocalizedString(
          color, comment: "Цвет: ")
      }
    }
    
    return resultString
  }
  
  
  // MARK: - Product ImageURL
  
  // Can create the imageURL to load the image
  static func canCreateImageUrl(from imageUrl: String?) -> URL? {
    if
      let productImageUrlString = imageUrl,
      let productImageURL = URL(string: productImageUrlString)
    {
      return productImageURL
    }
    
    return nil
  }
  
}












