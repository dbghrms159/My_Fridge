//
//  ViewController.swift
//  Project
//
//  Created by 유호근 on 2017. 6. 5..
//  Copyright © 2017년 유호근. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    var rowNum: String!
    private let urlSite = "https://www.youtube.com/results?search_query="
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // urlSite = rowNum.fastestEncoding
        let url = URL(string: urlSite + rowNum.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!)
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

