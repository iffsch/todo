//
//  ContentView.swift
//  todo
//
//  Created by Julian Schnabel on 13.04.20.
//  Copyright © 2020 Julian Schnabel. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
        Text("todo")
            .font(.largeTitle).italic()
        Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
