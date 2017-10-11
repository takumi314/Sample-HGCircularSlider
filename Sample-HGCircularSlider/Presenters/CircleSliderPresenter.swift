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

    var circularSlider: CircularSliderView

    private var baseView: UIView {
        didSet {
            UIView.animate(withDuration: 0.2) { [unowned self] in
                self.circularSlider.frame.size = self.baseView.frame.size
                self.circularSlider.setNeedsDisplay()
            }
        }
    }

    // MARK: - Initilizer

    required override init() {
        self.circularSlider = CircularSliderView()
        self.baseView = UIView()
    }
    ///
    /// Required to cell this initializer
    ///
    convenience init(with base: UIView) {
        self.init()
        let frame = CGRect(origin: CGPoint.zero, size: base.frame.size)
        self.circularSlider = CircularSliderView(frame: frame)
        self.baseView = base
    }

    convenience init(_ viewController: SimplestCircularSliderViewController) {
        self.init(with: viewController.frameView)
        self.baseView = viewController.frameView
    }

    // MARK: - Public methods

    func instatiate() -> CircularSliderView {
        changeCircle()
        circularSlider.thumbLineWidth = 40
        circularSlider.lineWidth = 20
        return circularSlider
    }

    func addSubview() {
        baseView.addSubview(circularSlider)
    }

    func removeSubview() {
        baseView.removeFromSuperview()
    }

    func config(min minimum: CGFloat, max maximum: CGFloat, until end: CGFloat)  {
        circularSlider.backgroundColor = .clear
        circularSlider.minimumValue = minimum
        circularSlider.maximumValue = maximum
        circularSlider.endPointValue = end
    }

    func update(by base: UIView) {
        baseView = base
        circularSlider.setNeedsLayout()
        circularSlider.setNeedsDisplay()
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
