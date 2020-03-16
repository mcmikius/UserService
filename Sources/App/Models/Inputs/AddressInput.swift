//
//  File.swift
//  
//
//  Created by Mykhailo Bondarenko on 16.03.2020.
//

import Vapor

struct AddressInput: Content {
    let street: String
    let city: String
    let zip: String
}
