//
//  entry.swift
//  todo
//
//  Created by Julian Schnabel on 13.04.20.
//  Copyright © 2020 Julian Schnabel. All rights reserved.
//

import Foundation
class entry : NSObject{
    
    private var content : String;
    private let creation_date = Date()
    private var due_date : Date?
    private var urgency : Urgency?
    
    public func getContent() -> String{
        return content
        
    }
    
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
