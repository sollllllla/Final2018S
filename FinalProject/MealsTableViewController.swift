//
//  MealsTableViewController.swift
//  FinalProject
//
//  Created by SWUCOMPUTER on 2018. 6. 19..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class MealsTableViewController: UITableViewController {
    var days:[String: [String]] =
        ["월요일": ["아침", "점심", "저녁",],"화요일": ["아침", "점심", "저녁" ],"수요일": ["아침", "점심", "저녁" ],"목요일": ["아침", "점심", "저녁" ],"금요일": ["아침", "점심", "저녁" ],"토요일": ["아침", "점심", "저녁" ],"일요일": ["아침", "점심", "저녁" ]]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "단백질먹었슈?"
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return days.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Days Cell", for: indexPath)

        var meals = Array(days.keys)
        cell.textLabel?.text = meals[indexPath.row]

        return cell
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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? EatTableViewController {
            if let selectedIndex = self.tableView.indexPathsForSelectedRows?.first?.row {
                destination.title = Array(days.keys) [selectedIndex]
                destination.EatList = Array(days.values) [selectedIndex] }
        } }
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.

}
