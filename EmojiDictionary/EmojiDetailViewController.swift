//
//  EmojiDetailViewController.swift
//  EmojiDictionary
//
//  Created by Brian Estep on 3/2/18.
//  Copyright © 2018 Brian Estep. All rights reserved.
//

import UIKit

class EmojiDetailViewController: UIViewController {
    var emoji = Emoji()
    @IBOutlet weak var EmojiNameLabel: UILabel!
    @IBOutlet weak var Emoji_Category: UILabel!
    @IBOutlet weak var Emoji_Year: UILabel!
    @IBOutlet weak var EmojiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        EmojiLabel.text = emoji.emoji
        Emoji_Year.text = String(emoji.emojiYear)
        Emoji_Category.text = emoji.emojiCategory
        EmojiNameLabel.text = emoji.emojiName
    }
}
