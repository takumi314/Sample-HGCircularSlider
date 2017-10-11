//
//  SimplestCircularSliderViewController.swift
//  Sample-HGCircularSlider
//
//  Created by NishiokaKohei on 2017/10/09.
//  Copyright © 2017年 Kohey.N. All rights reserved.
//

import UIKit

class SimplestCircularSliderViewController: UIViewController  {

    // MARK: - Public properties

    private var visiableArea: CGRect {
        return visibleArea()
    }
    
    private var wholeScreen: CGSize {
        return UIScreen.screenSize()
    }

    var presenter: CircularSliderPresenter?

    @IBOutlet var frameView: UIView!
    private var value: CGFloat = 50.0

    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        frameView.backgroundColor = .clear

        // ask to create for the Presenter
        presenter = CircularSliderPresenter(with: frameView)
        presenter?.config(min: 0, max: 100, until: 50)
        presenter?.addSubview()
        presenter?.circularSlider.delegate = self
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        presenter?.circularSlider.delegate = nil
    }

    // MARK: - UIViewController

    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        super.willTransition(to: newCollection, with: coordinator)
        coordinator.animate(alongsideTransition: { [weak self] in
            print($0.completionCurve)
            print($0.completionVelocity)
            print($0.containerView)
            print($0.presentationStyle)
            print($0.isAnimated)
            print($0.percentComplete)
            guard let frameView = self?.frameView else {
                return
            }
            self?.presenter?.update(by: frameView)
        },  completion: {
            print($0.percentComplete)
        })
    }

    // MARK: - Private methods

    func visibleArea() -> CGRect {
        let size = wholeFrame().size
        let corrention = navigationController!.navigationBar.bounds.size.height
        return CGRect(x: 0.0, y: 0.0, width: size.width, height: size.height - corrention)
    }

    private func wholeSize() -> CGSize {
        return wholeFrame().size
    }

    private func wholeFrame() -> CGRect {
        return view.frame
    }

    private func showCircleSlider() {

    }

}
}
