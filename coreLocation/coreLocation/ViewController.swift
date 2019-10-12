//
//  ViewController.swift
//  coreLocation
//
//  Created by 조경진 on 12/10/2019.
//  Copyright © 2019 조경진. All rights reserved.
//

import UIKit
//import CoreLocation
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    //IBO...
    @IBOutlet weak var latitue: UILabel!
    @IBOutlet weak var latitudeAccuracy: UILabel!
    @IBOutlet weak var longitude: UILabel!
    @IBOutlet weak var longitudeAccuracy: UILabel!
    @IBOutlet weak var toggle: UISwitch!
    
    
    //Vars..
    let locManager: CLLocationManager = CLLocationManager()
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location: CLLocation = locations[locations.count-1]
        latitue.text = String(format: "%.6f", location.coordinate.latitude)
        latitudeAccuracy.text = String(format: "%.6f", location.horizontalAccuracy)
        longitude.text = String(format: "%.6f", location.coordinate.longitude)
        longitudeAccuracy.text = String(format: "%.6f" , location.verticalAccuracy)
    }
    
    
    
    //init..
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    override func viewDidAppear(_ animated: Bool) {
        if CLLocationManager.locationServicesEnabled() {
            if CLLocationManager.authorizationStatus() == .denied || CLLocationManager.authorizationStatus() == .restricted {
                let alert = UIAlertController(title: "error", message: "off", preferredStyle: .alert)
                
                let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
                
                alert.addAction(okAction)
                self.present(alert, animated: true, completion: nil)
                self.toggle.isOn = false
            }
            else {
                locManager.desiredAccuracy = kCLLocationAccuracyBest
                locManager.delegate = self
                locManager.requestWhenInUseAuthorization()
            }
        }
        else {
            let alert = UIAlertController(title: "error", message: "제공 불가", preferredStyle: .alert)
                           
                           let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
                           
                           alert.addAction(okAction)
                           self.present(alert, animated: true, completion: nil)
        }
    }
    
    //IBAction...
    @IBAction func toggleSwitchs(_ sender: UISwitch!) {
        if sender.isOn {
            self.locManager.startUpdatingLocation()
        }
        else {
            self.locManager.stopUpdatingLocation()
        }
   
    }
    
    
    
}

