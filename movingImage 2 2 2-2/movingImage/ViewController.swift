//
//  ViewController.swift
//  movingImage
//
// 
//  Copyright © 2020 ASU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer : Timer?
    
    var counter  = 10
    
    var appleCounter = 0
    
    @IBOutlet weak var rb: UIButton!
    
    @IBOutlet weak var lb: UIButton!
    @IBOutlet weak var db: UIButton!
    
    @IBOutlet weak var upb: UIButton!
    
    @IBOutlet weak var timelabel: UILabel!
    
    @IBOutlet weak var bananaImage: UIImageView!
    @IBOutlet weak var monkey: UIImageView!
    
    
    @IBOutlet weak var apple1: UIImageView!
    
    @IBOutlet weak var apple2: UIImageView!
    
    
    @IBOutlet weak var apple3: UIImageView!
    
    @IBOutlet weak var apple4: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.count), userInfo: nil, repeats: true)
        
    self.monkey.image = UIImage(named: "appleMonkey.jpeg")
        
       self.bananaImage.image = UIImage(named: "banana.jpg")
        
        self.apple1.image = UIImage(named : "apple1.jpg")
        
        self.apple2.image = UIImage(named : "apple2.jpg")

        self.apple3.image = UIImage(named : "apple3.jpg")

        self.apple4.image = UIImage(named : "apple4.jpg")

        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func up(_ sender: UIButton) {
        
        var frame  = self.monkey.frame
        frame.origin.y -= 40
        self.monkey.frame =  frame
        
        if(viewIntersectsView(monkey, second_View: bananaImage))
        {
            self.bananaImage.isHidden = true
            appleCounter = appleCounter + 1
        }
        if(viewIntersectsView(monkey, second_View: apple1))
        {
            self.apple1.isHidden = true
            appleCounter = appleCounter + 1
        }
        if(viewIntersectsView(monkey, second_View: apple2))
        {
            self.apple2.isHidden = true
            appleCounter = appleCounter + 1
        }
        if(viewIntersectsView(monkey, second_View: apple3))
        {
            self.apple3.isHidden = true
            appleCounter = appleCounter + 1
        }
        if(viewIntersectsView(monkey, second_View: apple4))
        {
            self.apple4.isHidden = true
            appleCounter = appleCounter + 1
        }
    }
    
    @IBAction func left(_ sender: UIButton) {
        
        var frame  = self.monkey.frame
        frame.origin.x -= 30
        self.monkey.frame =  frame
        
        if(viewIntersectsView(monkey, second_View: bananaImage))
        {
            self.bananaImage.isHidden = true
            appleCounter = appleCounter + 1

        }
        
        if(viewIntersectsView(monkey, second_View: apple1))
        {
            self.apple1.isHidden = true
            appleCounter = appleCounter + 1
        }
        if(viewIntersectsView(monkey, second_View: apple2))
        {
            self.apple2.isHidden = true
            appleCounter = appleCounter + 1
        }
        if(viewIntersectsView(monkey, second_View: apple3))
        {
            self.apple3.isHidden = true
            appleCounter = appleCounter + 1
        }
        if(viewIntersectsView(monkey, second_View: apple4))
        {
            self.apple4.isHidden = true
            appleCounter = appleCounter + 1
        }
    }

    @IBAction func right(_ sender: UIButton) {
    
        var frame  = self.monkey.frame
        frame.origin.x += 30
        self.monkey.frame =  frame
        
        if(viewIntersectsView(monkey, second_View: bananaImage))
        {
            self.bananaImage.isHidden = true
            appleCounter = appleCounter + 1

        }
        if(viewIntersectsView(monkey, second_View: apple1))
        {
            self.apple1.isHidden = true
            appleCounter = appleCounter + 1
        }
        if(viewIntersectsView(monkey, second_View: apple2))
        {
            self.apple2.isHidden = true
            appleCounter = appleCounter + 1
        }
        if(viewIntersectsView(monkey, second_View: apple3))
        {
            self.apple3.isHidden = true
            appleCounter = appleCounter + 1
        }
        if(viewIntersectsView(monkey, second_View: apple4))
        {
            self.apple4.isHidden = true
            appleCounter = appleCounter + 1
        }
    
    }
    
    @IBAction func down(_ sender: UIButton) {
        
        var frame  = self.monkey.frame
        frame.origin.y += 40
        self.monkey.frame =  frame
        
        if(viewIntersectsView(monkey, second_View: bananaImage))
        {
            self.bananaImage.isHidden = true
            appleCounter = appleCounter + 1

        }
        if(viewIntersectsView(monkey, second_View: apple1))
        {
            self.apple1.isHidden = true
            appleCounter = appleCounter + 1
        }
        if(viewIntersectsView(monkey, second_View: apple2))
        {
            self.apple2.isHidden = true
            appleCounter = appleCounter + 1
        }
        if(viewIntersectsView(monkey, second_View: apple3))
        {
            self.apple3.isHidden = true
            appleCounter = appleCounter + 1
        }
        if(viewIntersectsView(monkey, second_View: apple4))
        {
            self.apple4.isHidden = true
            appleCounter = appleCounter + 1
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewIntersectsView(_ first_View: UIView, second_View:UIView) -> Bool
    {
        return first_View.frame.intersects(second_View.frame)
   }
    
    @objc func count()
    {
        counter -= 1
        timelabel.text  = String( counter)
        
        if counter == 0 {
            timer?.invalidate()
            upb.isEnabled = false
            db.isEnabled = false
            rb.isEnabled = false
            lb.isEnabled = false
            print(appleCounter)
            if(appleCounter >= 400 )
            {
                timelabel.font = UIFont(name: "Arial" , size: 17)
                timelabel.text = "Winner!"
            }
            else
            {
                timelabel.text = "You lose!"
            }
          
        }
    }

}
