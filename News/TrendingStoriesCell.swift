//
//  TrendingStoriesCell.swift
//  News
//
//  Created by Gugulethu Mhlanga on 2017/05/17.
//  Copyright © 2017 Pace Fitness. All rights reserved.
//

import UIKit

class TrendingStoriesCell: UICollectionViewCell {
	
	let circleNumberView : UIView = {
		let view = UIView()
		view.backgroundColor = UIColor.white
		view.layer.borderColor = UIColor(red: 245.0/255.0, green: 166.0/255.0, blue: 35.0/255.0, alpha: 1.0).cgColor
		view.layer.borderWidth = 1.0
		view.layer.cornerRadius = 43.0 * 0.5
		view.layer.masksToBounds = true
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	
	let numberLabel: UILabel = {
		let label = UILabel()
		label.text = "1"
		label.textAlignment = .center
		label.textColor = UIColor(red: 245.0/255.0, green: 166.0/255.0, blue: 35.0/255.0, alpha: 1.0)
		label.font = UIFont(name: "SFUIDisplay-Black", size: 18)!
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
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
		label.text = "Gowdy taks himself out of running for FBI director post."
		label.textColor = UIColor.black
		textSpacing(label, spacing: -0.6)
		label.numberOfLines = 2
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
		backgroundColor = .clear
		
		addSubview(circleNumberView)
		circleNumberView.addSubview(numberLabel)
		addSubview(newSourceImageView)
		addSubview(headingLabel)
		addSubview(timeLabel)
		addSubview(shareImageView)
		
	}
	
	private func setupConstraints() {
		
		self.circleNumberView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
		self.circleNumberView.topAnchor.constraint(equalTo: topAnchor).isActive = true
		self.circleNumberView.widthAnchor.constraint(equalToConstant: 43).isActive = true
		self.circleNumberView.heightAnchor.constraint(equalToConstant: 43).isActive = true
		
		self.numberLabel.leftAnchor.constraint(equalTo: circleNumberView.leftAnchor).isActive = true
		self.numberLabel.topAnchor.constraint(equalTo: circleNumberView.topAnchor).isActive = true
		self.numberLabel.rightAnchor.constraint(equalTo: circleNumberView.rightAnchor).isActive = true
		self.numberLabel.bottomAnchor.constraint(equalTo: circleNumberView.bottomAnchor).isActive = true
		
		self.newSourceImageView.leftAnchor.constraint(equalTo: circleNumberView.rightAnchor, constant: 20.0).isActive = true
		self.newSourceImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
		self.newSourceImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
		self.newSourceImageView.heightAnchor.constraint(equalToConstant: 15).isActive = true
		
		self.headingLabel.leftAnchor.constraint(equalTo: circleNumberView.rightAnchor, constant: 20.0).isActive = true
		self.headingLabel.topAnchor.constraint(equalTo: newSourceImageView.bottomAnchor, constant: 8.0).isActive = true
		self.headingLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
		self.headingLabel.heightAnchor.constraint(equalToConstant: 45).isActive = true
		
		self.timeLabel.leftAnchor.constraint(equalTo: circleNumberView.rightAnchor, constant: 20.0).isActive = true
		self.timeLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
		self.timeLabel.widthAnchor.constraint(equalToConstant: 40.0).isActive = true
		self.timeLabel.heightAnchor.constraint(equalToConstant: 13.0).isActive = true
		
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
