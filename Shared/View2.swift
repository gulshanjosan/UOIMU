//
//  View2.swift
//  StarterProject
//
//  Created by Gulshan Preet Kaur Josan on 2017-04-24.
//  Copyright © 2017 MBIENTLAB, INC. All rights reserved.
//

import UIKit

class View2: UIViewController {
 
    
    @IBAction func eulerAngle(_ sender: Any) {
        sensorType = "eulerAngle"
        //let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        //let newViewController = storyBoard.instantiateViewController(withIdentifier: "View3") as! View3
        //self.present(newViewController, animated: true, completion: nil)
        
        
    }
    
    
    @IBAction func quaternion(_ sender: Any) {
        
        sensorType = "quaternion"
        //let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        //let newViewController = storyBoard.instantiateViewController(withIdentifier: "View3") as! View3
        //self.present(newViewController, animated: true, completion: nil)
    }
    
    
    @IBAction func acceleration(_ sender: Any) {
        sensorType = "acceleration"
       // let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
       // let newViewController = storyBoard.instantiateViewController(withIdentifier: "View3") as! View3
       // self.present(newViewController, animated: true, completion: nil)
        
    }
    
    @IBAction func rotation(_ sender: Any) {
        sensorType = "rotation"
        //let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        //let newViewController = storyBoard.instantiateViewController(withIdentifier: "View3") as! View3
        //self.present(newViewController, animated: true, completion: nil)
 
    }
    
    
    @IBAction func magneticField(_ sender: Any) {
        sensorType = "magneticField"
        //let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        //let newViewController = storyBoard.instantiateViewController(withIdentifier: "View3") as! View3
        //self.present(newViewController, animated: true, completion: nil)

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
