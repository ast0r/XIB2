//
//  TableViewController.swift
//  iOSDevelopment
//
//  Created by Pavel Ivanov on 3/11/19.
//  Copyright © 2019 Pavel Ivanov. All rights reserved.
//

import UIKit

struct InfoStruct {
    let title : String
    let desc : String
}

class TableViewController: UITableViewController {
    
//    var items: [[String:String]] = []
    
    var items: [InfoStruct] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "CustomTableViewCell2", bundle: nil), forCellReuseIdentifier: "Cell")

        if let path = Bundle.main.path(forResource: "Data", ofType: "plist") {
            if let itemsTemp = NSArray(contentsOfFile: path) as? [[String:String]] {
                //items = itemsTemp
                
                for item in itemsTemp {
                    
                    let title = item["Title"]
                    let desc = item["Desc"]
                    let newItem = InfoStruct(title: title!, desc: desc!)
                    items.append(newItem)
                }
            }
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for:   indexPath) as! CustomTableViewCell2
        
        if indexPath.row < items.count {
            
            let even = (indexPath.row % 2 == 0)
            let indent = even ? UIColor.green : UIColor.yellow
            
            let item = items[indexPath.row]
            cell.customInit(info: item, color: indent)
            //cell.customInit(info: item)
        }
        
        return cell
        
        /*let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.reuseIdentifierCellCustom(), for: indexPath) as! CustomTableViewCell

        // Configure the cell...
        if indexPath.row < items.count {
            
            let item = items[indexPath.row]
            cell.customInit(info: item)
        }

        return cell
         */
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
