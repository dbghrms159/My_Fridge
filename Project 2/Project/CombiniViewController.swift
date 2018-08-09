//
//  CombiniViewController.swift
//  Project
//
//  Created by 유호근 on 2017. 6. 7..
//  Copyright © 2017년 유호근. All rights reserved.
//

import UIKit

class CombiniViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    private let urlSite = "https://www.google.co.kr/maps/search/%ED%8E%B8%EC%9D%98%EC%A0%90/@37.8700805,127.7290547,14z"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // urlSite = rowNum.fastestEncoding
        let url = URL(string: urlSite )
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
