//
//  FirstRouter.swift
//  viperTest
//
//  Created by TONY on 28/05/2019.
//  Copyright © 2019 TONY. All rights reserved.
//

import Foundation
import UIKit

class FirstRouter: RouterProtocol {
    weak var view: FirstViewController!
    
    init(view: FirstViewController) {
        self.view = view
    }
    
    func goForward() {
        let secondView = view.storyboard!.instantiateViewController(withIdentifier: "second")
        view.navigationController?.pushViewController(secondView, animated: true)
    }
}
