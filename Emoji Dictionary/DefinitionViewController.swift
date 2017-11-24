//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Rathod, Kinjal on 11/23/17.
//  Copyright © 2017 Rathod, Kinjal. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji = Emoji()
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        print(emoji)
        //emojiLabel.text = emoji
        
        /*if emoji == "☺️" {
            definitionLabel.text = "Blushing face!"
            categoryLabel.text = "Category: Human"
            birthYearLabel.text = "BirthYear: 2011"
        }
        if emoji == "😇" {
            definitionLabel.text = "Smiling face with halo"
            categoryLabel.text = "Category: Smiley"
            birthYearLabel.text = "BirthYear: 2013"
        }
        if emoji == "🤡" {
            definitionLabel.text = "Clown face!"
            categoryLabel.text = "Category: Clown"
            birthYearLabel.text = "BirthYear: 2014"
        }
        if emoji == "😂" {
            definitionLabel.text = "Face with tears of joy!"
            categoryLabel.text = "Category: Tears"
            birthYearLabel.text = "BirthYear: 2015"
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
        }*/
        
        emojiLabel.text = emoji.stringEmoji
        birthYearLabel.text = "Origination Date: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = emoji.definition
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
