//
//  MediaPost.swift
//  Birdui
//
//  Created by Asif Ahmed Jesi on 9/7/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import Foundation
import UIKit

struct MediaPost: Identifiable {
    let id = UUID()
    let textBody: String?
    let userName: String
    let timestamp: Date
    let uiImage: UIImage?
    var reaction: Reaction
}

enum Reaction: String, CaseIterable {
    case love = "😻"
    case funny = "😹"
    case unsure = "😿"
    case shock = "🙀"
}
