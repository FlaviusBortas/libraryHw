//
//  ViewController.swift
//  libraryHw
//
//  Created by Flavius Bortas on 9/4/18.
//  Copyright © 2018 Flavius Bortas. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    //MARK: - Properties
    
    var gameList = Game.allGames
    
    //MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
    }

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
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            gameList.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddGameSegue" {
            if let addGameTableView = segue.destination as? AddGameTableViewController {
                addGameTableView.delegate = self
            }
        }
    }
}

extension MainTableViewController: AddGameDelegate {
    func addGame(game: Game) {
        gameList.append(game)
        tableView.reloadData()
    }
}

