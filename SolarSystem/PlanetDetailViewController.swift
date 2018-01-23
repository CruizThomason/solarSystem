//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by cruizthomason on 1/23/18.
//  Copyright © 2018 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {

    @IBOutlet weak var planetName: UILabel!
    @IBOutlet weak var planetDiameter: UILabel!
    @IBOutlet weak var planetDayLength: UILabel!
    @IBOutlet weak var planetMillionKMsFromSun: UILabel!
    @IBOutlet weak var planetImage: UIImageView!
    
    var planet: Planet?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }

    func updateViews() {
        
        if let planet = planet {
            planetName.text = planet.name
            planetDiameter.text = "Diameter \(planet.diameter)"
            planetDayLength.text = "Day Length \(planet.dayLength)"
            planetMillionKMsFromSun.text = "Million KMs From Sun \(planet.millionKMsFromSun)"
            planetImage.image = UIImage(named: planet.imageName)
            
            title = planet.name
        }
    }
    

}
