//
//  Post.swift
//  XFeed
//
//  Created by ali cihan on 19.09.2024.
//

import Foundation

struct Tweet {
    var name: String = ""
    var userName: String = ""
    var text = ""
    var images = [String]()
    var retweets = 0
    var likes = 0
    var comments = 0
    var isBlue = false
    var isYellow = false
    var date = Date()
}
