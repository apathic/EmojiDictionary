//
//  EmojiDetailViewController.swift
//  EmojiDictionary
//
//  Created by Brian Estep on 3/2/18.
//  Copyright © 2018 Brian Estep. All rights reserved.
//

import UIKit

class EmojiDetailViewController: UIViewController {
    var emoji = ""
    @IBOutlet weak var EmojiNameLabel: UILabel!

    @IBOutlet weak var Emoji_Category: UILabel!
    @IBOutlet weak var Emoji_Year: UILabel!
    

    @IBOutlet weak var EmojiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        EmojiLabel.text = emoji
        Emoji_Year.text = ""
        Emoji_Category.text = ""
        EmojiNameLabel.text = ""
        
        if EmojiLabel.text == "😀" {
            EmojiNameLabel.text = "Happy Face"
            Emoji_Category.text = "Smileys"
            Emoji_Year.text = "1980's"
        }
        
        if EmojiLabel.text == "💩" {
            EmojiNameLabel.text = "Thorne, Obviously"
            Emoji_Category.text = "Shithead"
            Emoji_Year.text = "2008?"
        }
        
        if EmojiLabel.text == "🤮" {
            EmojiNameLabel.text = "PUKEFACE"
            Emoji_Category.text = "Sick Smiley"
            Emoji_Year.text = "1972"
        }
        
        
/*
//["😀", "💩", "☠️", "🤮", "🧝🏻‍♀️", "🧚‍♀️",
//"🤷‍♂️", "🦄", "🐯", "🦖", "🦕", "🕷", "🦐", "🐿"]
*/
    }
}
