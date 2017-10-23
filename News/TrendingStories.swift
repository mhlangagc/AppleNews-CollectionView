//
//  TrendingStories.swift
//  News
//
//  Created by Gugulethu Mhlanga on 2017/05/17.
//  Copyright © 2017 Pace Fitness. All rights reserved.
//

import UIKit

class TrendingStories: UICollectionViewCell , UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate {
	
	let TrendingStoriesCellID = "TrendingStoriesCell"
	
	lazy var trendingStoryCollectionView: UICollectionView = {
		let flowLayout     = UICollectionViewFlowLayout()
		flowLayout.minimumInteritemSpacing  = 0.0
		flowLayout.minimumLineSpacing       = 35
		flowLayout.scrollDirection = .vertical
		let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
		collectionView.backgroundColor = .clear
		collectionView.delegate = self
		collectionView.dataSource = self
		collectionView.contentInset = UIEdgeInsets(top: 40.0, left: 0.0, bottom: 0.0, right: 0.0)
		collectionView.alwaysBounceVertical = false
		collectionView.alwaysBounceHorizontal = false
		collectionView.allowsSelection = true
		collectionView.isScrollEnabled = false
		collectionView.showsVerticalScrollIndicator = false
		collectionView.translatesAutoresizingMaskIntoConstraints = false
		return collectionView
	}()
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		self.configureCollectionView()
		self.setupGradient()
	}
	
	private func configureCollectionView() {
		
		addSubview(trendingStoryCollectionView)
		
		trendingStoryCollectionView.register(TrendingStoriesCell.self, forCellWithReuseIdentifier: TrendingStoriesCellID)
		trendingStoryCollectionView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
		trendingStoryCollectionView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
		trendingStoryCollectionView.topAnchor.constraint(equalTo: topAnchor).isActive = true
		trendingStoryCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
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

extension TrendingStories {
	
	func numberOfSections(in collectionView: UICollectionView) -> Int {
		return 1
	}
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return numberOfTendingStories
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let coverStoriesCell: TrendingStoriesCell = collectionView.dequeueReusableCell(withReuseIdentifier: self.TrendingStoriesCellID, for: indexPath) as! TrendingStoriesCell
		return coverStoriesCell
		
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: UIScreen.main.bounds.width - 40, height: CGFloat(trendingStoryDetailCellHeight))
	}
}
