//
//  ViewController.swift
//  DoubanDemo
//
//  Created by 庄鸣真 on 2016/10/17.
//  Copyright © 2016年 Frank Zhuang. All rights reserved.
//

import UIKit
import Kingfisher
class ViewController: UIViewController {
    var book : BookInfo!
    
    @IBOutlet weak var imgBook: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var tvSummary: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadBookInfo()
    }

    func loadBookInfo() {
        if let bookInfo = book {
            let imgUrl = URL(string: bookInfo.images)
            imgBook.kf.setImage(with: imgUrl)
            tvSummary.text = bookInfo.summary
            labelTitle.text = bookInfo.title
//            labelTitle.sizeToFit()
            labelTitle.textAlignment = NSTextAlignment.center
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

