//
//  File.swift
//  
//
//  Created by Mykhailo Bondarenko on 16.03.2020.
//

import Vapor

struct RefreshTokenResponse: Content {
    let status = "success"
    let accessToken: String
}
