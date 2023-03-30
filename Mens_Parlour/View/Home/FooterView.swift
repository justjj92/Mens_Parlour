//
//  FooterView.swift
//  Mens_Parlour
//
//  Created by J J on 3/27/23.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center,spacing: 10) {
            Text("Created by Justin Jordan")
                .foregroundColor(.gray)
            .layoutPriority(2)
        }
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
    }
}
