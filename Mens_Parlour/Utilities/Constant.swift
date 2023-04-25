//
//  Constant.swift
//  Mens_Parlour
//
//  Created by J J on 3/27/23.
//
import Foundation
import SwiftUI

// DATA
//let icons: [Icon] = Bundle.main.decode("homeIcon.json")
//let staffs : [Staff] = Bundle.main.decode("staff.json")
let icons = Bundle.main.decodeJson(
    [Icon].self,fileName: "homeIcon.json")
let staffs = Bundle.main.decodeJson(
    [Staff].self,fileName: "staff.json")


// COLOR

let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

// LAYOUT

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
  return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// UX

let feedback = UIImpactFeedbackGenerator(style: .medium)

// ENUM



// API
// IMAGE
// FONT
// STRING
// MISC
