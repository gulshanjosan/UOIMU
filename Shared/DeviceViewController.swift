//
//  DeviceViewController.swift
//  SwiftStarter
//
//  Created by Stephen Schiffli on 10/20/15.
//  Copyright © 2015 MbientLab Inc. All rights reserved.
//

import UIKit
import MetaWear
import MessageUI

class DeviceViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    var euler = [String]()
    var quaternion = [String]()
    var acceleration = [String]()
    var rotation = [String]()
    var magneticField = [String]()
    
    var euler1 = [String]()
    var quaternion1 = [String]()
    var acceleration1 = [String]()
    var rotation1 = [String]()
    var magneticField1 = [String]()
    
    var euler2 = [String]()
    var quaternion2 = [String]()
    var acceleration2 = [String]()
    var rotation2 = [String]()
    var magneticField2 = [String]()
    
    var euler3 = [String]()
    var quaternion3 = [String]()
    var acceleration3 = [String]()
    var rotation3 = [String]()
    var magneticField3 = [String]()
    
    var euler4 = [String]()
    var quaternion4 = [String]()
    var acceleration4 = [String]()
    var rotation4 = [String]()
    var magneticField4 = [String]()
    
    var euler5 = [String]()
    var quaternion5 = [String]()
    var acceleration5 = [String]()
    var rotation5 = [String]()
    var magneticField5 = [String]()
    
    var euler6 = [String]()
    var quaternion6 = [String]()
    var acceleration6 = [String]()
    var rotation6 = [String]()
    var magneticField6 = [String]()
    
    

    @IBOutlet weak var deviceStatus: UILabel!
    
    @IBAction func Start(_ sender: Any) {
//        device.accelerometer?.dataReadyEvent.startNotificationsAsync { (obj, error) in
//            print("Acc data")
//            print(obj!)
//            }.success { result in
//                print("Successfully subscribed")
//            }.failure { error in
//                print("Error on subscribe: \(error)")
//        }
//        
//        device.gyro?.dataReadyEvent.startNotificationsAsync { (obj, error) in
//            print("Gyro data")
//            print(obj!)
//            }.success { result in
//                print("Successfully subscribed")
//            }.failure { error in
//                print("Error on subscribe: \(error)")
//        }
        
        device1.sensorFusion?.eulerAngle.startNotificationsAsync { (obj, error) in
            let x = String(describing: obj!)
            
            self.euler1.append(x)
            }.success { result in
                print("Successfully subscribed")
            }.failure { error in
                print("Error on subscribe: \(error)")
        }
        
        
        switch(sensorType){
            
        case "eulerAngle": device1.sensorFusion?.eulerAngle.startNotificationsAsync { (obj, error) in
            
            let x = String(describing: obj!)
            
            self.euler1.append(x)
            }.success { result in
                print("Successfully subscribed")
            }.failure { error in
                print("Error on subscribe: \(error)")
            }
        
        //if statement
        
        if(device2 != nil && sensor >= 2){
            device2.sensorFusion?.eulerAngle.startNotificationsAsync { (obj, error) in
                
                let x = String(describing: obj!)
                
                self.euler2.append(x)
                }.success { result in
                    print("Successfully subscribed")
                }.failure { error in
                    print("Error on subscribe: \(error)")
            }
            }
        if(device3 != nil && sensor >= 3){
            device3.sensorFusion?.eulerAngle.startNotificationsAsync { (obj, error) in
                
                let x = String(describing: obj!)
                
                self.euler3.append(x)
                }.success { result in
                    print("Successfully subscribed")
                }.failure { error in
                    print("Error on subscribe: \(error)")
            }
            }
        if(device4 != nil && sensor >= 4){
            device4.sensorFusion?.eulerAngle.startNotificationsAsync { (obj, error) in
                
                let x = String(describing: obj!)
                
                self.euler4.append(x)
                }.success { result in
                    print("Successfully subscribed")
                }.failure { error in
                    print("Error on subscribe: \(error)")
            }
            }
        if(device5 != nil && sensor >= 5){
            device5.sensorFusion?.eulerAngle.startNotificationsAsync { (obj, error) in
                
                let x = String(describing: obj!)
                
                self.euler5.append(x)
                }.success { result in
                    print("Successfully subscribed")
                }.failure { error in
                    print("Error on subscribe: \(error)")
            }
            }
        if(device6 != nil && sensor >= 6){
            device2.sensorFusion?.eulerAngle.startNotificationsAsync { (obj, error) in
                
                let x = String(describing: obj!)
                
                self.euler6.append(x)
                }.success { result in
                    print("Successfully subscribed")
                }.failure { error in
                    print("Error on subscribe: \(error)")
            }
            }
            
        case "quaternion": device1.sensorFusion?.quaternion.startNotificationsAsync { (obj, error) in
            
            let x = String(describing: obj!)
            
            self.quaternion1.append(x)
            }.success { result in
                print("Successfully subscribed")
            }.failure { error in
                print("Error on subscribe: \(error)")
        }
        
        //if statement
        
        if(device2 != nil && sensor >= 2){
            device2.sensorFusion?.quaternion.startNotificationsAsync { (obj, error) in
                
                let x = String(describing: obj!)
                
                self.quaternion2.append(x)
                }.success { result in
                    print("Successfully subscribed")
                }.failure { error in
                    print("Error on subscribe: \(error)")
            }
        }
        if(device3 != nil && sensor >= 3){
            device3.sensorFusion?.quaternion.startNotificationsAsync { (obj, error) in
                
                let x = String(describing: obj!)
                
                self.quaternion3.append(x)
                }.success { result in
                    print("Successfully subscribed")
                }.failure { error in
                    print("Error on subscribe: \(error)")
            }
        }
        if(device4 != nil && sensor >= 4){
            device4.sensorFusion?.quaternion.startNotificationsAsync { (obj, error) in
                
                let x = String(describing: obj!)
                
                self.quaternion4.append(x)
                }.success { result in
                    print("Successfully subscribed")
                }.failure { error in
                    print("Error on subscribe: \(error)")
            }
        }
        if(device5 != nil && sensor >= 5){
            device5.sensorFusion?.quaternion.startNotificationsAsync { (obj, error) in
                
                let x = String(describing: obj!)
                
                self.quaternion5.append(x)
                }.success { result in
                    print("Successfully subscribed")
                }.failure { error in
                    print("Error on subscribe: \(error)")
            }
        }
        if(device6 != nil && sensor >= 6){
            device2.sensorFusion?.quaternion.startNotificationsAsync { (obj, error) in
                
                let x = String(describing: obj!)
                
                self.quaternion6.append(x)
                }.success { result in
                    print("Successfully subscribed")
                }.failure { error in
                    print("Error on subscribe: \(error)")
            }
            }
            
        case "acceleration": device1.sensorFusion?.acceleration.startNotificationsAsync { (obj, error) in
            
            let x = String(describing: obj!)
            
            self.acceleration1.append(x)
            }.success { result in
                print("Successfully subscribed")
            }.failure { error in
                print("Error on subscribe: \(error)")
        }
        
        //if statement
        
        if(device2 != nil && sensor >= 2){
            device2.sensorFusion?.acceleration.startNotificationsAsync { (obj, error) in
                
                let x = String(describing: obj!)
                
                self.acceleration2.append(x)
                }.success { result in
                    print("Successfully subscribed")
                }.failure { error in
                    print("Error on subscribe: \(error)")
            }
        }
        if(device3 != nil && sensor >= 3){
            device3.sensorFusion?.acceleration.startNotificationsAsync { (obj, error) in
                
                let x = String(describing: obj!)
                
                self.acceleration3.append(x)
                }.success { result in
                    print("Successfully subscribed")
                }.failure { error in
                    print("Error on subscribe: \(error)")
            }
        }
        if(device4 != nil && sensor >= 4){
            device4.sensorFusion?.acceleration.startNotificationsAsync { (obj, error) in
                
                let x = String(describing: obj!)
                
                self.acceleration4.append(x)
                }.success { result in
                    print("Successfully subscribed")
                }.failure { error in
                    print("Error on subscribe: \(error)")
            }
        }
        if(device5 != nil && sensor >= 5){
            device5.sensorFusion?.acceleration.startNotificationsAsync { (obj, error) in
                
                let x = String(describing: obj!)
                
                self.acceleration5.append(x)
                }.success { result in
                    print("Successfully subscribed")
                }.failure { error in
                    print("Error on subscribe: \(error)")
            }
        }
        if(device6 != nil && sensor >= 6){
            device2.sensorFusion?.acceleration.startNotificationsAsync { (obj, error) in
                
                let x = String(describing: obj!)
                
                self.acceleration6.append(x)
                }.success { result in
                    print("Successfully subscribed")
                }.failure { error in
                    print("Error on subscribe: \(error)")
            }
            }
        
        case "rotation": device1.sensorFusion?.rotation.startNotificationsAsync { (obj, error) in
            
            let x = String(describing: obj!)
            
            self.rotation1.append(x)
            }.success { result in
                print("Successfully subscribed")
            }.failure { error in
                print("Error on subscribe: \(error)")
        }
        
        //if statement
        
        if(device2 != nil && sensor >= 2){
            device2.sensorFusion?.rotation.startNotificationsAsync { (obj, error) in
                
                let x = String(describing: obj!)
                
                self.rotation2.append(x)
                }.success { result in
                    print("Successfully subscribed")
                }.failure { error in
                    print("Error on subscribe: \(error)")
            }
        }
        if(device3 != nil && sensor >= 3){
            device3.sensorFusion?.rotation.startNotificationsAsync { (obj, error) in
                
                let x = String(describing: obj!)
                
                self.rotation3.append(x)
                }.success { result in
                    print("Successfully subscribed")
                }.failure { error in
                    print("Error on subscribe: \(error)")
            }
        }
        if(device4 != nil && sensor >= 4){
            device4.sensorFusion?.rotation.startNotificationsAsync { (obj, error) in
                
                let x = String(describing: obj!)
                
                self.rotation4.append(x)
                }.success { result in
                    print("Successfully subscribed")
                }.failure { error in
                    print("Error on subscribe: \(error)")
            }
        }
        if(device5 != nil && sensor >= 5){
            device5.sensorFusion?.rotation.startNotificationsAsync { (obj, error) in
                
                let x = String(describing: obj!)
                
                self.rotation5.append(x)
                }.success { result in
                    print("Successfully subscribed")
                }.failure { error in
                    print("Error on subscribe: \(error)")
            }
        }
        if(device6 != nil && sensor >= 6){
            device2.sensorFusion?.rotation.startNotificationsAsync { (obj, error) in
                
                let x = String(describing: obj!)
                
                self.rotation6.append(x)
                }.success { result in
                    print("Successfully subscribed")
                }.failure { error in
                    print("Error on subscribe: \(error)")
            }
            }
            
        case "magneticField": device1.sensorFusion?.magneticField.startNotificationsAsync { (obj, error) in
            
            let x = String(describing: obj!)
            
            self.magneticField1.append(x)
            }.success { result in
                print("Successfully subscribed")
            }.failure { error in
                print("Error on subscribe: \(error)")
        }
        
        //if statement
        
        if(device2 != nil && sensor >= 2){
            device2.sensorFusion?.magneticField.startNotificationsAsync { (obj, error) in
                
                let x = String(describing: obj!)
                
                self.magneticField2.append(x)
                }.success { result in
                    print("Successfully subscribed")
                }.failure { error in
                    print("Error on subscribe: \(error)")
            }
        }
        if(device3 != nil && sensor >= 3){
            device3.sensorFusion?.magneticField.startNotificationsAsync { (obj, error) in
                
                let x = String(describing: obj!)
                
                self.magneticField3.append(x)
                }.success { result in
                    print("Successfully subscribed")
                }.failure { error in
                    print("Error on subscribe: \(error)")
            }
        }
        if(device4 != nil && sensor >= 4){
            device4.sensorFusion?.magneticField.startNotificationsAsync { (obj, error) in
                
                let x = String(describing: obj!)
                
                self.magneticField4.append(x)
                }.success { result in
                    print("Successfully subscribed")
                }.failure { error in
                    print("Error on subscribe: \(error)")
            }
        }
        if(device5 != nil && sensor >= 5){
            device5.sensorFusion?.magneticField.startNotificationsAsync { (obj, error) in
                
                let x = String(describing: obj!)
                
                self.magneticField5.append(x)
                }.success { result in
                    print("Successfully subscribed")
                }.failure { error in
                    print("Error on subscribe: \(error)")
            }
        }
        if(device6 != nil && sensor >= 6){
            device2.sensorFusion?.magneticField.startNotificationsAsync { (obj, error) in
                
                let x = String(describing: obj!)
                
                self.magneticField6.append(x)
                }.success { result in
                    print("Successfully subscribed")
                }.failure { error in
                    print("Error on subscribe: \(error)")
            }
            }
            
        default: print("No sensor type selected")

        }
        
    }
    @IBAction func Stop(_ sender: Any) {
//        device.accelerometer?.dataReadyEvent.stopNotificationsAsync().success { result in
//            print("Successfully unsubscribed")
//            }.failure { error in
//                print("Error on unsubscribe: \(error)")
//        }
//        
//        device.gyro?.dataReadyEvent.stopNotificationsAsync().success { result in
//            print("Successfully unsubscribed")
//            }.failure { error in
//                print("Error on unsubscribe: \(error)")
//        }
//        
        switch(sensorType){
            
        case "eulerAngle": device1.sensorFusion?.eulerAngle.stopNotificationsAsync().success { result in
            print("Successfully unsubscribed")
            }.failure { error in
                print("Error on unsubscribe: \(error)")
        }
        
        //if statement
        
        if(device2 != nil && sensor >= 2){
            device2.sensorFusion?.eulerAngle.stopNotificationsAsync().success { result in
                print("Successfully unsubscribed")
                }.failure { error in
                    print("Error on unsubscribe: \(error)")
            }}

        if(device3 != nil && sensor >= 3){
            device3.sensorFusion?.eulerAngle.stopNotificationsAsync().success { result in
                print("Successfully unsubscribed")
                }.failure { error in
                    print("Error on unsubscribe: \(error)")
            }}

        if(device4 != nil && sensor >= 4){
            device4.sensorFusion?.eulerAngle.stopNotificationsAsync().success { result in
                print("Successfully unsubscribed")
                }.failure { error in
                    print("Error on unsubscribe: \(error)")
            }}

        if(device5 != nil && sensor >= 5){
            device5.sensorFusion?.eulerAngle.stopNotificationsAsync().success { result in
                print("Successfully unsubscribed")
                }.failure { error in
                    print("Error on unsubscribe: \(error)")
            }}

        if(device6 != nil && sensor >= 6){
            device2.sensorFusion?.eulerAngle.stopNotificationsAsync().success { result in
                print("Successfully unsubscribed")
                }.failure { error in
                    print("Error on unsubscribe: \(error)")
            }
            }
            
        case "quaternion": device1.sensorFusion?.quaternion.stopNotificationsAsync().success { result in
            print("Successfully unsubscribed")
            }.failure { error in
                print("Error on unsubscribe: \(error)")
        }
        
        //if statement
        
        if(device2 != nil && sensor >= 2){
            device2.sensorFusion?.quaternion.stopNotificationsAsync().success { result in
                print("Successfully unsubscribed")
                }.failure { error in
                    print("Error on unsubscribe: \(error)")
            }}
        
        if(device3 != nil && sensor >= 3){
            device3.sensorFusion?.quaternion.stopNotificationsAsync().success { result in
                print("Successfully unsubscribed")
                }.failure { error in
                    print("Error on unsubscribe: \(error)")
            }}
        
        if(device4 != nil && sensor >= 4){
            device4.sensorFusion?.quaternion.stopNotificationsAsync().success { result in
                print("Successfully unsubscribed")
                }.failure { error in
                    print("Error on unsubscribe: \(error)")
            }}
        
        if(device5 != nil && sensor >= 5){
            device5.sensorFusion?.quaternion.stopNotificationsAsync().success { result in
                print("Successfully unsubscribed")
                }.failure { error in
                    print("Error on unsubscribe: \(error)")
            }}
        
        if(device6 != nil && sensor >= 6){
            device2.sensorFusion?.quaternion.stopNotificationsAsync().success { result in
                print("Successfully unsubscribed")
                }.failure { error in
                    print("Error on unsubscribe: \(error)")
            }
            }
            
        case "acceleration": device1.sensorFusion?.acceleration.stopNotificationsAsync().success { result in
            print("Successfully unsubscribed")
            }.failure { error in
                print("Error on unsubscribe: \(error)")
        }
        
        //if statement
        
        if(device2 != nil && sensor >= 2){
            device2.sensorFusion?.acceleration.stopNotificationsAsync().success { result in
                print("Successfully unsubscribed")
                }.failure { error in
                    print("Error on unsubscribe: \(error)")
            }}
        
        if(device3 != nil && sensor >= 3){
            device3.sensorFusion?.acceleration.stopNotificationsAsync().success { result in
                print("Successfully unsubscribed")
                }.failure { error in
                    print("Error on unsubscribe: \(error)")
            }}
        
        if(device4 != nil && sensor >= 4){
            device4.sensorFusion?.acceleration.stopNotificationsAsync().success { result in
                print("Successfully unsubscribed")
                }.failure { error in
                    print("Error on unsubscribe: \(error)")
            }}
        
        if(device5 != nil && sensor >= 5){
            device5.sensorFusion?.acceleration.stopNotificationsAsync().success { result in
                print("Successfully unsubscribed")
                }.failure { error in
                    print("Error on unsubscribe: \(error)")
            }}
        
        if(device6 != nil && sensor >= 6){
            device2.sensorFusion?.acceleration.stopNotificationsAsync().success { result in
                print("Successfully unsubscribed")
                }.failure { error in
                    print("Error on unsubscribe: \(error)")
            }
            }

                
        case "rotation": device1.sensorFusion?.rotation.stopNotificationsAsync().success { result in
            print("Successfully unsubscribed")
            }.failure { error in
                print("Error on unsubscribe: \(error)")
        }
        
        //if statement
        
        if(device2 != nil && sensor >= 2){
            device2.sensorFusion?.rotation.stopNotificationsAsync().success { result in
                print("Successfully unsubscribed")
                }.failure { error in
                    print("Error on unsubscribe: \(error)")
            }}
        
        if(device3 != nil && sensor >= 3){
            device3.sensorFusion?.rotation.stopNotificationsAsync().success { result in
                print("Successfully unsubscribed")
                }.failure { error in
                    print("Error on unsubscribe: \(error)")
            }}
        
        if(device4 != nil && sensor >= 4){
            device4.sensorFusion?.rotation.stopNotificationsAsync().success { result in
                print("Successfully unsubscribed")
                }.failure { error in
                    print("Error on unsubscribe: \(error)")
            }}
        
        if(device5 != nil && sensor >= 5){
            device5.sensorFusion?.rotation.stopNotificationsAsync().success { result in
                print("Successfully unsubscribed")
                }.failure { error in
                    print("Error on unsubscribe: \(error)")
            }}
        
        if(device6 != nil && sensor >= 6){
            device2.sensorFusion?.rotation.stopNotificationsAsync().success { result in
                print("Successfully unsubscribed")
                }.failure { error in
                    print("Error on unsubscribe: \(error)")
            }
            }

            
        case "magneticField": device1.sensorFusion?.magneticField.stopNotificationsAsync().success { result in
            print("Successfully unsubscribed")
            }.failure { error in
                print("Error on unsubscribe: \(error)")
        }
        
        //if statement
        
        if(device2 != nil && sensor >= 2){
            device2.sensorFusion?.magneticField.stopNotificationsAsync().success { result in
                print("Successfully unsubscribed")
                }.failure { error in
                    print("Error on unsubscribe: \(error)")
            }}
        
        if(device3 != nil && sensor >= 3){
            device3.sensorFusion?.magneticField.stopNotificationsAsync().success { result in
                print("Successfully unsubscribed")
                }.failure { error in
                    print("Error on unsubscribe: \(error)")
            }}
        
        if(device4 != nil && sensor >= 4){
            device4.sensorFusion?.magneticField.stopNotificationsAsync().success { result in
                print("Successfully unsubscribed")
                }.failure { error in
                    print("Error on unsubscribe: \(error)")
            }}
        
        if(device5 != nil && sensor >= 5){
            device5.sensorFusion?.magneticField.stopNotificationsAsync().success { result in
                print("Successfully unsubscribed")
                }.failure { error in
                    print("Error on unsubscribe: \(error)")
            }}
        
        if(device6 != nil && sensor >= 6){
            device2.sensorFusion?.magneticField.stopNotificationsAsync().success { result in
                print("Successfully unsubscribed")
                }.failure { error in
                    print("Error on unsubscribe: \(error)")
            }
            }
            
        default: print("No sensor type selected")
        }
        
        
        

    
    }
    
    @IBAction func saveToFile(_ sender: Any) {
        
        if writeDataToFile(file: "data") {
            print("data written")
        } else {
            print("data not written")
        }
    }
    
    @IBAction func sendEmail(_ sender: Any) {
        
        if( MFMailComposeViewController.canSendMail() ) {
            
            let mailComposer = MFMailComposeViewController()
            mailComposer.mailComposeDelegate = self
            
            mailComposer.setSubject("Metawear Sensor Data")
            mailComposer.setMessageBody("Please find an attachment", isHTML: false)
            
            let fileName = "data" + ".txt"
            
            let tempPath = (NSTemporaryDirectory() + fileName)
            
            if let fileData = NSData(contentsOfFile: tempPath) {
                print("File data loaded.")
                mailComposer.addAttachmentData(fileData as Data, mimeType: "txt", fileName: "data")
            }
            
            self.present(mailComposer, animated: true, completion: nil)
            
            
            print("Can send email.")
        }
    }
    
//    func mailComposeController(controller: MFMailComposeViewController!, didFinishWithResult result: MFMailComposeResult, error: NSError!) {
//        controller.dismiss(animated: true, completion: nil)
//    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        // Dismiss the mail compose view controller.
        controller.dismiss(animated: true, completion: nil)
    }
    
    
    //var device: MBLMetaWear?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        
        device1.sensorFusion?.mode = MBLSensorFusionMode(rawValue: 1)!
        
        device1.addObserver(self, forKeyPath: "state", options: NSKeyValueObservingOptions.new, context: nil)
        device1.connect { error in
            NSLog("We are connected")
        }
        
        if(device2 != nil && sensor >= 2){
            
            device1.sensorFusion?.mode = MBLSensorFusionMode(rawValue: 1)!
            
            device1.addObserver(self, forKeyPath: "state", options: NSKeyValueObservingOptions.new, context: nil)
            device1.connect { error in
                NSLog("We are connected")
            }
            
            device2.sensorFusion?.mode = MBLSensorFusionMode(rawValue: 1)!
            
            device2.addObserver(self, forKeyPath: "state", options: NSKeyValueObservingOptions.new, context: nil)
            device2.connect { error in
                NSLog("We are connected")
            }
            
        }
        
        if(device3 != nil && sensor >= 3){
            device1.sensorFusion?.mode = MBLSensorFusionMode(rawValue: 1)!
            
            device1.addObserver(self, forKeyPath: "state", options: NSKeyValueObservingOptions.new, context: nil)
            device1.connect { error in
                NSLog("We are connected")
            }
            device2.sensorFusion?.mode = MBLSensorFusionMode(rawValue: 1)!
            
            device2.addObserver(self, forKeyPath: "state", options: NSKeyValueObservingOptions.new, context: nil)
            device2.connect { error in
                NSLog("We are connected")
            }
            
            device3.sensorFusion?.mode = MBLSensorFusionMode(rawValue: 1)!
            
            device3.addObserver(self, forKeyPath: "state", options: NSKeyValueObservingOptions.new, context: nil)
            device3.connect { error in
                NSLog("We are connected")
            }
        }
        
        if(device4 != nil && sensor >= 4){
            device1.sensorFusion?.mode = MBLSensorFusionMode(rawValue: 1)!
            
            device1.addObserver(self, forKeyPath: "state", options: NSKeyValueObservingOptions.new, context: nil)
            device1.connect { error in
                NSLog("We are connected")
            }
            device2.sensorFusion?.mode = MBLSensorFusionMode(rawValue: 1)!
            
            device2.addObserver(self, forKeyPath: "state", options: NSKeyValueObservingOptions.new, context: nil)
            device2.connect { error in
                NSLog("We are connected")
            }
            
            device3.sensorFusion?.mode = MBLSensorFusionMode(rawValue: 1)!
            
            device3.addObserver(self, forKeyPath: "state", options: NSKeyValueObservingOptions.new, context: nil)
            device3.connect { error in
                NSLog("We are connected")
            }
            device4.sensorFusion?.mode = MBLSensorFusionMode(rawValue: 1)!
            
            device4.addObserver(self, forKeyPath: "state", options: NSKeyValueObservingOptions.new, context: nil)
            device4.connect { error in
                NSLog("We are connected")
            }
            
        }
        
        if(device5 != nil && sensor >= 5){
            device1.sensorFusion?.mode = MBLSensorFusionMode(rawValue: 1)!
            
            device1.addObserver(self, forKeyPath: "state", options: NSKeyValueObservingOptions.new, context: nil)
            device1.connect { error in
                NSLog("We are connected")
            }
            device2.sensorFusion?.mode = MBLSensorFusionMode(rawValue: 1)!
            
            device2.addObserver(self, forKeyPath: "state", options: NSKeyValueObservingOptions.new, context: nil)
            device2.connect { error in
                NSLog("We are connected")
            }
            
            device3.sensorFusion?.mode = MBLSensorFusionMode(rawValue: 1)!
            
            device3.addObserver(self, forKeyPath: "state", options: NSKeyValueObservingOptions.new, context: nil)
            device3.connect { error in
                NSLog("We are connected")
            }
            
            device4.sensorFusion?.mode = MBLSensorFusionMode(rawValue: 1)!
            
            device4.addObserver(self, forKeyPath: "state", options: NSKeyValueObservingOptions.new, context: nil)
            device4.connect { error in
                NSLog("We are connected")
            }
            
            device5.sensorFusion?.mode = MBLSensorFusionMode(rawValue: 1)!
            
            device5.addObserver(self, forKeyPath: "state", options: NSKeyValueObservingOptions.new, context: nil)
            device5.connect { error in
                NSLog("We are connected")
            }

            
        }
        
        if(device6 != nil && sensor >= 6){
            device1.sensorFusion?.mode = MBLSensorFusionMode(rawValue: 1)!
            
            device1.addObserver(self, forKeyPath: "state", options: NSKeyValueObservingOptions.new, context: nil)
            device1.connect { error in
                NSLog("We are connected")
            }
            device2.sensorFusion?.mode = MBLSensorFusionMode(rawValue: 1)!
            
            device2.addObserver(self, forKeyPath: "state", options: NSKeyValueObservingOptions.new, context: nil)
            device2.connect { error in
                NSLog("We are connected")
            }
            
            device3.sensorFusion?.mode = MBLSensorFusionMode(rawValue: 1)!
            
            device3.addObserver(self, forKeyPath: "state", options: NSKeyValueObservingOptions.new, context: nil)
            device3.connect { error in
                NSLog("We are connected")
            }
            
            device4.sensorFusion?.mode = MBLSensorFusionMode(rawValue: 1)!
            
            device4.addObserver(self, forKeyPath: "state", options: NSKeyValueObservingOptions.new, context: nil)
            device4.connect { error in
                NSLog("We are connected")
            }
            
            device5.sensorFusion?.mode = MBLSensorFusionMode(rawValue: 1)!
            
            device5.addObserver(self, forKeyPath: "state", options: NSKeyValueObservingOptions.new, context: nil)
            device5.connect { error in
                NSLog("We are connected")
            }
            
            device6.sensorFusion?.mode = MBLSensorFusionMode(rawValue: 1)!
            
            device6.addObserver(self, forKeyPath: "state", options: NSKeyValueObservingOptions.new, context: nil)
            device6.connect { error in
                NSLog("We are connected")
            }

            
        }
        
           }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        device1.removeObserver(self, forKeyPath: "state")
        device1.led?.flashColorAsync(UIColor.red, withIntensity: 1.0, numberOfFlashes: 3)
        device1.disconnectAsync()
        
//        if(device2 != nil && sensor == 2){
//            device2.removeObserver(self, forKeyPath: "state")
//            device2.disconnectAsync()
//        }
//        
//        if(device3 != nil && sensor == 3){
//            device3.removeObserver(self, forKeyPath: "state")
//            device3.disconnectAsync()
//        }
//        
//        if(device4 != nil && sensor == 4){
//            device4.removeObserver(self, forKeyPath: "state")
//            device4.disconnectAsync()
//        }
//        if(device5 != nil && sensor == 5){
//            device5.removeObserver(self, forKeyPath: "state")
//            device5.disconnectAsync()
//        }
//        
//        if(device6 != nil && sensor == 6){
//            device6.removeObserver(self, forKeyPath: "state")
//            device6.disconnectAsync()
//        }
        
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        OperationQueue.main.addOperation {
            switch (device1.state) {
            case .connected:
                self.deviceStatus.text = "Connected";
            case .connecting:
                self.deviceStatus.text = "Connecting";
            case .disconnected:
                self.deviceStatus.text = "Disconnected";
            case .disconnecting:
                self.deviceStatus.text = "Disconnecting";
            case .discovery:
                self.deviceStatus.text = "Discovery";
            }
            
            if (device2 != nil && sensor == 2){
                switch (device2.state) {
                case .connected:
                    self.deviceStatus.text = "Connected Device 2";
                case .connecting:
                    self.deviceStatus.text = "Connecting";
                case .disconnected:
                    self.deviceStatus.text = "Disconnected";
                case .disconnecting:
                    self.deviceStatus.text = "Disconnecting";
                case .discovery:
                    self.deviceStatus.text = "Discovery";
                }
            }
            
            if (device3 != nil && sensor == 3){
                switch (device3.state) {
                case .connected:
                    self.deviceStatus.text = "Connected Device 3";
                case .connecting:
                    self.deviceStatus.text = "Connecting";
                case .disconnected:
                    self.deviceStatus.text = "Disconnected";
                case .disconnecting:
                    self.deviceStatus.text = "Disconnecting";
                case .discovery:
                    self.deviceStatus.text = "Discovery";
                }
            }
            
            if (device4 != nil && sensor == 4){
                switch (device4.state) {
                case .connected:
                    self.deviceStatus.text = "Connected Device 4";
                case .connecting:
                    self.deviceStatus.text = "Connecting";
                case .disconnected:
                    self.deviceStatus.text = "Disconnected";
                case .disconnecting:
                    self.deviceStatus.text = "Disconnecting";
                case .discovery:
                    self.deviceStatus.text = "Discovery";
                }
            }
            
            if (device5 != nil && sensor == 5){
                switch (device5.state) {
                case .connected:
                    self.deviceStatus.text = "Connected Device 5";
                case .connecting:
                    self.deviceStatus.text = "Connecting";
                case .disconnected:
                    self.deviceStatus.text = "Disconnected";
                case .disconnecting:
                    self.deviceStatus.text = "Disconnecting";
                case .discovery:
                    self.deviceStatus.text = "Discovery";
                }
            }
            
            
            if (device6 != nil && sensor == 6){
                switch (device6.state) {
                case .connected:
                    self.deviceStatus.text = "Connected Device 6";
                case .connecting:
                    self.deviceStatus.text = "Connecting";
                case .disconnected:
                    self.deviceStatus.text = "Disconnected";
                case .disconnecting:
                    self.deviceStatus.text = "Disconnecting";
                case .discovery:
                    self.deviceStatus.text = "Discovery";
                }
            }

        }
    }
    func writeDataToFile(file:String)-> Bool{
        
        var sendData: String?
        
        switch(sensorType){
            case "eulerAngle":
                sendData = "\n Euler 1 Data \n"
            
            for i in self.euler1 {
                sendData = (sendData! + "\n") + i
            }
            
            sendData = (sendData! + "\n") + "\n Euler 2 Data \n"
            
            for i in self.euler2 {
                sendData = (sendData! + "\n") + i
            }
            
            sendData = (sendData! + "\n") + "\n Euler 3 Data \n"
            
            for i in self.euler3 {
                sendData = (sendData! + "\n") + i
            }
            
            sendData = (sendData! + "\n") + "\n Euler 4 Data \n"
            
            for i in self.euler4 {
                sendData = (sendData! + "\n") + i
            }
            
            sendData = (sendData! + "\n") + "\n Euler 5 Data \n"
            
            for i in self.euler5 {
                sendData = (sendData! + "\n") + i
            }
            
            sendData = (sendData! + "\n") + "\n Euler 6 Data \n"
            
            for i in self.euler6 {
                sendData = (sendData! + "\n") + i
            }
            
        case "quaternion": sendData = "\n Quaternion 1 Data \n"
        
        for i in self.quaternion1 {
            sendData = (sendData! + "\n") + i
        }
        
        sendData = (sendData! + "\n") + "\n Quaternion 2 Data \n"
        
        for i in self.quaternion2 {
            sendData = (sendData! + "\n") + i
        }
        
        sendData = (sendData! + "\n") + "\n Quaternion 3 Data \n"
        
        for i in self.quaternion3 {
            sendData = (sendData! + "\n") + i
        }
        
        sendData = (sendData! + "\n") + "\n Quaternion 4 Data \n"
        
        for i in self.quaternion4 {
            sendData = (sendData! + "\n") + i
        }
        
        sendData = (sendData! + "\n") + "\n Quaternion 5 Data \n"
        
        for i in self.quaternion5 {
            sendData = (sendData! + "\n") + i
        }
        
        sendData = (sendData! + "\n") + "\n Quaternion 6 Data \n"
        
        for i in self.quaternion6 {
            sendData = (sendData! + "\n") + i
            }
            
        case "acceleration": sendData = "\n Acceleration 1 Data \n"
        
        for i in self.acceleration1 {
            sendData = (sendData! + "\n") + i
        }
        
        sendData = (sendData! + "\n") + "\n Acceleration 2 Data \n"
        
        for i in self.acceleration2 {
            sendData = (sendData! + "\n") + i
        }
        
        sendData = (sendData! + "\n") + "\n Acceleration 3 Data \n"
        
        for i in self.acceleration3 {
            sendData = (sendData! + "\n") + i
        }
        
        sendData = (sendData! + "\n") + "\n Acceleration 4 Data \n"
        
        for i in self.acceleration4 {
            sendData = (sendData! + "\n") + i
        }
        
        sendData = (sendData! + "\n") + "\n Acceleration 5 Data \n"
        
        for i in self.acceleration5 {
            sendData = (sendData! + "\n") + i
        }
        
        sendData = (sendData! + "\n") + "\n Acceleration 6 Data \n"
        
        for i in self.acceleration6 {
            sendData = (sendData! + "\n") + i
            }
            
        case "rotation": sendData = "\n Rotation 1 Data \n"
        
        for i in self.rotation1 {
            sendData = (sendData! + "\n") + i
        }
        
        sendData = (sendData! + "\n") + "\n Rotation 2 Data \n"
        
        for i in self.rotation2 {
            sendData = (sendData! + "\n") + i
        }
        
        sendData = (sendData! + "\n") + "\n Rotation 3 Data \n"
        
        for i in self.rotation3 {
            sendData = (sendData! + "\n") + i
        }
        
        sendData = (sendData! + "\n") + "\n Rotation 4 Data \n"
        
        for i in self.rotation4 {
            sendData = (sendData! + "\n") + i
        }
        
        sendData = (sendData! + "\n") + "\n Rotation 5 Data \n"
        
        for i in self.rotation5 {
            sendData = (sendData! + "\n") + i
        }
        
        sendData = (sendData! + "\n") + "\n Rotation 6 Data \n"
        
        for i in self.rotation6 {
            sendData = (sendData! + "\n") + i
            }
            
        case "magneticField": sendData = "\n Magnetic Field 1 Data \n"
        
        for i in self.magneticField1 {
            sendData = (sendData! + "\n") + i
        }
        
        sendData = (sendData! + "\n") + "\n Magnetic Field  2 Data \n"
        
        for i in self.magneticField2 {
            sendData = (sendData! + "\n") + i
        }
        
        sendData = (sendData! + "\n") + "\n Magnetic Field  3 Data \n"
        
        for i in self.magneticField3 {
            sendData = (sendData! + "\n") + i
        }
        
        sendData = (sendData! + "\n") + "\n Magnetic Field  4 Data \n"
        
        for i in self.magneticField4 {
            sendData = (sendData! + "\n") + i
        }
        
        sendData = (sendData! + "\n") + "\n Magnetic Field  5 Data \n"
        
        for i in self.magneticField5 {
            sendData = (sendData! + "\n") + i
        }
        
        sendData = (sendData! + "\n") + "\n Magnetic Field  6 Data \n"
        
        for i in self.magneticField6 {
            sendData = (sendData! + "\n") + i
            }
            
        default: print("No sensor type selected")
        }
        
        let fileName = file + ".txt"
        
        let tempPath = NSTemporaryDirectory() + fileName
        
        do {
            print("SendData is: \(sendData)" )
            try (sendData!).write(toFile: tempPath, atomically: true, encoding: String.Encoding.utf8)
            return true
        } catch let error as NSError{
            print(error.description)
            return false
        }
        
    }

}
