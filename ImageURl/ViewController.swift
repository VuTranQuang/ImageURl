//
//  ViewController.swift
//  ImageURl
//
//  Created by Vũ on 3/1/19.
//  Copyright © 2019 Vũ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImage: UIImageView!
    
    var url = URL(string: "https://i.pinimg.com/originals/92/67/6e/92676ee0d327145c2d6318023474c274.jpg")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let data = try! Data(contentsOf: url!)
        myImage.image = UIImage(data: data)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

