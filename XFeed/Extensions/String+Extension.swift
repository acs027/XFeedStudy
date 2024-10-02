//
//  String+Extension.swift
//  XFeed
//
//  Created by ali cihan on 22.09.2024.
//

import Foundation
import UIKit


extension String {
    func attributedName() -> NSAttributedString {
        let nameAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: UIFont.preferredFont(forTextStyle: .headline).pointSize, weight: .bold), NSAttributedString.Key.foregroundColor: UIColor.black]
        let nameString = NSMutableAttributedString(string: self, attributes: nameAttributes)
        return nameString
    }
    
    func attributedUsername() -> NSAttributedString {
        let usernameAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: UIFont.preferredFont(forTextStyle: .body).pointSize), NSAttributedString.Key.foregroundColor: UIColor.darkGray]
        let username = "@\(self)"
        let usernameString = NSMutableAttributedString(string: username, attributes: usernameAttributes)
        return usernameString
    }
    
    func attributedDate() -> NSAttributedString {
        let textAttributes = [NSAttributedString.Key.font: UIFont.preferredFont(forTextStyle: .subheadline), NSAttributedString.Key.foregroundColor: UIColor.darkGray]
        let textString = NSMutableAttributedString(string: self, attributes: textAttributes)
        return textString
    }
}
