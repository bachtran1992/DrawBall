//
//  ViewController.swift
//  DrawBall
//
//  Created by iOS Student on 9/28/16.
//  Copyright © 2016 iOS Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fieldText: UITextField!
   
    
    var n = 0
    var _margin: CGFloat = 60
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.fieldText.keyboardType = UIKeyboardType.numberPad
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func BallButton(_ sender: UITextField) {
        n = Int(fieldText.text!)!
            drawRowOfBall()
    }
    func drawRowOfBall(){
        for indexHang in 0..<n {
            for indexCot in 0..<n{
            let image = UIImage(named: "greenball")
            let ball = UIImageView(image: image)
            ball.center = CGPoint(x: _margin + CGFloat(indexHang) * spaceBetweenBall(),y: CGFloat(indexCot)*spaceBall() + _margin)
            self.view.addSubview(ball)
        }
        }
    }
    
    func spaceBetweenBall() -> CGFloat {
        let space = (self.view.bounds.size.width - 2*_margin)/CGFloat(n-1)
        return space
    }
    func spaceBall() -> CGFloat {
        let space2 = (self.view.bounds.size.height - 2*_margin)/CGFloat(n-1)
        return space2
}
}
