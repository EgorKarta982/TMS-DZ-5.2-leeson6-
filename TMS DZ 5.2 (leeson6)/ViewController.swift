//
//  ViewController.swift
//  TMS DZ 5.2 (leeson6)
//
//  Created by Егор on 13.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var upButton: UIButton!
    @IBOutlet var downButton: UIButton!
    @IBOutlet var leftButton: UIButton!
    @IBOutlet var rightButton: UIButton!
    let circleView =  UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        circleView.frame = CGRect(x: view.frame.width / 2 - 50, y: view.frame.height / 2 - 50, width: 100, height: 100)
        circleView.layer.cornerRadius = circleView.frame.width / 2
        circleView.backgroundColor = .brown
        self.view.addSubview(circleView)
   
    }

    @IBAction func upButtonPressed(_ sender: UIButton) {
        if circleView.frame.origin.y - 20 < 0 {return}
        circleView.frame.origin.y -= 20
    }
    @IBAction func downButtonPressed(_ sender: UIButton) {
        if circleView.frame.origin.y + 120 > self.upButton.frame.origin.y {return}
        circleView.frame.origin.y += 20
    }
    @IBAction func leftButtonPressed(_ sender: UIButton) {
        if circleView.frame.origin.x - 20 < 0 {return}
        circleView.frame.origin.x -= 20
    }
    @IBAction func rightButtonPressed(_ sender: UIButton) {
        if circleView.frame.origin.x + 120 > view.frame.width{return}
        circleView.frame.origin.x += 20
       
    }
    
}

