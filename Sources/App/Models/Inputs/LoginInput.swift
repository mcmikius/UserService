//
//  File.swift
//  
//
//  Created by Mykhailo Bondarenko on 16.03.2020.
//

import Vapor

struct LoginInput: Content {
    let email: String
    let password: String
}
