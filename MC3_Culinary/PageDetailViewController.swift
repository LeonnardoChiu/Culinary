//
//  PageDetailViewController.swift
//  MC3_Culinary
//
//  Created by Dionisius Ario Nugroho on 22/08/19.
//  Copyright © 2019 Leonnardo Benjamin Hutama. All rights reserved.
//

import UIKit

class PageDetailViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var funFact: UILabel!
    
    var image: [String] = ["makanan1", "makanan2", "makanan3"]
    var frame = CGRect(x:0, y:0, width: 0, height: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControl.numberOfPages = image.count
        for index in 0..<image.count{
            frame.origin.x = scrollView.frame.size.width * CGFloat(index)
            frame.size = scrollView.frame.size
            
            let imgView = UIImageView(frame: frame)
            imgView.image = UIImage(named: image[index])
            self.scrollView.addSubview(imgView)
        }
        scrollView.contentSize = CGSize(width: (scrollView.frame.size.width * CGFloat(image.count)), height: scrollView.frame.size.height)
        scrollView.delegate = self
        //        funFact.text = """
        //        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget ex eros. Praesent accumsan a ligula ut tempus. Proin varius justo id arcu interdum, ut sodales orci dictum. Pellentesque varius interdum nulla, ut vestibulum massa pharetra id. Integer suscipit iaculis sem, nec dictum libero mollis quis. Vivamus finibus tempus mollis. Quisque at convallis dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.
        //
        //        Pellentesque odio orci, auctor sollicitudin molestie id, imperdiet et ipsum. Curabitur vehicula diam non tempor tempus. Ut lacinia lacus a dolor dignissim, eget cursus dolor suscipit. Nulla et vehicula dolor, ac laoreet magna. Integer dictum fermentum velit at sodales. Etiam consequat sapien tincidunt odio faucibus cursus. Aliquam imperdiet aliquam faucibus. Pellentesque in nisi et ex malesuada semper. Donec eget pretium nunc. Quisque fermentum laoreet nunc eu placerat.
        //        """
        
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = scrollView.contentOffset.x / scrollView.frame.width
        pageControl.currentPage = Int(pageNumber)
    }

}
