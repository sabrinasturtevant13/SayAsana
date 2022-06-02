//
//  ViewController.swift
//  Say+ Asana
//
//  Created by Sabrina Sturtevant on 6/1/22.
//

import UIKit


class HomeScreen: UIViewController {

    @IBOutlet weak var getStartedButton: UIButton!
    
    @IBOutlet weak var directionButton: UIButton!
        
    @IBOutlet var directionScreenView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
       // view.overrideUserInterfaceStyle = .light
        if #available(iOS 13.0, *) {
                // prefer a light interface style with this:
                overrideUserInterfaceStyle = .light
            
          //  AppUtility.lockOrientation(.portrait)
        }
        
        //locks phone orientation
        func viewWillAppear(_ animated: Bool) {
            AppDelegate.AppUtility.lockOrientation(UIInterfaceOrientationMask.portrait, andRotateTo: UIInterfaceOrientation.portrait)
        }
        
        
    }

    @IBAction func backButtonPressed(_ sender: Any) {
        //performSegue(withIdentifier: "Home Screen", sender: self)
        dismiss(animated: true)
        

    }
    
    

}

