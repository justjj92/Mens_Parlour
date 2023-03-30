//
//  LogoImageView.swift
//  Mens_Parlour
//
//  Created by J J on 3/27/23.
//

import SwiftUI

struct LogoImageView: View {
    var body: some View {
        Image("logo")
            .resizable()
            .scaledToFit()
            .frame(width: 30, height: 30, alignment: .center)
    }
}

struct LogoImageView_Previews: PreviewProvider {
    static var previews: some View {
        LogoImageView()
    }
}
