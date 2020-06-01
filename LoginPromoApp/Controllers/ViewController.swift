//
//  ViewController.swift
//  LoginPromoApp
//
//  Created by Кирилл Заборский on 30.05.2020.
//  Copyright © 2020 Кирилл Заборский. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var loginBotton: UIButton!
    
    let login = User.getLogin()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginBotton.layer.cornerRadius = 5
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func loginBottonAction() {
        if userNameTextField.text == login.first?.userName,
            passwordTextField.text == login.first?.password {
            performSegue(withIdentifier: "LoginSegue",
                         sender: login.first?.userName)
        } else {
            getAllert(title: "Неверный логин или пароль",
                      message: "Попробуйте снова")
        }
    }
    
    @IBAction func forgotUserNameBotton() {
        getAllert(title: "Такое не забывают!", message: "Имя пользователя: root")
    }
    
    @IBAction func forgotPasswordUserBotton() {
        getAllert(title: "Хмм... наверное", message: "Ваш пароль: password")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}

