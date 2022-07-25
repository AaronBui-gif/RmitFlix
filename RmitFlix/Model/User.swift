//
//  User.swift
//  RmitFlix
//
//  Created by Huy Bui Thanh on 25/07/2022.
//

import Foundation
import SwiftUI

struct User: Hashable, Codable, Identifiable {
    let id: Int
    let name: String
    let age: Int
    let description: String
    
    public var imageName: String
    var image: Image {
        Image(imageName)
    }
}
