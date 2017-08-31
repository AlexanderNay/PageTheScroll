//
//  ViewController.swift
//  PageTheScroll
//
//  Created by AlexanderN on 25.08.17.
//  Copyright © 2017 AlexanderN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var images = [UIImageView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var contentWidth: CGFloat = 0.0
        
        let scrollWidth = scrollView.frame.size.width
        
        for x in 0..<3 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            var newX: CGFloat = 0.0
            
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.height / 2) - 75, width: 150, height: 150)
        }
        contentWidth = scrollView.frame.size.width * CGFloat(images.count)
        scrollView.contentSize = CGSize(width: contentWidth, height: scrollView.frame.size.height)
        scrollView.clipsToBounds = false
        //scrollView.contentInset = UIEdgeInsets(top: 0, left: 80, bottom: 0, right: 80)
        print("Count: \(images.count)")
        print("ScrollView width \(scrollView.frame.width)")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

