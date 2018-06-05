//
//  ViewController.swift
//  ASODXC
//
//  Created by Inger Montenegro on 6/4/18.
//  Copyright © 2018 Inger Montenegro. All rights reserved.
//

import UIKit
import RealmSwift
import Realm

class ViewController: UIViewController {

    
    @IBOutlet weak var loginControl: UITextField!
    @IBOutlet weak var passwordControl: UITextField!
    
    override func viewDidLoad() {

        
        
        let newUser  = LoginModel()
        newUser.login = "Ingerman"
        newUser.password = "Hola"
        print("name of User: \(newUser.login)")
        
        let realm = try! Realm()
        try! realm.write {
            realm.add(newUser)
        }
                super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func EnterLogin(_ sender: Any) {

    }
}


