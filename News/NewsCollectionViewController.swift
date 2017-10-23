//
//  ViewController.swift
//  News
//
//  Created by Gugulethu Mhlanga on 2017/05/15.
//  Copyright © 2017 Pace Fitness. All rights reserved.
//

import UIKit

let coverStoryCellHeight: CGFloat = 285.0
let coverStoryDetailCellHeight  = 120
let trendingStoryDetailCellHeight  = 100
let numberOfCoverStories = 2
let numberOfCoverDetailStories = 3
let numberOfTendingStories = 4

class NewsCollectionViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate {
	
	let mainTopStoryCellID = "mainTopStoryCellID"
	let coverStoryCellID = "coverStoryCellID"
	let coverStoryDetailID = "storyDetailID"
	let TrendingStoriesCellID = "TrendingStoriesCellID"
	let NewsSectionHeaderViewID = "NewsSectionHeaderViewID"
	let NewsSectionFooterViewID = "NewsSectionFooterViewID"
	let TrendingInNewsID = "TrendingInNewsID"
	
	lazy var newsCollectionView: UICollectionView = {
		let flowLayout     = UICollectionViewFlowLayout()
		flowLayout.minimumInteritemSpacing  = 15
		flowLayout.minimumLineSpacing       = 20
		flowLayout.scrollDirection = .vertical
		flowLayout.headerReferenceSize = CGSize(width: UIScreen.main.bounds.width, height: 70)
		flowLayout.footerReferenceSize = CGSize(width: UIScreen.main.bounds.width, height: 50)
		let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
		collectionView.backgroundColor = .white
		collectionView.delegate = self
		collectionView.dataSource = self
		collectionView.contentInset = UIEdgeInsets(top: 35.0, left: 0.0, bottom: 25.0, right: 0.0)
		collectionView.alwaysBounceVertical = true
		collectionView.alwaysBounceHorizontal = false
		collectionView.allowsSelection = true
		collectionView.showsVerticalScrollIndicator = false
		collectionView.translatesAutoresizingMaskIntoConstraints = false
		return collectionView
	}()

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = UIColor.white
		UIApplication.shared.statusBarView?.backgroundColor = UIColor.white
		self.configureCollectionView()
		
	}

	private func configureCollectionView() {
		view.addSubview(newsCollectionView)
		
		newsCollectionView.register(MainTopStoryCell.self, forCellWithReuseIdentifier: mainTopStoryCellID)
		newsCollectionView.register(CoverStory.self, forCellWithReuseIdentifier: coverStoryCellID)
		newsCollectionView.register(CoverStoryDetail.self, forCellWithReuseIdentifier: coverStoryDetailID)
		newsCollectionView.register(NewsSectionHeaderView.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: NewsSectionHeaderViewID)
		newsCollectionView.register(NewsSectionFooterView.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: NewsSectionFooterViewID)
		newsCollectionView.register(TrendingStories.self, forCellWithReuseIdentifier: TrendingStoriesCellID)
		newsCollectionView.register(TrendingInNews.self, forCellWithReuseIdentifier: TrendingInNewsID)
		
		
		newsCollectionView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
		newsCollectionView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
		newsCollectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
		newsCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
	}


}

extension NewsCollectionViewController {
	
	func collectionView(_ collectionView: UICollectionView,
	                    viewForSupplementaryElementOfKind kind: String,
	                    at indexPath: IndexPath) -> UICollectionReusableView {
		
		switch kind {
		case UICollectionElementKindSectionHeader:
			let headerView : NewsSectionHeaderView = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
			                                                                 withReuseIdentifier: NewsSectionHeaderViewID,
			                                                                 for: indexPath) as! NewsSectionHeaderView
			//headerView.textLabel.text = shops[indexPath.section]["shop_name"] as? String
			return headerView
			
		case UICollectionElementKindSectionFooter:
			
			let headerView : NewsSectionFooterView = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
			                                                                                         withReuseIdentifier: NewsSectionFooterViewID,
			                                                                                         for: indexPath) as! NewsSectionFooterView
			//headerView.textLabel.text = shops[indexPath.section]["shop_name"] as? String
			
			return headerView
		default:
			assert(false, "Unexpected element kind")
		}
	}
	
	func numberOfSections(in collectionView: UICollectionView) -> Int {
		return 3
	}
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		switch section {
		case 0:
			return 3
		case 1:
			return 1
		default:
			return 1
		}
		
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		if indexPath.section == 0 {
			
			switch indexPath.item {
			case 0:
				let topStoryCell : MainTopStoryCell = collectionView.dequeueReusableCell(withReuseIdentifier: self.mainTopStoryCellID, for: indexPath) as! MainTopStoryCell
				return topStoryCell
			case 1:
				let coverStoryCell: CoverStory = collectionView.dequeueReusableCell(withReuseIdentifier: self.coverStoryCellID, for: indexPath) as! CoverStory
				return coverStoryCell
			default:
				let coverStoryCell: CoverStoryDetail = collectionView.dequeueReusableCell(withReuseIdentifier: self.coverStoryDetailID, for: indexPath) as! CoverStoryDetail
				return coverStoryCell
			}
		} else if indexPath.section == 1 {
			
			let coverStoryCell: TrendingStories = collectionView.dequeueReusableCell(withReuseIdentifier: self.TrendingStoriesCellID, for: indexPath) as! TrendingStories
			return coverStoryCell
			
		} else {
			
			let topStoryCell : TrendingInNews = collectionView.dequeueReusableCell(withReuseIdentifier: self.TrendingInNewsID, for: indexPath) as! TrendingInNews
			return topStoryCell
			
		}
		
		
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		
		if indexPath.section == 0 {
			switch indexPath.item {
			case 0:
				return CGSize(width: UIScreen.main.bounds.width - 40.0, height: CGFloat(480))
			case 1:
				return CGSize(width: UIScreen.main.bounds.width - 40.0, height: CGFloat(coverStoryCellHeight))
			default:
				return CGSize(width: UIScreen.main.bounds.width - 40.0, height: CGFloat((coverStoryDetailCellHeight + 20) * numberOfCoverDetailStories))
			}
			
		} else if indexPath.section == 1 {
			
			return CGSize(width: UIScreen.main.bounds.width - 40.0, height: CGFloat(35 + ((trendingStoryDetailCellHeight + 35) * numberOfTendingStories)))
			
		} else {
			
			return CGSize(width: UIScreen.main.bounds.width, height: CGFloat(296))
			
		}
		
		
	}
}

