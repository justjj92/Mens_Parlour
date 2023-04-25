//
//  InfoView.swift
//  Mens_Parlour
//
//  Created by J J on 4/21/23.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
            NavigationView {
                Form {
                    Section {
                        Text("Hours")
                            .fontWeight(.bold)
                            
                        Text("Monday 9:30AM - 5:30PM")
                        Text("Tuesday 9:30AM - 5:30PM")
                        Text("Wednesday 9:30AM - 5:30PM")
                        Text("Thursday 9:30AM - 5:30PM")
                        Text("Friday 9:30AM - 5:30PM")
                        Text("Saturday 9:30AM - 4:30PM")
                        Text("Sunday 10AM - 2PM")
                        
                    }
                    Section {
                        Text("Holiday hours and availablity may vary. Please call to confirm.")
                    }
                    Section {
                        VStack {
                            Text("Call")
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .center)
                            Link("(805) 210-5000", destination: URL(string: "tel:8052105000")!)
                        }
                    }
                    Section {
                        VStack {
                            Text("Address")
                                .fontWeight(.bold)
                            Button(action:{
                                openMap(Address: "3200,E,Los,Angeles,Ave,UNIT,4,,Simi,Valley,,CA,93065")
                            }){
                                Text("3200 E Los Angeles Ave UNIT 4, Simi Valley, CA 93065")
                                    .multilineTextAlignment(.center)
                            }
                            
                        }
                    }
                }
                .navigationTitle("Men's Parlour Info")
            }
    }
    func openMap(Address:String){
        UIApplication.shared.openURL(NSURL(string: "http://maps.apple.com/?address=\(Address)")! as URL)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
