//
//  SecondRouter.swift
//  viperTest
//
//  Created by TONY on 28/05/2019.
//  Copyright © 2019 TONY. All rights reserved.
//

import Foundation
import UIKit

class SecondRouter: RouterProtocol {
    weak var view: SecondViewController!
    
    init(view: SecondViewController) {
        self.view = view
    }
    
    func goBack() {
        view.dismiss(animated: true, completion: nil)
    }
}
