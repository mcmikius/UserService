//
//  File.swift
//  
//
//  Created by Mykhailo Bondarenko on 16.03.2020.
//


import Vapor

struct EditUserInput: Content {
    let firstname: String?
    let lastname: String?
}
