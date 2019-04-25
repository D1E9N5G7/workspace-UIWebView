//
//  ViewController.swift
//  UIWebView
//
//  Created by Apple on 2019/4/25.
//  Copyright © 2019 com.deng. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let mWKWebView = WKWebView(frame: self.view.frame)
        let url = URL(string: "https://www.baidu.com")
        let mURLRequest = URLRequest(url: url!)
        mWKWebView.load(mURLRequest)
        self.view.addSubview(mWKWebView)
        
    }


}

