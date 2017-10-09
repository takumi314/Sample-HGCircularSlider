//
//  CircularSliderView.swift
//  Sample-HGCircularSlider
//
//  Created by NishiokaKohei on 2017/10/10.
//  Copyright © 2017年 Kohey.N. All rights reserved.
//

import UIKit
import HGCircularSlider

class CircularSliderView: CircularSlider {

    // MARK: - Initilizer

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - User interaction methods

    override func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        return super.beginTracking(touch, with: event)
    }

    override func continueTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        return super.continueTracking(touch, with: event)
    }

    override func endTracking(_ touch: UITouch?, with event: UIEvent?) {
        return super.endTracking(touch, with: event)
    }

    // MARK: - Private methods


}
