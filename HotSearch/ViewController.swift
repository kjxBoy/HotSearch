//
//  ViewController.swift
//  HotSearch
//
//  Created by 康佳兴 on 2022/10/2.
//

import UIKit
import flutter_boost

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let platforms = ["bilibili","抖音", "知乎", "百度"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.reuseIdentifier)
        navigationItem.title = "平台"
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return platforms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.reuseIdentifier, for: indexPath)
        cell.textLabel?.text = platforms[indexPath.item]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let options = FlutterBoostRouteOptions()
        options.pageName = "homePage"
        BoostDelegate.shared.pushFlutterRoute(options)
    }
}



