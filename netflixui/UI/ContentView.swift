//
//  ContentView.swift
//  netflixui
//
//  Created by Dwi Randy Herdinanto on 26/02/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Home().navigationBarTitle("")
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
        }.preferredColorScheme(.dark)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
