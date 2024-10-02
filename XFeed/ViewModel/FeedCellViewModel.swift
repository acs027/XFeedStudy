//
//  FeedCellViewModel.swift
//  XFeed
//
//  Created by ali cihan on 2.10.2024.
//

import Foundation
import UIKit

class FeedCellViewModel {
    private let tweet: Tweet
    
    init(tweet: Tweet) {
        self.tweet = tweet
    }
    
    var profileIconImage: UIImage? {
        return UIImage(named: tweet.userName)
    }
    
    var nameAttributedString: NSAttributedString {
        return tweet.name.attributedName()
    }
    
    var usernameAttributedString: NSAttributedString {
        return tweet.userName.attributedUsername()
    }
    
    var badgeTintColor: UIColor {
        return tweet.isBlue ? .systemBlue : .systemYellow
    }
    
    var badgeIsHidden: Bool {
        return !(tweet.isBlue || tweet.isYellow)
    }
    
    var profileCornerRadius: CGFloat {
        return tweet.isYellow ? 5 : 25
    }
    
    var contentText: String {
        return tweet.text
    }
    
    var relativeTimeText: NSAttributedString {
        return ("• " + tweet.date.relativeDate()).attributedDate()
    }
    
    var commentsAttributedString: NSAttributedString {
        return tweet.comments.attributedInt()
    }
    
    var likesAttributedString: NSAttributedString {
        return tweet.likes.attributedInt()
    }
    
    var retweetsAttributedString: NSAttributedString {
        return tweet.retweets.attributedInt()
    }
    
    var viewsAttributedString: NSAttributedString {
        return tweet.likes.attributedInt()
    }
    
    var images: [String] {
        return tweet.images
    }
}
