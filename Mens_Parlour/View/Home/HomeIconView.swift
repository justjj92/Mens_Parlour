//
//  HomeIconView.swift
//  Mens_Parlour
//
//  Created by J J on 3/27/23.
//

import SwiftUI

struct HomeIconView: View {
    
    //MARK: - PROPERTY
    
    let icon: Icon
    
    //MARK: - BODY
    
    var body: some View {
        //:PHOTO
        GeometryReader { reader in
            
           let imageWidth: CGFloat = min(150, reader.size.width * 0.6)
            
            VStack {
                Image(icon.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: imageWidth)
                
            } //:ZSTACK
            .frame(width: reader.size.width, height: reader.size.height)
        } //:GEOMETRYREADER
        .frame(height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color: Color.black.opacity(0.2), radius: 10, y: 5 )
        }
    }

struct HomeIconView_Previews: PreviewProvider {
    static var previews: some View {
        HomeIconView(icon: icons[0])
            .background(colorBackground)
    }
}
