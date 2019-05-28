//
//  SecondInteractor.swift
//  viperTest
//
//  Created by TONY on 28/05/2019.
//  Copyright © 2019 TONY. All rights reserved.
//

import Foundation

class SecondInteractor: InteractorProtocol {
    weak var presenter: SecondPresenter!
    var entity: MyEntity!
    
    init(presenter: SecondPresenter) {
        self.presenter = presenter
        self.entity = MyEntity()
    }
    
    func number() -> Int {
        return MyEntity.number
    }
}
