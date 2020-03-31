//
//  MasterViewController.swift
//  LearningUISplitView
//
//  Created by Lia Kassardjian on 31/03/20.
//  Copyright © 2020 Lia Kassardjian. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {
    
    let memoji = [MeMoji(name: "Crying", imageName: "crying"),
                  MeMoji(name: "Developer", imageName: "developer"),
                  MeMoji(name: "Disappointed", imageName: "disappointed"),
                  MeMoji(name: "Happy", imageName: "happy"),
                  MeMoji(name: "Mind blowing", imageName: "mindBlowing"),
                  MeMoji(name: "Party mood", imageName: "partyMood"),
                  MeMoji(name: "Shocked", imageName: "shocked"),
                  MeMoji(name: "Silly", imageName: "silly"),
                  MeMoji(name: "Sleepy", imageName: "sleepy"),
                  MeMoji(name: "Star", imageName: "star")]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memoji.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = memoji[indexPath.row].name
        return cell
    }

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
