//
//  addViewController.swift
//  Project
//
//  Created by 유호근 on 2017. 6. 5..
//  Copyright © 2017년 유호근. All rights reserved.
//

import UIKit

class addViewController: UIViewController {

    @IBOutlet weak var food: UITextField!
    
    @IBOutlet weak var dataPic: UIDatePicker!
    
    @IBOutlet weak var data: UITextField!
    
    @IBOutlet weak var lifedata: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if self.isMovingFromParentViewController {
            if food.text != ""{
                let count = parent?.childViewControllers.count
                let listVC = parent?.childViewControllers[count!-1] as! RootTableViewController
                //listVC.dates.append("유통 기간: " + lifedata.text! + "구입 날자: " + data.text!)
                listVC.dates.append("유통 기간: " + lifedata.text! + "구입 날자: " + data.text!)
                listVC.works.append(food.text!)
                listVC.tableView.reloadData()
            }
        }
    }
    
    @IBAction func TextFieldDoneEditing(sender: UITextField){
        sender.resignFirstResponder()
    }
    
    @IBAction func buttonPress(_ sender: UIButton) {
        let date = DateFormatter.localizedString(from: dataPic.date, dateStyle: .medium, timeStyle: .short)
        data.text = date
        
    }
    @IBAction func lifepress(_ sender: UIButton) {
        let date = DateFormatter.localizedString(from: dataPic.date, dateStyle: .medium, timeStyle: .short)
        lifedata.text = date

    }
    
    @IBAction func tapRecog(_ sender: Any) {
        data.resignFirstResponder()
        food.resignFirstResponder()
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
