//
//  ViewController.swift
//  scrollviewsPractice
//
//  Created by Evan on 2/21/17.
//  Copyright © 2017 Evan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var images = [UIImageView]()
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var contentWidth: CGFloat = 0.0
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = scrollView.frame.size.width / 2 + scrollView.frame.size.width * CGFloat(x)
            contentWidth += newX
            
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height / 2) - 75, width: 150, height: 150)
        }
        scrollView.clipsToBounds = false
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }


}

