//
//  MainViewController.swift
//  Sample-HGCircularSlider
//
//  Created by NishiokaKohei on 2017/10/08.
//  Copyright © 2017年 Kohey.N. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: -  Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        title = "Main Menu"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - IBActions

    @IBAction func didTapOnCircleSiliderBtn(_ sender: UIButton, forEvent event: UIEvent) {
        let stroyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = stroyboard.instantiateViewController(withIdentifier: CircularSliderSampleListViewController.identifier())
        self.navigationController?.pushViewController(vc, animated: true)
    }
}


// MARK: - NSObject
extension UIViewController: Identifiable {
    class func identifier() -> String {
        return self.className()
    }
}

extension NSObjectProtocol {
    static func className() -> String {
        return "\(self)"
    }
}

// MARK: - Protocols
protocol Identifiable {
    static func identifier() -> String
}

extension Identifiable {
}
