//
//  ViewController.swift
//  Weather App
//
//  Created by kazim reza on 1/29/16.
//  Copyright © 2016 KazimReza. All rights reserved.
//

import UIKit

class ViewController: UIViewController, WeatherServiceDelegate {
    
    let weatherService = WeatherService()

    @IBOutlet weak var temoLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    
    @IBAction func setCity(sender: UIButton) {
        openCityAlert()
    }
    
    // Alert Controller
    func openCityAlert(){
        let alert = UIAlertController(title: "City",
            message: "Enter City Name", preferredStyle: .Alert)
        
        // Cancel Action
        let cancel = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil)
        alert.addAction(cancel)
        
        // OK Action
        let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) { (UIAlertAction) -> Void in
            print("ok")
            let textField = alert.textFields?[0]
            print (textField?.text!)
            self.cityLabel.text = textField?.text!
            let cityName = textField?.text
            self.weatherService.getWeather(cityName!)
        }
        alert.addAction(ok)
        
        // Add text field
        alert.addTextFieldWithConfigurationHandler { (textField: UITextField) -> Void in
            textField.placeholder = "City Name"
        }
        
        // Present Alert Controller
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
    
    // mark weather service delegate
    func setWeather(weather: Weather){
        
        print("*** Set Weather")
        print("City: \(weather.cityName) temp: \(weather.temp) desc:: \(weather.description)")
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.weatherService.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

