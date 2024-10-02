//
//  MockData.swift
//  XFeed
//
//  Created by ali cihan on 20.09.2024.
//

import Foundation



class MockData {
    let mockTweets: [Tweet] = [
        Tweet(
            name: "John Doe",
            userName: "johndoe",
            text: "Exploring Swift's new features!",
            images: [],
            retweets: 15,
            likes: 12300,
            comments: 10,
            isBlue: true,
            isYellow: false,
            date: Date(timeIntervalSinceNow: -3600) // 1 hour ago
        ),
        Tweet(
            name: "Jane Smith",
            userName: "janesmith",
            text: "Just had an amazing coffee ☕️ #cafelife",
            images: [],
            retweets: 5,
            likes: 89,
            comments: 12,
            isBlue: false,
            isYellow: true,
            date: Date(timeIntervalSinceNow: -7200) // 2 hours ago
        ),
        Tweet(
            name: "Tech Guru",
            userName: "techguru",
            text: "The future of AI is incredibly bright!, The future of AI is incredibly bright!",
            images: [],
            retweets: 250,
            likes: 1001,
            comments: 95,
            isBlue: false,
            isYellow: false,
            date: Date(timeIntervalSinceNow: -86400) // 1 day ago
        ),
        Tweet(
            name: "Emily Rose",
            userName: "emilyrose",
            text: "Just finished a 5k run! 🏃‍♀️ #fitnessjourney",
            images: [],
            retweets: 8,
            likes: 150,
            comments: 25,
            isBlue: true,
            isYellow: false,
            date: Date(timeIntervalSinceNow: -1800) // 30 minutes ago
        ),
        Tweet(
            name: "Nature Lover",
            userName: "nature_lover",
            text: "The mountains were breathtaking today 🌄 #hiking",
            images: ["mountain"],
            retweets: 20,
            likes: 350,
            comments: 45,
            isBlue: false,
            isYellow: true,
            date: Date(timeIntervalSinceNow: -172800) // 2 days ago
        )
    ]

}
