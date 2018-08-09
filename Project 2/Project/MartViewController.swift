//
//  MartViewController.swift
//  Project
//
//  Created by 유호근 on 2017. 6. 7..
//  Copyright © 2017년 유호근. All rights reserved.
//

import UIKit

class MartViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    private let urlSite = "https://www.google.co.kr/maps/search/%EB%A7%88%ED%8A%B8/@37.8646625,127.7209007,14z/data=!3m1!4b1"
    
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
