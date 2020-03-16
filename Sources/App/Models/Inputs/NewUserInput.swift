//
//  File.swift
//  
//
//  Created by Mykhailo Bondarenko on 16.03.2020.
//

import Vapor

struct NewUserInput: Content {
    let firstname: String?
    let lastname: String?
    let email: String
    let password: String
}
