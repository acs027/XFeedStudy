//
//  Date+Extension.swift
//  XFeed
//
//  Created by ali cihan on 22.09.2024.
//

import Foundation

extension Date {
    func relativeDate() -> String {
        let now = Date()
        let timeDifference = abs(self.timeIntervalSince(now))
        
        // 24 hours in seconds
        let oneDayInSeconds: TimeInterval = 24 * 60 * 60
        
        // If the time difference is within 24 hours, show relative time
        if timeDifference < oneDayInSeconds {
            let relativeDateFormatter = RelativeDateTimeFormatter()
            relativeDateFormatter.unitsStyle = .abbreviated
            relativeDateFormatter.dateTimeStyle = .numeric
            relativeDateFormatter.locale = Locale(identifier: "en_US_POSIX")
            let relativeDate = relativeDateFormatter.localizedString(for: self, relativeTo: now)
            let cleanedRelativeDate = relativeDate.replacingOccurrences(of: " ago", with: "")
            
            return cleanedRelativeDate
        } else {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "d MMM"
            dateFormatter.locale = Locale(identifier: "en_US_POSIX")
            
            return dateFormatter.string(from: self)
        }
    }
}
