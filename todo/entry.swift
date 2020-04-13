//
//  entry.swift
//  todo
//
//  Created by Julian Schnabel on 13.04.20.
//  Copyright © 2020 Julian Schnabel. All rights reserved.
//

import Foundation
class entry : NSObject{
   
    let creation_date = Date()
    @Published var content : String;
    @Published var due_date : Date?
    @Published var urgency : Urgency?
    
    init(content : String) {
        self.content = content
    }
}

enum Urgency{
       case LOW
       case NORMAL
       case HIGH
       case SUPER_HIGH
   }
