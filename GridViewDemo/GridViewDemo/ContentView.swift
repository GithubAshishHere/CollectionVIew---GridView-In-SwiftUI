//
//  ContentView.swift
//  GridViewDemo
//
//  Created by Aashish Bapodra on 30/05/21.
//

import SwiftUI

struct ContentView: View {
    
    
    private var gridItemLayout = [GridItem(.flexible())]
    // Created array with images filename.
    private var profiles = ["Profile1","Profile2","Profile3","Profile4","Profile5"]
    
    var body: some View {
        // Remove Extra parameters
        ScrollView(.horizontal){
            LazyHGrid(rows: gridItemLayout, spacing:20) {
                ForEach(profiles, id:\.self){ profile in
                    
                    // Add Images
                    // We have filename you we using name:string function.
                    // Pass profile inside Image
                    // Below all are the property for Image
                    // Now adding this image inside VStack and give padding
                    VStack{
                    Image(profile)
                        .resizable()
                        .frame(width: 320, height: 320)
                        .scaledToFit()
                        .cornerRadius(10.0)
                    }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    // Now it's looks little bit nice :)
                    // You can try adding more property
                    // This for horizontal collectionview
                }
            }
        }
   
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
