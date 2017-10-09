//
//  ViewController.swift
//  Sample-HGCircularSlider
//
//  Created by NishiokaKohei on 2017/10/08.
//  Copyright © 2017年 Kohey.N. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: -  Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


// MARK: - NSObject

extension NSObject: Identifiable { }

// MARK: - Protocols

protocol Identifiable {
    func identifier() -> String
}

extension Identifiable {
    func identifier() -> String {
        return "\(self)"
    }
}
