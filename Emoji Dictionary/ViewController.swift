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
    
    var emoji : [Emoji] = [] //array of emoji for tableview
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
        emoji = makeEmojiArray()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emoji.count //return number of items in the array
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emojis = emoji[indexPath.row]
        cell.textLabel?.text = emojis.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true) //take away selection highlighting
        let emojis = emoji[indexPath.row]//assign emoji in the selected row
        performSegue(withIdentifier: "moveSegue", sender: emojis)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emojis = sender as! Emoji
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😍"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A happy face with hearts for eyes"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😰"
        emoji2.birthYear = 2012
        emoji2.category = "Smiley"
        emoji2.definition = "A nervous face with a sweat bead."
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😇"
        emoji3.birthYear = 2011
        emoji3.category = "Smiley"
        emoji3.definition = "A happy angel face."
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😈"
        emoji4.birthYear = 2012
        emoji4.category = "Smiley"
        emoji4.definition = "A happy purple devil."
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🎃"
        emoji5.birthYear = 2012
        emoji5.category = "Thing"
        emoji5.definition = "A Jack-o-Latern."
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "💩"
        emoji6.birthYear = 2012
        emoji6.category = "Smiley"
        emoji6.definition = "A happy poop."
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
        
    }


}

