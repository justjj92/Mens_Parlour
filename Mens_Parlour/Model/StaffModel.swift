//
//  StaffModel.swift
//  Mens_Parlour
//
//  Created by J J on 3/27/23.
//
import SwiftUI
import Foundation


 
// I added a destination variable that your json data now contains
// It's the easiest way to know what type of View a grid item needs to push to

struct Staff: Codable, Identifiable, Hashable {
  let id: Int
  let name: String
  let image: String
  let destination: Destination2
}

// Following the revisited json file,
// I made this an object so it can be easily decoded
enum StaffDestinationType: String, Codable {
    case staffWebView = "staffWebView"

}
 
// An enum seems to be the best way to handle different types of pages that you'd want
// You can add to it as much as you want!
struct Destination2: Codable, Hashable {
    let type: StaffDestinationType
    let url: URL?
}
