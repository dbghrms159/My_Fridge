//
//  RootTableViewController.swift
//  Project
//
//  Created by 유호근 on 2017. 6. 5..
//  Copyright © 2017년 유호근. All rights reserved.
//

import UIKit

class RootTableViewController: UITableViewController {

    private static let rootKey = "rootKey"
    
    var show:Bool = false
    var dates: [String] = []
    var works: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        let fileURL = self.dataFileURL()
        if FileManager.default.fileExists(atPath: fileURL.path){
            let data = NSMutableData(contentsOf: fileURL as URL)
            let unarchiver = NSKeyedUnarchiver(forReadingWith: data! as Data)
            let toDoList = unarchiver.decodeObject(forKey: RootTableViewController.rootKey) as! datebase
            unarchiver.finishDecoding()
            
            if let newDates = toDoList.dates{
                for i in 0..<newDates.count{
                    dates.append(newDates[i])
                }
            }
            if let newWorks = toDoList.works{
                for i in 0..<newWorks.count{
                    works.append(newWorks[i])
                }
            }
        
        }
        let app = UIApplication.shared
        NotificationCenter.default.addObserver(self, selector: #selector(self.applicationWillResignActive(notification:)), name: NSNotification.Name.UIApplicationWillResignActive, object: app)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func applicationWillResignActive(notification: NSNotification){
        let fileURL = self.dataFileURL()
        let toDoList = datebase()
        toDoList.dates = dates
        toDoList.works = works
        
        let data = NSMutableData()
        let archiver = NSKeyedArchiver(forWritingWith: data)
        archiver.encode(toDoList, forKey: RootTableViewController.rootKey)
        archiver.finishEncoding()
        data.write(to: fileURL, atomically: true)
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dates.count
    }

    func dataFileURL() -> URL {
        let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        var url: URL?
        url = URL(fileURLWithPath: "")
        do{
            url = try urls.first?.appendingPathComponent("food.plist")
        }
        catch{
            print("Error is \(error)")
        }
        return url!
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "urlCell", for: indexPath)

        cell.textLabel?.text = works[indexPath.row]
        cell.detailTextLabel?.text = dates[indexPath.row]// Configure the cell...


        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
       
        if editingStyle == .delete {
            // Delete the row from the data source
            
            dates.remove(at: indexPath.row)
            
            works.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let item = dates[fromIndexPath.row]
        dates.remove(at: fromIndexPath.row)
        dates.insert(item, at: to.row)
        
    }*/
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "url"{
            let webViewController = segue.destination as! ViewController
            webViewController.rowNum = works[(tableView.indexPathForSelectedRow?.row)!] + "요리"
        }
        
        
    }
    

}
