//
//  DetailViewController.swift
//  TuVi
//
//  Created by Nguyen Van Thieu B on 12/7/16.
//  Copyright © 2016 Thieu Mao. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailScrollView: UIScrollView!
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var webView: UIWebView!
    var number:Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.detailScrollView.addSubview(self.contentView)
        let url = Bundle.main.url(forResource: String(self.number), withExtension: "html")
        if let url = url {
            let request = URLRequest(url: url)
            self.webView.loadRequest(request)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}
