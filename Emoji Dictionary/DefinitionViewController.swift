//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Sophie Amin on 2017-11-22.
//  Copyright © 2017 Sophie Amin. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emojis = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emojis
        //when transition happens, put the selected emoji in the label
        //If statement for label text generation
        if emojis == "😍"{
        definitionLabel.text = "A happy face with hearts for eyes."
        }
        if emojis == "😰"{
            definitionLabel.text = "A nervous face with a sweat bead."
        }
        if emojis == "😇"{
            definitionLabel.text = "A happy angel face."
        }
        if emojis == "😈"{
            definitionLabel.text = "A happy purple devil."
        }
        if emojis == "🎃"{
            definitionLabel.text = "A Jack-o-Latern"
        }
        if emojis == "💩"{
            definitionLabel.text = "A smiling poop."
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
