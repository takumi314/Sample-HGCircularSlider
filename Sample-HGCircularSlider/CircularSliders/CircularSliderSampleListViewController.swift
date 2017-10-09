//
//  CircularSliderSampleListViewController.swift
//  Sample-HGCircularSlider
//
//  Created by NishiokaKohei on 2017/10/09.
//  Copyright © 2017年 Kohey.N. All rights reserved.
//

import UIKit

class CircularSliderSampleListViewController: UITableViewController {

    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        title = CircularSliderSampleListViewController.identifier()
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }

    private func hoge(_ table: UITableView, at indePath: IndexPath) -> UIViewController? {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        var vc: UIViewController? = nil
        switch indePath.row {
        case 0:
            vc = storyboard.instantiateViewController(withIdentifier: SimplestCircularSliderViewController.identifier())
            break
        default:
            break
        }
        return vc
    }

}
