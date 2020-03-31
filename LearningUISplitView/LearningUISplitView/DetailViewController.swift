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
    
    var memoji: MeMoji? {
        didSet {
            refreshUI()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func refreshUI() {
        loadViewIfNeeded()
        imageView.image = memoji?.image
        self.title = memoji?.name
    }
}

extension DetailViewController: MemojiSelectionDelegate {
    func memojiSelected(_ newMemoji: MeMoji) {
        memoji = newMemoji
    }
}
