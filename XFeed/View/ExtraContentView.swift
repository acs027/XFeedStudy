//
//  ExtraContentView.swift
//  XFeed
//
//  Created by ali cihan on 29.09.2024.
//

import UIKit
import SnapKit

class ExtraContentView: UIView {
    
    private let extraContentView: UIStackView = {
        let extraContent = UIStackView()
        extraContent.backgroundColor = .lightGray
        extraContent.distribution = .fillEqually
        extraContent.axis = .horizontal
        extraContent.spacing = 1
        extraContent.layer.cornerRadius = 20
        return extraContent
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 20
        self.clipsToBounds = true
        
        addSubview(extraContentView)
        configureConstraints()
    }
    
    func loadImages(images: [String]) {
      
        for image in images {
            let image1 = UIImageView(image: UIImage(named: image))
            image1.translatesAutoresizingMaskIntoConstraints = false
            image1.clipsToBounds = true
            image1.contentMode = .scaleAspectFill
            extraContentView.addArrangedSubview(image1)
        }
        
        let extraContentHeight = (UIScreen.main.bounds.size.width - 70) * 9/16
        self.snp.updateConstraints { make in
            make.height.equalTo(extraContentHeight)
        }
       
    }
    
    private func configureConstraints() {
        
        extraContentView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        self.snp.makeConstraints { make in
            make.height.equalTo(0)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("feed cell error")
    }
    
}
