//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Sophie Amin on 2017-11-22.
//  Copyright © 2017 Sophie Amin. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emojis = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emojis.stringEmoji
        birthYearLabel.text = "Origination Date: \(emojis.birthYear)"
        categoryLabel.text = "Category: \(emojis.category)"
        definitionLabel.text = emojis.definition
        
        
        
        //when transition happens, put the selected emoji in the label
        //If statement for label text generation
  
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
