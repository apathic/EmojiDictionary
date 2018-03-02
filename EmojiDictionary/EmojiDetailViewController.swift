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
    @IBOutlet weak var EmojiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        EmojiLabel.text = emoji
        
        if EmojiLabel.text == "💩" {
           EmojiNameLabel.text = "Thorne, Obviously"
        }
        else {
            EmojiNameLabel.text = ""
        }
        
    }
}
