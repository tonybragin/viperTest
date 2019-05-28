//
//  Entity.swift
//  viperTest
//
//  Created by TONY on 28/05/2019.
//  Copyright © 2019 TONY. All rights reserved.
//

import Foundation

class MyEntity {
    private(set) static var number: Int = 0
    
    func plus() -> Int {
        MyEntity.number += 1
        return MyEntity.number
    }
}
