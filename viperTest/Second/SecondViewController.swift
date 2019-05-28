//
//  SecondViewController.swift
//  viperTest
//
//  Created by TONY on 28/05/2019.
//  Copyright © 2019 TONY. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, ViewProtocol {
    var presenter: SecondPresenter!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createModule()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func createModule() {
        let presenter = SecondPresenter(view: self)
        self.presenter = presenter
    }

}

class ItemCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
}

extension SecondViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}

extension SecondViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter!.interactor.number()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! ItemCell
        
        cell.titleLabel.text = String(indexPath.row)
        
        return cell
    }
    
    
}
