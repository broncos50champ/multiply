//
//  ViewController.swift
//  multiply
//
//  Created by Luis Segovia on 2/14/22.
//

import UIKit

class ViewController: UIViewController {


    
        
    
    @IBOutlet weak var displayProduct: UILabel!
 
    @IBOutlet weak var number1: UITextField!
    
    @IBOutlet weak var number2: UITextField!
    
    
    
    
override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    assignbackground()
    }

    
    func assignbackground()  {
        let background = UIImage (named: "car")
        var imageView  : UIImageView
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode = UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }
    
    
    
    
    
    
    
    @IBAction func bmwi8(_ sender: Any) {
        
        //the doubble ? optional,witch means the code will give it a default a value to the right of the ? if the user types in bad data.
        var first1 = number1.text ?? ""
        
        var first12 = number2.text ?? ""
        var firstnum = Int(first1) ?? 0
        var secondnum = Int(first12) ?? 0
            var multiply = firstnum * secondnum
        displayProduct.text = "\(multiply) "
        
        
    }
    
}

