//
//  DetailViewController.swift
//  AutoLayout
//
//  Created by Danila on 07.11.2024.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailLabel: UILabel!
    
    var detailText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabel.text = detailText

    }
    

}
