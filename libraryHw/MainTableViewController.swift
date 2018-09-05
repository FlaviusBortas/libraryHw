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
    
    var gameList = Game.allGames
    
    //MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
    //MARK: - Actions
    
    
    
    
    
    
    
    //MARK: - Methods

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gameList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GameItem", for: indexPath)
        let gameName = gameList[indexPath.row].name
        let studioName = gameList[indexPath.row].studio
        cell.textLabel?.text = "Game: \(gameName), Studio: \(studioName)"
        return cell

    }
    

}

