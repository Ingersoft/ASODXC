//
//  Pet.swift
//  ASODXC
//
//  Created by Inger Montenegro on 6/4/18.
//  Copyright © 2018 Inger Montenegro. All rights reserved.
//

import Foundation
import RealmSwift

class Pet: Object {
    @objc dynamic var petName = ""
    @objc dynamic var owner: User?
   
}
