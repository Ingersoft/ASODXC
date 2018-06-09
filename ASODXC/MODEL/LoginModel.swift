//
//  LoginModel.swift
//  ASODXC
//
//  Created by Inger Montenegro on 6/5/18.
//  Copyright © 2018 Inger Montenegro. All rights reserved.
//

import Foundation
import RealmSwift

class LoginModel: Object{
    @objc dynamic var login = ""
    @objc dynamic var password = ""
    @objc dynamic var flag = false
    
    static func AddUser( _ loginParam: String, _ passwordParam: String) -> LoginModel {
        let newUser  = LoginModel()
        newUser.login = loginParam
        newUser.password = passwordParam
        newUser.flag = true
        print("name of User: \(newUser.login)")

        let realm = try! Realm()
        try! realm.write {
            realm.add(newUser)
        }
        return newUser
    }

}
