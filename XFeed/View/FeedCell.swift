//
//  FeedCell.swift
//  XFeed
//
//  Created by ali cihan on 20.09.2024.
//

import UIKit
import SnapKit

class FeedCell: UITableViewCell {
    static var identifier = "feedCell"
    var post: Tweet?
    private var viewModel: FeedCellViewModel?
    
    let buttonSpace = 75
    
    private let profileIcon: UIImageView = {
        let profileIcon = UIImageView(image: UIImage(systemName: "person.circle.fill"))
        profileIcon.contentMode = .scaleAspectFill
        profileIcon.clipsToBounds = true
        profileIcon.layer.masksToBounds = true
        return profileIcon
    }()
    
    private let nameLabel: UILabel = {
        let nameLabel = UILabel()
        return nameLabel
    }()
    
    private let usernameLabel: UILabel = {
        let username = UILabel()
        return username
    }()
    
    private let badgeView: UIImageView = {
        let badge = UIImageView(image: UIImage(systemName: "checkmark.seal.fill"))
        return badge
    }()
    
    private let relativeTimeLabel: UILabel = {
        let relativeTime = UILabel()
        return relativeTime
    }()
    
    private let dotMenuView: UIImageView = {
        let dotMenu = UIImageView(image: UIImage(systemName: "ellipsis"))
        return dotMenu
    }()
    
    private let contentLabel: UILabel = {
        let textLabel = UILabel()
        textLabel.numberOfLines = 0
        textLabel.lineBreakMode = .byWordWrapping
        return textLabel
    }()
    
    private let extraContentView: ExtraContentView = {
        let extraView = ExtraContentView()
        return extraView
    }()
    
    private let commentsIcon: UIImageView = {
        let commentsIcon = UIImageView(image: UIImage(systemName: "bubble.left"))
        commentsIcon.tintColor = .systemGray
        return commentsIcon
    }()
    
    private let commentsLabel: UILabel = {
        let commentsLabel = UILabel()
        return commentsLabel
    }()
    
    private let retweetsIcon: UIImageView = {
        let retweetsIcon = UIImageView(image: UIImage(systemName: "repeat"))
        retweetsIcon.tintColor = .systemGray
        return retweetsIcon
    }()
    
    private let retweetsLabel: UILabel = {
        let retweetsLabel = UILabel()
        return retweetsLabel
    }()
    
    private let likesIcon: UIImageView = {
        let likesIcon = UIImageView(image: UIImage(systemName: "heart"))
        likesIcon.tintColor = .systemGray
        return likesIcon
    }()
    
    private let likesLabel: UILabel = {
        let likesLabel = UILabel()
        return likesLabel
    }()
    
    private let viewsIcon: UIImageView = {
        let viewsIcon = UIImageView(image: UIImage(systemName: "chart.bar.xaxis"))
        viewsIcon.tintColor = .systemGray
        return viewsIcon
    }()
    
    private let viewsLabel: UILabel = {
        let viewsLabel = UILabel()
        return viewsLabel
    }()
    
    private let shareIcon: UIImageView = {
        let shareIcon = UIImageView(image: UIImage(systemName: "square.and.arrow.up"))
        shareIcon.tintColor = .systemGray
        return shareIcon
    }()
    
    private let bottomDivider: UIView = {
        let bottomDivider = UIView()
        bottomDivider.backgroundColor = .systemGray
        return bottomDivider
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(profileIcon)
        contentView.addSubview(nameLabel)
        contentView.addSubview(usernameLabel)
        contentView.addSubview(badgeView)
        contentView.addSubview(relativeTimeLabel)
        contentView.addSubview(dotMenuView)
        contentView.addSubview(contentLabel)
        contentView.addSubview(extraContentView)
        contentView.addSubview(commentsIcon)
        contentView.addSubview(commentsLabel)
        contentView.addSubview(retweetsIcon)
        contentView.addSubview(retweetsLabel)
        contentView.addSubview(likesIcon)
        contentView.addSubview(likesLabel)
        contentView.addSubview(viewsIcon)
        contentView.addSubview(viewsLabel)
        contentView.addSubview(shareIcon)
        contentView.addSubview(bottomDivider)
        configureConstraints()
    }
    
    private func configureConstraints() {
        profileIcon.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.leading.equalToSuperview().offset(5)
            make.width.height.equalTo(50)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.leading.equalTo(profileIcon.snp.trailing).offset(5)
        }
        
        badgeView.snp.makeConstraints { make in
            make.centerY.equalTo(nameLabel.snp.centerY)
            make.leading.equalTo(nameLabel.snp.trailing).offset(3)
            make.width.height.equalTo(20)
        }
        
        usernameLabel.snp.makeConstraints { make in
            make.centerY.equalTo(nameLabel.snp.centerY)
            make.leading.equalTo(badgeView.snp.trailing).offset(3)
            make.width.lessThanOrEqualTo(100)
        }
        
        relativeTimeLabel.snp.makeConstraints { make in
            make.centerY.equalTo(usernameLabel.snp.centerY)
            make.leading.equalTo(usernameLabel.snp.trailing)
            make.trailing.lessThanOrEqualTo(dotMenuView.snp.leading).offset(-3)
        }
        
        dotMenuView.snp.makeConstraints { make in
            make.centerY.equalTo(relativeTimeLabel.snp.centerY)
            make.trailing.equalToSuperview().offset(-5)
        }
        
        contentLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(5)
            make.leading.equalTo(nameLabel.snp.leading)
            make.trailing.equalToSuperview().offset(-5)
        }
        
        extraContentView.snp.makeConstraints { make in
            make.top.equalTo(contentLabel.snp.bottom).offset(5)
            make.leading.equalTo(contentLabel.snp.leading)
            make.trailing.equalTo(contentLabel.snp.trailing)
        }
        
        commentsIcon.snp.makeConstraints { make in
            make.top.equalTo(extraContentView.snp.bottom).offset(5)
            make.leading.equalTo(contentLabel.snp.leading)
        }
        
        commentsLabel.snp.makeConstraints { make in
            make.centerY.equalTo(commentsIcon.snp.centerY)
            make.leading.equalTo(commentsIcon.snp.trailing).offset(10)
        }
        
        retweetsIcon.snp.makeConstraints { make in
            make.centerY.equalTo(commentsIcon.snp.centerY)
            make.leading.equalTo(commentsIcon.snp.leading).offset(buttonSpace)
        }
        
        retweetsLabel.snp.makeConstraints { make in
            make.centerY.equalTo(retweetsIcon.snp.centerY)
            make.leading.equalTo(retweetsIcon.snp.trailing).offset(10)
        }
        
        likesIcon.snp.makeConstraints { make in
            make.centerY.equalTo(commentsIcon.snp.centerY)
            make.leading.equalTo(retweetsIcon.snp.leading).offset(buttonSpace)
        }
        
        likesLabel.snp.makeConstraints { make in
            make.centerY.equalTo(commentsIcon.snp.centerY)
            make.leading.equalTo(likesIcon.snp.trailing).offset(10)
        }
        
        viewsIcon.snp.makeConstraints { make in
            make.centerY.equalTo(commentsIcon.snp.centerY)
            make.leading.equalTo(likesIcon.snp.leading).offset(buttonSpace)
        }
        
        viewsLabel.snp.makeConstraints { make in
            make.centerY.equalTo(commentsIcon.snp.centerY)
            make.leading.equalTo(viewsIcon.snp.trailing).offset(10)
        }
        
        shareIcon.snp.makeConstraints { make in
            make.bottom.equalTo(commentsIcon.snp.bottom)
            make.trailing.equalToSuperview().offset(-5)
        }
        
        bottomDivider.snp.makeConstraints { make in
            make.top.equalTo(commentsIcon.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(1)
            make.bottom.equalToSuperview()
        }
    }
    
    func configure(with viewModel: FeedCellViewModel) {
        self.viewModel = viewModel
        contentLabel.text = viewModel.contentText
        badgeView.tintColor = viewModel.badgeTintColor
        badgeView.isHidden = viewModel.badgeIsHidden
        profileIcon.image = viewModel.profileIconImage
        profileIcon.layer.cornerRadius = viewModel.profileCornerRadius
        
        badgeView.snp.updateConstraints { make in
            make.size.equalTo(badgeView.isHidden ? 0 : 20)
        }
        
        if viewModel.images.count > 0 {
            extraContentView.loadImages(images: viewModel.images)
        }
        
        nameLabel.attributedText = viewModel.nameAttributedString
        usernameLabel.attributedText = viewModel.usernameAttributedString
        commentsLabel.attributedText = viewModel.commentsAttributedString
        likesLabel.attributedText = viewModel.likesAttributedString
        retweetsLabel.attributedText = viewModel.retweetsAttributedString
        viewsLabel.attributedText = viewModel.viewsAttributedString
        relativeTimeLabel.attributedText = viewModel.relativeTimeText
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("feed cell error")
    }
    
}
