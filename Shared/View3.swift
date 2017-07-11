//
//  View3.swift
//  StarterProject
//
//  Created by Gulshan Preet Kaur Josan on 2017-04-24.
//  Copyright © 2017 MBIENTLAB, INC. All rights reserved.
//

import UIKit

class View3: UIViewController {

    
    @IBAction func One(_ sender: Any) {
        sensor = 1
        print("sensor value " + "\(sensor)")
    }
    
    @IBAction func Two(_ sender: Any) {
        sensor = 2
        print("sensor value " + "\(sensor)")
    }
    
    @IBAction func Three(_ sender: Any) {
        sensor = 3
        print("sensor value " + "\(sensor)")
    }
    
    @IBAction func Four(_ sender: Any) {
        sensor = 4
        print("sensor value " + "\(sensor)")
    }
    
    @IBAction func Five(_ sender: Any) {
        sensor = 5
        print("sensor value " + "\(sensor)")
    }
    
    @IBAction func Six(_ sender: Any) {
        sensor = 6
        print("sensor value " + "\(sensor)")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(sensorType)

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
