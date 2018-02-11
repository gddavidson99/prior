//
//  Task.swift
//  Prior
//
//  Created by Greg Davidson on 2/10/18.
//  Copyright © 2018 Greg Davidson. All rights reserved.
//

import Foundation

struct Task {
    
    private var name: String
    private var priority: Int
    
    init(userName: String, userPriority: Int) {
        
        name = userName
        priority = userPriority
        
    }
    
    func getName() -> String {
        
        return name
        
    }
    
    func getPriority() -> Int {
        
        return priority
        
    }
    
}
