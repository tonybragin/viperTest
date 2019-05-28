//
//  Protocols.swift
//  viperTest
//
//  Created by TONY on 28/05/2019.
//  Copyright © 2019 TONY. All rights reserved.
//

import Foundation
import UIKit

protocol ViewProtocol {
    associatedtype P: PresenterProtocol
    
    var presenter: P! {get set}
    
    func createModule()
}

protocol PresenterProtocol {
    associatedtype V: UIViewController
    associatedtype R: RouterProtocol
    associatedtype I: InteractorProtocol
    
    var view: V! {get}
    var router: R! {get}
    var interactor: I! {get}
    
}

protocol RouterProtocol {
    associatedtype V: UIViewController
    
    var view: V! {get}
}

protocol InteractorProtocol {
    associatedtype P: PresenterProtocol
    
    var presenter: P! {get}
    
}
