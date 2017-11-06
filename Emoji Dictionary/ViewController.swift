//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Sophie Amin on 2017-10-29.
//  Copyright © 2017 Sophie Amin. All rights reserved..
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var emoji = ["😍","😰","😇","😈","🎃","💩"] //array of emoji for tableview
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emoji.count //return number of items in the array
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emoji[indexPath.row]
        //retrieves emojis in the array for each row
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

