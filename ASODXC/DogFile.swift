//
//  DogFile.swift
//  ASODXC
//
//  Created by Inger Montenegro on 6/4/18.
//  Copyright © 2018 Inger Montenegro. All rights reserved.
//

import Foundation
import RealmSwift

class Dog: Object {
    @objc dynamic var name = ""
    @objc dynamic var age = 0
}
