//
//  ControlViewController.swift
//  AutoLayout
//
//  Created by Danila on 06.11.2024.
//

import UIKit

class ControlViewController: UIViewController {

    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var segmentLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var segment: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderLabel.text = "\(slider.value)"
        switchLabel.text = switch1.isOn ? "On" : "Off"
        let index = segment.selectedSegmentIndex
        let title = segment.titleForSegment(at: index)
        segmentLabel.text = "Title = \(title ?? "No title"), for index = \(index)"
    }
    
    @IBAction func cliderDidChange(_ sender: UISlider) {
        sliderLabel.text = "\(sender.value)"
    }
    
    @IBAction func switchDidChange(_ sender: UISwitch) {
        switchLabel.text = sender.isOn ? "On" : "Off"
    }
    
    @IBAction func segmentControlDidChange(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        let title = sender.titleForSegment(at: index)
        segmentLabel.text = "Title = \(title ?? "No title"), for index = \(index)"
        
    }
}
