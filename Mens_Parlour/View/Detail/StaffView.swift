//
//  StaffView.swift
//  Mens_Parlour
//
//  Created by J J on 3/29/23.
//

import SwiftUI

struct StaffView: View {
    
    var body: some View {
        ZStack {
            NavigationView {
                List {
                    ForEach(staffs) { staff in
                        NavigationLink(value: staff) {
                            HStack {
                                Image(staff.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 40)
                                Text(staff.name)
                            }
                            .navigationTitle("Staff")
                        }
                    }
                }
                .navigationDestination(for: Staff.self) { staff in
                    switch staff.destination.type {
                    case .staffWebView:
                        SafariView(url: staff.destination.url!)
                    }
                }
            }
        }
    }
}



struct StaffView_Previews: PreviewProvider {
    static var previews: some View {
        StaffView()
    }
}










//                HStack {
//                    Image("marco")
//                    Text("Marco G.")
//                    }
//                HStack {
//                    Image("ruben")
//                    Text("Ruben")
//                    }
//                HStack {
//                    Image("justinhwang")
//                    Text("Justin H.")
//                    }
//                HStack {
//                    Image("jrcruz")
//                    Text("JR Cruz")
//                    }
//                HStack {
//                    Image("gustavo")
//                    Text("Gustavo A.")
//                    }
//                HStack {
//                    Image("desean")
//                    Text("Desean")
//                    }
//                HStack {
//                    Image("cynthia")
//                    Text("Cynthia")
//                    }
