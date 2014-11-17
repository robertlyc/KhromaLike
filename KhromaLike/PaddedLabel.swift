//
//  PaddedLabel.swift
//  KhromaLike
//
//  Created by RoBeRt on 14/11/17.
//  Copyright (c) 2014年 RayWenderlich. All rights reserved.
//

import UIKit

class PaddedLabel: UILabel {
  var verticalPadding = 0.0
  
  override func traitCollectionDidChange(previousTraitCollection: UITraitCollection?) {
    if traitCollection.verticalSizeClass == .Compact {
      verticalPadding = 0.0
    } else {
      verticalPadding = 20.0
    }
    
    invalidateIntrinsicContentSize()
  }
  
  override func intrinsicContentSize() -> CGSize {
    var intrinsicSize = super.intrinsicContentSize()
    intrinsicSize.height += CGFloat(verticalPadding)
    return intrinsicSize
  }
}
