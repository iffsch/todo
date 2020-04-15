//
//  EntryView.swift
//  todo
//
//  Created by Julian Schnabel on 13.04.20.
//  Copyright © 2020 Julian Schnabel. All rights reserved.
//

import SwiftUI

struct EntryView: View {
    var entry : entry
    var body: some View {
        HStack{
            VStack{
                Text(entry.content)
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding();
                Spacer();
            }
            Spacer()
        }
        
    }
}

struct EntryView_Previews: PreviewProvider {
    static var previews: some View {
         
        EntryView(entry: entry(content: "Okay"))
    }
}
