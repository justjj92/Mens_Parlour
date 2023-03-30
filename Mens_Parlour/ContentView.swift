//
//  ContentView.swift
//  Mens_Parlour
//
//  Created by J J on 3/27/23.
//

import SwiftUI


struct ContentView: View {
    
    //MARK: - PROPERTY
    
    
    //MARK: - BODY
    
    var body: some View {
        ZStack {
            NavigationStack {
                LazyVGrid(columns: gridLayout, spacing: 5) {
                  ForEach(icons) { icon in
                      Button(action: {}) {
                          HomeIconView(icon: icon)
                      }
//                      .padding(-5)
                      .buttonStyle(PlainButtonStyle())
                  } //: LOOP
                } //: GRID
            }
            .safeAreaInset(edge: .top) {
                NavigationBarView()
                    .padding(.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
            }
            .safeAreaInset(edge: .bottom) {
                FooterView()
                    .padding(.bottom)
                    .background(Color.white)
            }
        }
    }
}

//struct ItemButtonStyle: ButtonStyle {
//    let cornerRadius: CGFloat
//
//    func makeBody(configuration: Configuration) -> some View {
//        ZStack {
//            configuration.label
//
//            if configuration.isPressed {
//                Color.black.opacity(0.2)
//            }
//        }
//        .clipShape(RoundedRectangle(cornerRadius: 20))
//        .shadow(color: Color.black.opacity(0.2), radius: 5, y: 10 )
//    }
//}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
