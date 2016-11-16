//
//  ViewController.swift
//  ImageScroll
//
//  Created by Diego Go on 10/2/16.
//  Copyright © 2016 Diego Go. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var MainScrollView: UIImageView!

    var ImageArray = [UIImage]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        ImageArray = [#imageLiteral(resourceName: "Screen Shot 2016-08-20 at 12.44.20 PM"),#imageLiteral(resourceName: "Screen Shot 2016-08-20 at 9.34.25 AM"),#imageLiteral(resourceName: "Screen Shot 2016-08-20 at 12.47.46 PM"),#imageLiteral(resourceName: "Screen Shot 2016-08-20 at 9.34.57 AM")]
        
        //criamos um for para realizar a aleitar das imagens
        
        for i in 0..<ImageArray.count{
            
            let imageView = UIImageView()
            imageView.image = ImageArray[i]
            //position de i
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.MainScrollView.frame.width, height: self.MainScrollView.frame.height)
            
            MainScrollView.contentSize = MainScrollView.frame.width * CGFloat(i + 1)
            MainScrollView.addSubview(imageView)
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

