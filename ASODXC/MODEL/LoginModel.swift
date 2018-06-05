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
}
