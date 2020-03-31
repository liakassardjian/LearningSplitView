//
//  MasterViewController.swift
//  LearningUISplitView
//
//  Created by Lia Kassardjian on 31/03/20.
//  Copyright © 2020 Lia Kassardjian. All rights reserved.
//

import UIKit

protocol MemojiSelectionDelegate: class {
  func memojiSelected(_ newMemoji: MeMoji)
}

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
    
    weak var delegate: MemojiSelectionDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memoji.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = memoji[indexPath.row].name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedMemoji = memoji[indexPath.row]
        delegate?.memojiSelected(selectedMemoji)
    }

}
