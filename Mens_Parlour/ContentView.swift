//
//  ContentView.swift
//  Mens_Parlour
//
//  Created by J J on 3/27/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            NavigationStack {
                LogoView()
                LazyVGrid(columns: gridLayout, spacing: 5) {
                    ForEach(icons) { icon in
                        NavigationLink(value: icon) {
                            HomeIconView(icon: icon)
                        }
                    }
                }
                // This is where the logic for navigation is applied
                .navigationDestination(for: Icon.self) { icon in
                    switch icon.destination.type {
                    case .webView:
                        SafariView(url: icon.destination.url!)
                    case .detail:
                        DetailView()
                    case .info:
                        InfoView()
                    case .other:
                        OtherView()
                    case .staff:
                        StaffView()
                    }
                }
            }
        }
    }
}

 
// I created dummy views just to showcase what you could do
// Obviously replace them with the appropriate ones when you can
// I've used your Safari View just because I wanted you to see what the web view could look like
struct DetailView: View {
    var body: some View {
        Text("Coming Soon!")
    }
}
 
struct OtherView: View {
    var body: some View {
        Text("Shop is Coming Soon!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
