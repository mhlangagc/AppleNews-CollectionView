
//
//  StatusBarBackground.swift
//  Pace
//
//  Created by Gugulethu Mhlanga on 2016/12/17.
//  Copyright © 2016 Pace. All rights reserved.
//

import UIKit

extension UIApplication {
	var statusBarView: UIView? {
		return value(forKey: "statusBar") as? UIView
	}
}
