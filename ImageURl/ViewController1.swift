//
//  ViewController1.swift
//  ImageURl
//
//  Created by Vũ on 3/1/19.
//  Copyright © 2019 Vũ. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var imageViewController1: UIImageView!
    
    var url = URL(string: "https://i.pinimg.com/originals/92/67/6e/92676ee0d327145c2d6318023474c274.jpg")
    override func viewDidLoad() {
        super.viewDidLoad()
//        let data = try! Data(contentsOf: url!)
//        imageViewController1.image = UIImage(data: data)
        imageViewController1.load(url: url!)
    }

   

   

}
extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async {
            [weak self]  in
            if let data = try? Data(contentsOf: url) {
                
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
