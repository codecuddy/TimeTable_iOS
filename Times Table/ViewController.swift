//
//  ViewController.swift
//  Times Table
//
//  Created by Charlie Cuddy on 11/11/17.
//  Copyright © 2017 Charlie Cuddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderValue: UILabel!
    @IBOutlet weak var table: UITableView!

    @IBAction func sliderUpdated(_ sender: Any) {
        sliderValue.text = String(Int(slider.value * 20))
        table.reloadData()
    }
    

    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 50
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = String(Int(slider.value * 20)) + " x " + String(indexPath.row + 1) + " = " + String((Int(slider.value * 20)) * (indexPath.row + 1))
        return cell
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

