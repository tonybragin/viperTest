//
//  FirstInteractor.swift
//  viperTest
//
//  Created by TONY on 28/05/2019.
//  Copyright © 2019 TONY. All rights reserved.
//

import Foundation

class FirstInteractor: InteractorProtocol {
    weak var presenter: FirstPresenter!
    var entity: MyEntity!
    
    init(presenter: FirstPresenter) {
        self.presenter = presenter
        self.entity = MyEntity()
    }
    
    func plusedNumber() -> String {
        return String(entity.plus())
    }
}
