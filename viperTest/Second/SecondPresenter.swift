//
//  SecondPresenter.swift
//  viperTest
//
//  Created by TONY on 28/05/2019.
//  Copyright © 2019 TONY. All rights reserved.
//

import Foundation
import UIKit

class SecondPresenter: PresenterProtocol {
    weak var view: SecondViewController!
    var router: SecondRouter!
    var interactor: SecondInteractor!
    
    init(view: SecondViewController) {
        self.view = view
        self.router = SecondRouter(view: view)
        self.interactor = SecondInteractor(presenter: self)
    }
}
