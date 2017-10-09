//
//  CircularSliderPresenter.swift
//  Sample-HGCircularSlider
//
//  Created by NishiokaKohei on 2017/10/09.
//  Copyright © 2017年 Kohey.N. All rights reserved.
//

import UIKit
import HGCircularSlider

class CircularSliderPresenter: NSObject {

    var circularSlider: CircularSlider

    private var frame: CGRect {
        didSet {
            self.circularSlider.frame = frame
        }
    }

    // MARK: - Initilizer

    private override init() {
        self.circularSlider = CircularSlider()
        self.frame = CGRect(x: 0.0, y: 0.0, width: 0.0, height: 0.0)
    }

    ///
    /// Required to cell this initializer
    ///
    convenience init(_ viewController: UIViewController) {
        self.init()
        self.frame = viewController.view.frame
    }

    // MARK: - Public methods

    func instatiate() -> UIView {
        return circularSlider
    }

    func update(for viewController: UIViewController) {
        viewController.view.setNeedsDisplay()
        if let vc = viewController as? SimplestCircularSliderViewController {
            vc.wholeView?.setNeedsDisplay()
        }
    }

    func config(_ minimum: CGFloat, _ maximum: CGFloat, _ end: CGFloat)  {
        circularSlider.minimumValue = minimum
        circularSlider.maximumValue = maximum
        circularSlider.endPointValue = end
    }

    ///
    /// set up all the color about HGCircularSlider
    ///
    func paint() -> Void {
        paintForDisk()
        paintForTrack()
    }

    ///
    /// To interact
    ///
    func interect() {
    }

    // MARK: - Private methods

    private func paintForDisk(_ diskColor: UIColor = .gray, _ diskFillColor: UIColor = .clear) {
        circularSlider.diskColor = diskColor
        circularSlider.diskFillColor = diskFillColor
    }

    private func paintForTrack(_ trackColor: UIColor = .white, trackFillColor: UIColor = .clear) {
        circularSlider.trackColor = trackColor
        circularSlider.trackFillColor = trackFillColor
    }

    private func change(width: CGFloat = 5.0) {
        circularSlider.lineWidth = width
    }

    private func changeCircle() {

    }


}
