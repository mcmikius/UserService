//
//  File.swift
//  
//
//  Created by Mykhailo Bondarenko on 16.03.2020.
//

import Vapor

struct UserSuccessResponse: Content {
    let status: String = "success"
    let user: UserResponse
}
