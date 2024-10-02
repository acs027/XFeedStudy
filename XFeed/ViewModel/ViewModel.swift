//
//  ViewModel.swift
//  XFeed
//
//  Created by ali cihan on 20.09.2024.
//

import Foundation
import Combine

class ViewModel {
    @Published var tweets: [Tweet]
    
    init() {
        self.tweets = [Tweet]()
        let mockData = MockData()
        tweets += mockData.mockTweets.sorted(by: { a, b in
            a.date > b.date
        })
    }
}
