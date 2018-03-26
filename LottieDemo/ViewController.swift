//
//  ViewController.swift
//  LottieDemo
//
//  Created by Raunak Talwar on 26/03/18.
//  Copyright © 2018 Raunak Talwar. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let animationView = LOTAnimationView(name: "Whiteplane")
        animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        animationView.center = self.view.center
        animationView.contentMode = .scaleAspectFill
        animationView.loopAnimation = true
        animationView.animationSpeed = 0.5

        // Applying UIView animation
        let minimizeTransform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        animationView.transform = minimizeTransform
        UIView.animate(withDuration: 3.0, delay: 0.0, options: [.autoreverse, .repeat], animations: {
            animationView.transform = CGAffineTransform.identity
        }, completion: nil)

//        let rotateTransform = CGAffineTransform(rotationAngle: 45.0)
//        animationView.transform = rotateTransform
        view.addSubview(animationView)
        animationView.play()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

