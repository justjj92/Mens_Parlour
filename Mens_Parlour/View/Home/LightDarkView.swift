//
//  LightDarkView.swift
//  Mens_Parlour
//
//  Created by J J on 4/24/23.
//
import SwiftUI

struct AdaptiveImage: View {
    @Environment(\.colorScheme) var colorScheme
    let light: Image
    let dark: Image

    @ViewBuilder var body: some View {
        if colorScheme == .light {
            light
        } else {
            dark
        }
    }
}
