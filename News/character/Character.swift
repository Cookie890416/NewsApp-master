//
//  Character.swift
//  smallAnimalStoryBook
//
//  Created by User06 on 2020/4/13.
//  Copyright © 2020 bc. All rights reserved.
//

import Foundation

struct Character {
    let name: String
    let ename: String
    let intro: String
    
    #if DEBUG
    static let demoCharacter = Character(name: "粉紅兔兔", ename: "Usagi", intro: "test")
    #endif
}
