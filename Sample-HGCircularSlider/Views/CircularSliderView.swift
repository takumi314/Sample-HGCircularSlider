//
//  CircularSliderView.swift
//  Sample-HGCircularSlider
//
//  Created by NishiokaKohei on 2017/10/10.
//  Copyright © 2017年 Kohey.N. All rights reserved.
//

import UIKit
import HGCircularSlider

protocol CircularSliderViewDelegate {
    func circulerSliderView(_ view: CircularSliderView) -> Bool
}

class CircularSliderView: CircularSlider {

    var delegate: CircularSliderViewDelegate?

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
        print("beginTracking")
        return super.beginTracking(touch, with: event)
    }

    override func continueTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        print("continueTracking")
        return super.continueTracking(touch, with: event)
    }

    override func endTracking(_ touch: UITouch?, with event: UIEvent?) {
         print("endTracking")
        if (delegate?.circulerSliderView(self))! {

        }
        super.endTracking(touch, with: event)
    }

    // MARK: - Private methods

}
