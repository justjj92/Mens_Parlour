//
//  NavigationBarView.swift
//  Mens_Parlour
//
//  Created by J J on 3/27/23.
//

import SwiftUI

//MARK: - PROPERTY

struct NavigationBarView: View {
    
    @State private var isAnimated: Bool = false
    
//MARK: - BODY
    
    var body: some View {
        HStack {
            LogoImageView()
            
            LogoView()
              .opacity(isAnimated ? 1 : 0)
              .offset(x: 0, y: isAnimated ? 0 : -25)
              .onAppear(perform: {
                  withAnimation(.easeOut(duration: 1.2)) {
                  isAnimated.toggle()
                }
          })
        }
    }
}

//MARK: - PREVIEW

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
