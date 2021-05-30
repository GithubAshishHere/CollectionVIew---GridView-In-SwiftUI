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
        ScrollView{
            LazyVGrid(columns: gridItemLayout, spacing:20) {
                ForEach(profiles, id:\.self){ profile in
                    
                    // Add Images
                    // We have filename you we using name:string function.
                    // Pass profile inside Image
                    Image(profile)
                    
                    
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
