//
//  EmojiTableViewController.swift
//  EmojiDictionary
//
//  Created by Brian Estep on 3/1/18.
//  Copyright © 2018 Brian Estep. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    //var emojis = ["😀", "💩", "☠️", "🤮", "🧝🏻‍♀️", "🧚‍♀️", "🤷‍♂️", "🦄", "🐯", "🦖", "🦕", "🕷", "🦐", "🐿"]
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojis = createEmoji()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)

        let a : String = emojis[indexPath.row].emoji + " - \(emojis[indexPath.row].emojiName)"
        cell.textLabel?.text = a //emojis[indexPath.row].emoji
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(emojis[indexPath.row])
        performSegue(withIdentifier: "segWay", sender: emojis[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiDefVC = segue.destination as! EmojiDetailViewController
        emojiDefVC.emoji = sender as! Emoji
    }
    
    func createEmoji() -> [Emoji] {
        let s = Emoji()
        s.emoji = "😀"
        s.emojiCategory = "Smileys"
        s.emojiName = "Smiley Face"
        s.emojiYear = 1972
        
        let t = Emoji()
        t.emoji = "💩"
        t.emojiCategory = "Turd"
        t.emojiName = "Thorne, Obviously"
        t.emojiYear = 2008
        
        let p = Emoji()
        p.emoji = "🤮"
        p.emojiCategory = "Smileys"
        p.emojiName = "Puke Face"
        p.emojiYear = 2012
        
        return [s, t, p]
        
    }
    
}
