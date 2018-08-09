//
//  ListMartViewController.swift
//  Project
//
//  Created by 유호근 on 2017. 6. 7..
//  Copyright © 2017년 유호근. All rights reserved.
//

import UIKit

class ListMartViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    var selRow: Int!
    private let url = ["http://m.emart.ssg.com/","http://m.lotteimall.com/","http://m.homeplus.co.kr/"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urls = URL(string: url[selRow])
        let request = URLRequest(url: urls!)
        webView.loadRequest(request)
        
        
        // Do any additional setup after loading the view.
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
