//
//  ViewController.swift
//  libraryHw
//
//  Created by Flavius Bortas on 9/4/18.
//  Copyright © 2018 Flavius Bortas. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

    //MARK: - UI Elements
    
    
    
    
    
    
    //MARK: - Properties
    
    var gameList: [Game] = []
    
    //MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    //MARK: - Actions
    
    
    
    
    
    
    
    //MARK: - Methods

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gameList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GameItem", for: indexPath)
        cell.textLabel?.text = gameList[indexPath.row].gameName
        return cell

    }
    
    
    
    func populateGameList() {

        let gamesAndStudios = GamesAndStudiosBank()
        
        for item in gamesAndStudios.games  {
            let newGameItem = Game(gameName: item.key, studio: item.value)
            gameList.append(newGameItem)
            
        }
        
    }

}

