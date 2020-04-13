//
//  entry.swift
//  todo
//
//  Created by Julian Schnabel on 13.04.20.
//  Copyright © 2020 Julian Schnabel. All rights reserved.
//

import Foundation
class entry : ObservableObject{
    var content : String;
    var creation_date : Date
    var due_date : Date
    var urgency : Urgency
    init(content : String, ) {
        
    }
}

enum Urgency{
    case High
    case Normal
    case Low
}
