//
//  User.swift
//  final hack
//
//  Created by Andrew Jae Hahn on 5/5/22.
//

import Foundation

//{"session_token": "eb750b1a297cf15fb83dfcd64c3a316222cdd81c", "session_expiration": "2022-05-07 03:22:45.621796",
//"update_token": "f4d360555fc6775740278fece390600c068f22b4"}

struct User : Codable {
    let sessionToken: String
    let sessionExpiration: String
    let updateToken: String
    
    init(sessionToken: String, sessionExpiration: String, updateToken: String) {
        self.sessionToken = sessionToken
        self.sessionExpiration = sessionExpiration
        self.updateToken = updateToken
    }
}
