//
//  NewsSectionHeaderView.swift
//  News
//
//  Created by Gugulethu Mhlanga on 2017/05/16.
//  Copyright © 2017 Pace Fitness. All rights reserved.
//

import UIKit

class NewsSectionHeaderView: UICollectionReusableView {
	
	let headingLabel: UILabel = {
		let label = UILabel()
		label.text = "top stories".uppercased()
		label.textColor = UIColor.red
		textSpacing(label, spacing: -0.8)
		label.font = UIFont(name: "SFUIDisplay-Black", size: 30)!
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		self.configureViews()
		self.setupConstraints()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	
	func configureViews() {
		addSubview(headingLabel)
		backgroundColor = .white
		
	}
	
	private func setupConstraints() {
		
		self.headingLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
		self.headingLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
		self.headingLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
		self.headingLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
		
	}


}


class NewsSectionFooterView: UICollectionReusableView {
	
	let lineView : UIView = {
		let view = UIView()
		view.backgroundColor = UIColor(red: 195.0/255.0, green: 195.0/255.0, blue: 195.0/255.0, alpha: 1.0)
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	
	let moreImageView : UIImageView = {
		
		let imageView = UIImageView()
		imageView.contentMode = .scaleAspectFit
		imageView.image = #imageLiteral(resourceName: "MORE")
		imageView.clipsToBounds = true
		imageView.translatesAutoresizingMaskIntoConstraints = false
		return imageView
		
	}()
	
	let headingLabel: UILabel = {
		let label = UILabel()
		label.text = "more top stories".uppercased()
		label.textColor = UIColor.red
		textSpacing(label, spacing: -0.2)
		label.textAlignment = .right
		label.font = UIFont.systemFont(ofSize: 12.0, weight: UIFontWeightBlack)
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		self.configureViews()
		self.setupConstraints()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	
	func configureViews() {
		addSubview(lineView)
		addSubview(moreImageView)
		addSubview(headingLabel)
		backgroundColor = .white
	}
	
	private func setupConstraints() {
		
		self.lineView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
		self.lineView.topAnchor.constraint(equalTo: topAnchor, constant: 15).isActive = true
		self.lineView.rightAnchor.constraint(equalTo: rightAnchor, constant:-20).isActive = true
		self.lineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
		
		self.moreImageView.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 15).isActive = true
		self.moreImageView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
		self.moreImageView.heightAnchor.constraint(equalToConstant: 8).isActive = true
		self.moreImageView.widthAnchor.constraint(equalToConstant: 5).isActive = true
		
		self.headingLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
		self.headingLabel.centerYAnchor.constraint(equalTo: moreImageView.centerYAnchor).isActive = true
		self.headingLabel.rightAnchor.constraint(equalTo: moreImageView.rightAnchor, constant: -10).isActive = true
		self.headingLabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
		
	}
	
	
}
