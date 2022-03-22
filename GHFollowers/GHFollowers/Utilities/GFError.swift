//
//  GFError.swift
//  GHFollowers
//
//  Created by James Lea on 3/22/22.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername    = "This username createed an invalid request. Please try again"
    case unableToComplete   = "Unable to complete your request. Please check your internet connection"
    case invalidResponse    = "Invalid response from server. Please try again."
    case invalidData        = "Data received from the server was invalid. Please try again."
}
