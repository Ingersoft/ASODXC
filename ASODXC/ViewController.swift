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
    

    
    override func viewDidLoad() {
       
        let newUser  = User()
        newUser.login = "Ingermanm@hotmail.com"
        newUser.password = "hola"
        print("name of User: \(newUser.login)")
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


