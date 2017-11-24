//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Rathod, Kinjal on 11/23/17.
//  Copyright © 2017 Rathod, Kinjal. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji = "No Emoji"
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        print(emoji)
        emojiLabel.text = emoji
        
        if emoji == "☺️" {
            definitionLabel.text = "Blushing face!"
        }
        if emoji == "😇" {
            definitionLabel.text = "Smiling face with halo"
        }
        if emoji == "🤡" {
            definitionLabel.text = "Clown face!"
        }
        if emoji == "😂" {
            definitionLabel.text = "Face with tears of joy!"
        }
        if emoji == "👹" {
            definitionLabel.text = "Ogre face!"
        }
        if emoji == "😜" {
            definitionLabel.text = "Winking face with stuck-out tongue!"
        }
        if emoji == "💩" {
            definitionLabel.text = "Pile of poop!"
        }
        if emoji == "😡" {
            definitionLabel.text = "Pouting face!"
        }
        if emoji == "👍" {
            definitionLabel.text = "Thumbs up!"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
