//
//  LogoView.swift
//  Mens_Parlour
//
//  Created by J J on 3/27/23.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(height: 40)
            Text("Men's Parlour".uppercased())
                .font(.system(size: 40))
                .fontWeight(.black)
            .foregroundColor(.black)
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
