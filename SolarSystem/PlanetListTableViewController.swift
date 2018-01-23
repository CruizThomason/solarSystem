//
//  PlanetListTableViewController.swift
//  SolarSystem
//
//  Created by cruizthomason on 1/23/18.
//  Copyright © 2018 DevMountain. All rights reserved.
//

import UIKit

class PlanetListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PlanetController.planets.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)

        let planet = PlanetController.planets[indexPath.row]
        
        cell.textLabel?.text = planet.name
        cell.detailTextLabel?.text = ("Planet number \(indexPath.row + 1)")
        cell.imageView?.image = UIImage.init(named: planet.imageName)

        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPlanetDetailVC" {
           
            if let planetDetailVC = segue.destination as? PlanetDetailViewController,
                let indexPath = tableView.indexPathForSelectedRow {
               
                let planet = PlanetController.planets[indexPath.row]
                planetDetailVC.planet = planet
            }
        }
    }
}
