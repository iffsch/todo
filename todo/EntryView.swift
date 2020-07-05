//
//  EntryView.swift
//  todo
//
//  Created by Julian Schnabel on 13.04.20.
//  Copyright © 2020 Julian Schnabel. All rights reserved.
//

import SwiftUI

struct EntryView: View {
    @Environment (\.managedObjectContext) var managedObjectContext
    @FetchRequest(entity: Entry.entity(), sortDescriptors: [])
    var entries: FetchedResults<Entry>
    var body: some View {
        HStack{
            VStack{
                List{
                    ForEach(self.entries, id: \.self){ entry in
                        Text(entry.name ?? "")
                            .font(.largeTitle)
                            .foregroundColor(.green)
                            .padding();
                        Spacer();
                    }
                }
            }
            Spacer()
        }
    }
}

struct EntryView_Previews: PreviewProvider {
    static var previews: some View {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let entryEinkaufen = Entry(context: context)
        entryEinkaufen.name = "Einkaufen"
        return EntryView().environment(\.managedObjectContext, context)
    }
}
