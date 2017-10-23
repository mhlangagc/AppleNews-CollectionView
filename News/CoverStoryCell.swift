//
//  CoverStoryCell.swift
//  News
//
//  Created by Gugulethu Mhlanga on 2017/05/16.
//  Copyright © 2017 Pace Fitness. All rights reserved.
//

import UIKit

class CoverStoryDetailCell: UICollectionViewCell {
	
	let headerImageView : UIImageView = {
		
		let imageView = UIImageView()
		imageView.contentMode = .scaleAspectFit
		imageView.backgroundColor = UIColor(red: 178.0/255.0, green: 178.0/255.0, blue: 178.0/255.0, alpha: 1.0)
		imageView.layer.cornerRadius = 4.0
		imageView.clipsToBounds = true
		imageView.translatesAutoresizingMaskIntoConstraints = false
		return imageView
		
	}()
	
	let newSourceImageView : UIImageView = {
		
		let imageView = UIImageView()
		imageView.contentMode = .scaleAspectFit
		imageView.image = #imageLiteral(resourceName: "newsSourceLogo")
		imageView.clipsToBounds = true
		imageView.translatesAutoresizingMaskIntoConstraints = false
		return imageView
		
	}()
	
	let headingLabel: UILabel = {
		let label = UILabel()
		label.text = "It’s 2017 - and  your Mac, iPad, iPhone can all be pwned by an e-book"
		label.textColor = UIColor.black
		textSpacing(label, spacing: -0.6)
		label.numberOfLines = 4
		label.font = UIFont(name: "SFUIDisplay-Bold", size: 18)!
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	let timeLabel: UILabel = {
		let label = UILabel()
		label.text = "6h ago"
		label.textColor = UIColor(red: 178.0/255.0, green: 178.0/255.0, blue: 178.0/255.0, alpha: 1.0)
		label.font = UIFont.systemFont(ofSize: 11, weight: UIFontWeightSemibold)
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	let shareImageView : UIImageView = {
		
		let imageView = UIImageView()
		imageView.contentMode = .scaleAspectFit
		imageView.image = #imageLiteral(resourceName: "share")
		imageView.clipsToBounds = true
		imageView.translatesAutoresizingMaskIntoConstraints = false
		return imageView
		
	}()
	
	func configureViews() {
		self.layer.cornerRadius = 4.0
		self.layer.masksToBounds = true
		backgroundColor = .white
		
		addSubview(headerImageView)
		addSubview(newSourceImageView)
		addSubview(headingLabel)
		addSubview(timeLabel)
		addSubview(shareImageView)
		
	}
	
	private func setupConstraints() {
		
		self.headerImageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
		self.headerImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
		self.headerImageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
		self.headerImageView.heightAnchor.constraint(equalToConstant: 118).isActive = true
		
		self.newSourceImageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
		self.newSourceImageView.topAnchor.constraint(equalTo: headerImageView.bottomAnchor, constant: 16.0).isActive = true
		self.newSourceImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
		self.newSourceImageView.heightAnchor.constraint(equalToConstant: 15).isActive = true
		
		self.headingLabel.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
		self.headingLabel.topAnchor.constraint(equalTo: newSourceImageView.bottomAnchor, constant: 12.0).isActive = true
		self.headingLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
		self.headingLabel.heightAnchor.constraint(equalToConstant: 95).isActive = true
		
		self.timeLabel.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
		self.timeLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
		self.timeLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
		self.timeLabel.heightAnchor.constraint(equalToConstant: 13).isActive = true
		
		self.shareImageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
		self.shareImageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
		self.shareImageView.widthAnchor.constraint(equalToConstant: 11).isActive = true
		self.shareImageView.heightAnchor.constraint(equalToConstant: 15).isActive = true
		
	}
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		self.configureViews()
		self.setupConstraints()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}

