//
//  Int+Extension.swift
//  XFeed
//
//  Created by ali cihan on 22.09.2024.
//

import Foundation
import UIKit


extension Int {
    func attributedInt() -> NSAttributedString {
        let intAttributes = [NSAttributedString.Key.font: UIFont.preferredFont(forTextStyle: .footnote), NSAttributedString.Key.foregroundColor: UIColor.darkGray]
        
        if self > 10000 {
            let formattedNumber = Double(self) / 1000.0
            let intString = NSMutableAttributedString(string: String(format: "%.1fK", formattedNumber), attributes: intAttributes)
            return intString
        } else if self > 1000 {
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            formatter.locale = Locale(identifier: "en_GB")
            let numberString = formatter.string(from: NSNumber(value: self))!
            let intString = NSMutableAttributedString(string: numberString, attributes: intAttributes)
            return intString
        }
        let intString = NSMutableAttributedString(string: "\(self)", attributes: intAttributes)
        return intString
    }
}
