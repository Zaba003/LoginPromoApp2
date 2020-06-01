//
//  ExtensionViewController.swift
//  LoginPromoApp
//
//  Created by Кирилл Заборский on 31.05.2020.
//  Copyright © 2020 Кирилл Заборский. All rights reserved.
//

import UIKit

extension ViewController {
    
    // Mark - Скрытие клавиатуры
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    
    func getAllert(title: String, message: String) {
        let alertController = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let doneAction = UIAlertAction(
            title: "OK",
            style: .default
        ) { _ in }
        alertController.addAction(doneAction)
        present(alertController, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "LoginSegue" {
            let tabBarController = segue.destination as! UITabBarController
            let destinationVC = tabBarController.viewControllers?.first as! HomeViewController
            destinationVC.userName = sender as? String
        }
    }
    
}
