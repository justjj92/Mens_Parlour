//
//  HomeIconModel.swift
//  Mens_Parlour
//
//  Created by J J on 3/27/23.
//

import SwiftUI
import Foundation
 
// I added a destination variable that your json data now contains
// It's the easiest way to know what type of View a grid item needs to push to
struct Icon: Codable, Identifiable, Hashable {
    let id: Int
    let image: String
    let name: String
    let destination: Destination
}
 
struct Destination: Codable, Hashable {
    let type: DestinationType
    let url: URL?
}

// An enum seems to be the best way to handle different types of pages that you'd want
// You can add to it as much as you want!
enum DestinationType: String, Codable {
    case webView = "webView"
    case detail = "detail"
    case info = "info"
    case other = "other"
    case staff = "staff"
}
