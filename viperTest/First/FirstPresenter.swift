//
//  FirstPresenter.swift
//  viperTest
//
//  Created by TONY on 28/05/2019.
//  Copyright © 2019 TONY. All rights reserved.
//

import Foundation
import UIKit

class FirstPresenter: PresenterProtocol {
    weak var view: FirstViewController!
    var router: FirstRouter!
    var interactor: FirstInteractor!
    
    init(view: FirstViewController) {
        self.view = view
        self.router = FirstRouter(view: view)
        self.interactor = FirstInteractor(presenter: self)
        
        view.numberButton.setTitle(interactor.plusedNumber(), for: .normal)
    }
    
    func plusClicked() {
        view.numberButton.setTitle(interactor.plusedNumber(), for: .normal)
    }
    
    func numberClicked() {
        router.goForward()
    }
}
