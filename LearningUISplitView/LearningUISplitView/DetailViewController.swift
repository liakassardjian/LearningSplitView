//
//  DetailViewController.swift
//  LearningUISplitView
//
//  Created by Lia Kassardjian on 31/03/20.
//  Copyright © 2020 Lia Kassardjian. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var memoji: MeMoji?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = memoji?.image
        nameLabel.text = memoji?.name
    }

}
