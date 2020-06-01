//
//  HomeViewController.swift
//  LoginPromoApp
//
//  Created by Кирилл Заборский on 31.05.2020.
//  Copyright © 2020 Кирилл Заборский. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet var userLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userLabel.text = "Привет, " + userName
    }
    
    @IBAction func logOutAction() {}
    
}
