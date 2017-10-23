//
//  TrendingInNewsCell.swift
//  News
//
//  Created by Gugulethu Mhlanga on 2017/05/17.
//  Copyright © 2017 Pace Fitness. All rights reserved.
//

import UIKit

class TrendingInNewsCell: UICollectionViewCell {
	
	let backgroundCellView_1 : UIView = {
		let view = UIView()
		view.backgroundColor = UIColor(red: 178.0/255.0, green: 178.0/255.0, blue: 178.0/255.0, alpha: 1.0)
		view.layer.cornerRadius = 4.0
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	
	let backgroundCellView_2 : UIView = {
		let view = UIView()
		view.backgroundColor = UIColor(red: 178.0/255.0, green: 178.0/255.0, blue: 178.0/255.0, alpha: 1.0)
		view.layer.cornerRadius = 4.0
		view.layer.masksToBounds = true
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	
	let backgroundCellView_3 : UIView = {
		let view = UIView()
		view.backgroundColor = UIColor(red: 178.0/255.0, green: 178.0/255.0, blue: 178.0/255.0, alpha: 1.0)
		view.layer.cornerRadius = 4.0
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	
	func configureViews() {
		
		addSubview(backgroundCellView_1)
		addSubview(backgroundCellView_2)
		addSubview(backgroundCellView_3)
		
	}
	
	private func setupConstraints() {
		
		self.backgroundCellView_2.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
		self.backgroundCellView_2.topAnchor.constraint(equalTo: topAnchor).isActive = true
		self.backgroundCellView_2.widthAnchor.constraint(equalToConstant: 107).isActive = true
		self.backgroundCellView_2.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
		
		self.backgroundCellView_1.rightAnchor.constraint(equalTo: backgroundCellView_2.leftAnchor, constant: -7).isActive = true
		self.backgroundCellView_1.topAnchor.constraint(equalTo: topAnchor).isActive = true
		self.backgroundCellView_1.widthAnchor.constraint(equalToConstant: 107).isActive = true
		self.backgroundCellView_1.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
		
		self.backgroundCellView_3.leftAnchor.constraint(equalTo: backgroundCellView_2.rightAnchor, constant: 7).isActive = true
		self.backgroundCellView_3.topAnchor.constraint(equalTo: topAnchor).isActive = true
		self.backgroundCellView_3.widthAnchor.constraint(equalToConstant: 107).isActive = true
		self.backgroundCellView_3.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
		
	}
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		backgroundColor = .clear
		self.configureViews()
		self.setupConstraints()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}

