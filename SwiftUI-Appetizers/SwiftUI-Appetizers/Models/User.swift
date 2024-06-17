//
//  User.swift
//  SwiftUI-Appetizers
//
//  Created by Daehoon Lee on 4/22/24.
//

import Foundation

struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
