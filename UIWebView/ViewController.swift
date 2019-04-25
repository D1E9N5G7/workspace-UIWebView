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
        
        let width = self.view.frame.width
        let height = self.view.frame.height
        
        //load website
        let mWKWebView = WKWebView(frame: CGRect(x: 0, y: 0, width: width, height: height/2))
        let url = URL(string: "https://www.baidu.com")
        let mURLRequest = URLRequest(url: url!)
        mWKWebView.load(mURLRequest)
        self.view.addSubview(mWKWebView)
        
        // load local html
        let nWKWebView = WKWebView(frame: CGRect(x: 0, y: height/2, width: width, height: height/2))
        let html = "<html><head></head><body><h1>this is html source</h1></body></html>"
        nWKWebView.loadHTMLString(html, baseURL: nil)
        self.view.addSubview(nWKWebView)
        
    }


}

