//
//  APError.swift
//  SwiftUI-Appetizers
//
//  Created by Daehoon Lee on 4/16/24.
//

import Foundation

enum APError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}
