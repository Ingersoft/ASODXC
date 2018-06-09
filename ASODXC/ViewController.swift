//
//  ViewController.swift
//  ASODXC
//
//  Created by Inger Montenegro on 6/4/18.
//  Copyright © 2018 Inger Montenegro. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    
    @IBOutlet weak var loginControl: UITextField!
    @IBOutlet weak var passwordControl: UITextField!
    
    override func viewDidLoad() {
        loginControl.text = "ingermanm@hotmail.com"
        passwordControl.text = "swift"
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func LoginAction(_ sender: Any) {
        let password: String
        let login: String
        
        login = loginControl.text!
        password = passwordControl.text!
        LoginModel.AddUser(login,password)
        didLogin(method: "\n", info: "Login : \(login)")
    }
    
    
    private func didLogin(method: String, info: String) {
        let message = "Successfully logged in:  \(method)" + info
        let alert = UIAlertController(title: "Welcome to ASODXC", message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}


