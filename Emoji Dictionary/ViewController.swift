//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Rathod, Kinjal on 11/23/17.
//  Copyright © 2017 Rathod, Kinjal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var emojiTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojiTableView.dataSource = self
        emojiTableView.delegate = self
        
        emojis = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        print(indexPath.row)
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]

        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        print(sender)
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.stringEmoji = "☺️"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "Blushing Face!"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😇"
        emoji2.birthYear = 2012
        emoji2.category = "Smiley"
        emoji2.definition = "Smiley face with Halo!"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🤡"
        emoji3.birthYear = 2013
        emoji3.category = "Smiley"
        emoji3.definition = "Clown face!"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😂"
        emoji4.birthYear = 2014
        emoji4.category = "Smiley"
        emoji4.definition = "Face with tears of joy!!"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "👹"
        emoji5.birthYear = 2010
        emoji5.category = "Smiley"
        emoji5.definition = "Ogre face!"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "😜"
        emoji6.birthYear = 2016
        emoji6.category = "Smiley"
        emoji6.definition = "Winking face with stuck-out tongue!!"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }

}

