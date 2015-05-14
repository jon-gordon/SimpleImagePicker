//
//  ViewController.swift
//  Simple Image Picker
//
//  Created by Jon Gordon on 14/05/2015.
//  Copyright (c) 2015 JonGor Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func experiment(sender: UIButton) {
        let nextController = UIImagePickerController()
        self.presentViewController(nextController, animated: true, completion: nil)
    }

    @IBAction func experiment2(sender: UIButton) {
        let image = UIImage()
        let nextController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        self.presentViewController(nextController, animated: true, completion: nil)
    }

    @IBAction func experiment3(sender: UIButton) {
        let nextController = UIAlertController()
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) {
            action in self.dismissViewControllerAnimated(true, completion: nil)
        }
        nextController.addAction(okAction)
        self.presentViewController(nextController, animated: true, completion: nil)
    }
}

