//
//  MoreViewController.swift
//  AutoLayout
//
//  Created by Danila on 07.11.2024.
//

import UIKit

class MoreViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func sendTextToNewVC(_ sender: Any) {
        performSegue(withIdentifier: "showDetail", sender: nil)
    }
    
    
}

extension MoreViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "showDetail":
            guard let detailVC = segue.destination as? DetailViewController else { return }
            detailVC.detailText = textField.text ?? ""
        default:
            break
        }
    }
}
