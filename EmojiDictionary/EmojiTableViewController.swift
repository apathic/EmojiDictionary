//
//  EmojiTableViewController.swift
//  EmojiDictionary
//
//  Created by Brian Estep on 3/1/18.
//  Copyright © 2018 Brian Estep. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis = ["😀", "💩", "☠️", "🤮", "🧝🏻‍♀️", "🧚‍♀️", "🤷‍♂️", "🦄", "🐯", "🦖", "🦕", "🕷", "🦐", "🐿"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)

        cell.textLabel?.text = emojis[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(emojis[indexPath.row])
        performSegue(withIdentifier: "segWay", sender: emojis[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiDefVC = segue.destination as! EmojiDetailViewController
        emojiDefVC.emoji = sender as! String
    }
    
}
