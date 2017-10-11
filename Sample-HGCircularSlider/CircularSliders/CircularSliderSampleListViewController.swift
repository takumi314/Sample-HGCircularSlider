//
//  CircularSliderSampleListViewController.swift
//  Sample-HGCircularSlider
//
//  Created by NishiokaKohei on 2017/10/09.
//  Copyright © 2017年 Kohey.N. All rights reserved.
//

import UIKit

enum CellType: String {
    case simplest = "SimplestCircularSliderViewController"
    case other
}

class CircularSliderSampleListViewController: UITableViewController {

    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        title = CircularSliderSampleListViewController.identifier()
    }

    // MARK: - UITableViewDelegte

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let next = getViewController(from: tableView, at: indexPath) else {
            return
        }
        navigationController?.pushViewController(next, animated: true)
    }

    private func getViewController(from tableView: UITableView, at indePath: IndexPath) -> UIViewController? {
        var vc: UIViewController? = nil
        let identifier = tableView.cellForRow(at: indePath)?.restorationIdentifier ?? ""
        let type = CellType(rawValue: identifier) ?? .other
        switch type {
        case .simplest:
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            vc = storyboard.instantiateViewController(withIdentifier: SimplestCircularSliderViewController.identifier())
            break
        default:
            break
        }
        return vc
    }

}
