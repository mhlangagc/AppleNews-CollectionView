//
//  TrendingInNewsCell.swift
//  News
//
//  Created by Gugulethu Mhlanga on 2017/05/17.
//  Copyright © 2017 Pace Fitness. All rights reserved.
//

import UIKit

class TrendingInNews: UICollectionViewCell , UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate {
	
	let headingLabel: UILabel = {
		let label = UILabel()
		label.text = "Trending in News"
		label.textColor = UIColor.black
		textSpacing(label, spacing: 0.35)
		label.textAlignment = .center
		label.font = UIFont(name: "SFUIDisplay-Bold", size: 20)!
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	let TrendingInNewsCellID = "TrendingInNewsCellID"
	
	lazy var trendingInNewsCollectionView: UICollectionView = {
		let flowLayout     = UICollectionViewFlowLayout()
		flowLayout.minimumInteritemSpacing  = 1.0
		flowLayout.minimumLineSpacing       = 1.0
		flowLayout.scrollDirection = .horizontal
		let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
		collectionView.backgroundColor = .clear
		collectionView.delegate = self
		collectionView.dataSource = self
		collectionView.contentInset = UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0)
		collectionView.alwaysBounceVertical = false
		collectionView.alwaysBounceHorizontal = false
		collectionView.isPagingEnabled = true
		collectionView.allowsSelection = true
		collectionView.isScrollEnabled = true
		collectionView.showsHorizontalScrollIndicator = false
		collectionView.translatesAutoresizingMaskIntoConstraints = false
		return collectionView
	}()
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		self.configureCollectionView()
		self.setupGradient()
	}
	
	private func configureCollectionView() {
		
		addSubview(headingLabel)
		addSubview(trendingInNewsCollectionView)
		
		headingLabel.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
		headingLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
		headingLabel.topAnchor.constraint(equalTo: topAnchor, constant: 53).isActive = true
		headingLabel.heightAnchor.constraint(equalToConstant: 25.0).isActive = true
		
		trendingInNewsCollectionView.register(TrendingInNewsCell.self, forCellWithReuseIdentifier: TrendingInNewsCellID)
		trendingInNewsCollectionView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
		trendingInNewsCollectionView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
		trendingInNewsCollectionView.topAnchor.constraint(equalTo: headingLabel.bottomAnchor, constant: 25).isActive = true
		trendingInNewsCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -55).isActive = true
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	private func setupGradient() {
		let myGradientLayer = CAGradientLayer()
		myGradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
		myGradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
		
		let colors2 : [CGColor] = [UIColor.white.cgColor, UIColor(red: 246.0/275.0, green: 246.0/275.0, blue: 240.0/275.0, alpha: 1.0).cgColor, UIColor(red: 240.0/275.0, green: 240.0/275.0, blue: 240.0/275.0, alpha: 1.0).cgColor]
		let location2 = [0.0, 0.5, 1.0]
		
		myGradientLayer.colors = colors2
		myGradientLayer.isOpaque = false
		myGradientLayer.locations = location2 as [NSNumber]?
		self.layer.addSublayer(myGradientLayer)
	}
	
	
}

extension TrendingInNews {
	
	func numberOfSections(in collectionView: UICollectionView) -> Int {
		return 1
	}
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 3
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let tCell: TrendingInNewsCell = collectionView.dequeueReusableCell(withReuseIdentifier: self.TrendingInNewsCellID, for: indexPath) as! TrendingInNewsCell
		return tCell
		
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: UIScreen.main.bounds.width, height: 141)
	}
}

