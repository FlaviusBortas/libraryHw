//
//  AddGameTableViewController.swift
//  libraryHw
//
//  Created by Flavius Bortas on 9/5/18.
//  Copyright © 2018 Flavius Bortas. All rights reserved.
//

import UIKit

protocol AddGameDelegate: AnyObject {
    
    func addGame(game: Game)
}

class AddGameTableViewController: UITableViewController {
    
    @IBOutlet weak var gameTextField: UITextField!
    @IBOutlet weak var studioTextField: UITextField!
    
    weak var delegate: AddGameDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        gameTextField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func cancelTapped(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func doneTapped(_ sender: UIBarButtonItem) {
        guard let gameText = gameTextField.text, gameText.isNotEmpty else {
            gameTextField.becomeFirstResponder()
            return
            
        }
          guard let studioText = studioTextField.text, studioText.isNotEmpty else  {
            studioTextField.becomeFirstResponder()
            return
        }
        
        let game = Game(name: gameText, studio: studioText)
        delegate?.addGame(game: game)
        
        navigationController?.popViewController(animated: true)
    }
    
}


extension String {
    var isNotEmpty: Bool {
        return !self.isEmpty
    }
}





