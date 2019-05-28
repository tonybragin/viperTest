//
//  ViewController.swift
//  viperTest
//
//  Created by TONY on 28/05/2019.
//  Copyright © 2019 TONY. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, ViewProtocol {
    var presenter: FirstPresenter!
    
    @IBOutlet weak var numberButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        createModule()
    }
    
    @IBAction func plusAction(_ sender: UIButton) {
        presenter.plusClicked()
    }
    
    @IBAction func numberAction(_ sender: UIButton) {
        presenter.numberClicked()
    }
    
    func createModule() {
        self.presenter = FirstPresenter(view: self)
    }
}

