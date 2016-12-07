//
//  MainViewController.swift
//  TuVi
//
//  Created by Nguyen Van Thieu B on 12/7/16.
//  Copyright © 2016 Thieu Mao. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var conGiapTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.conGiapTableView.register(UINib(nibName: "ConGiapTableViewCell", bundle: nil), forCellReuseIdentifier: ConGiapTableViewCell.identifier)
        self.conGiapTableView.separatorStyle = .none
        self.conGiapTableView.dataSource = self
        self.conGiapTableView.delegate = self
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ConGiapTableViewCell.identifier) as! ConGiapTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Click ", indexPath.row)
        let detailViewController = DetailViewController()
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
}
