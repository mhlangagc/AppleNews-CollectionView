
//
//  Contants.swift
//  Pace
//
//  Created by Gugulethu Mhlanga on 2016/02/16.
//  Copyright © 2016 Canaan Studios. All rights reserved.
//

import Foundation
import UIKit

public func textSpacing(_ labelSelected : UILabel, spacing: CGFloat) {
    
    let attributedString = labelSelected.attributedText as? NSMutableAttributedString
    attributedString?.addAttribute(NSKernAttributeName, value: spacing, range: NSMakeRange(0, (attributedString?.length)!))
    
}
