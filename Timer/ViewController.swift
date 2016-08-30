//
//  ViewController.swift
//  Timer
//
//  Created by KoDookie on 8/30/2559 BE.
//  Copyright © 2559 KoDookie. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationBarDelegate {
    var SwiftTimer = NSTimer()
    var SwiftCounter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countingLabel.text = String(SwiftCounter)// Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var countingLabel: UILabel!
    @IBAction func clearButton(sender: AnyObject) {
        SwiftTimer.invalidate()
        SwiftCounter = 0
        countingLabel.text = String(SwiftCounter)
    }
    
    @IBAction func startButton(sender: AnyObject) {
       SwiftTimer = NSTimer.scheduledTimerWithTimeInterval(1, target:self, selector: #selector(ViewController.updateCounter), userInfo: nil, repeats: true)
    }
    
    func updateCounter(){
        SwiftCounter = SwiftCounter+1
        countingLabel.text = String(SwiftCounter)
    }
    
    @IBAction func pauseButton(sender: AnyObject) {
        SwiftTimer.invalidate()
    }
    
    func positionForBar(bar: UIBarPositioning) -> UIBarPosition {
        return .TopAttached
    }
}


