//
//  BookDetailTableViewController.swift
//  DoubanDemo
//
//  Created by 庄鸣真 on 2016/10/17.
//  Copyright © 2016年 Frank Zhuang. All rights reserved.
//

import UIKit
import Kingfisher
import Just

class BookDetailTableViewController: UITableViewController {
    let searchUrl = "https://api.douban.com/v2/book/search?count=10&q=ios%20%E5%BC%80%E5%8F%91"
    var booklist : [BookInfo] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        loadList()
        //tableView自带下拉刷新
        self.refreshControl = UIRefreshControl()
        refreshControl?.addTarget(self, action: #selector(loadList), for: .valueChanged)
    }

    func loadList() {
        Just.get(searchUrl) { (r) in
            guard let json = r.json as? NSDictionary else {
                print("没有数据啊！！！")
                return
            }
            
            let books = SearchBook(fromDictionary: json).books!
            
            self.booklist = books.map({ (book) -> BookInfo in
                //数组转换数组 直接在 map 中用闭包
                return BookInfo(images: book.images.large, title: book.title, isbn13: book.isbn13, url: book.url, summary: book.summary)
            })

            dump(self.booklist)
            
            OperationQueue.main.addOperation {
                self.tableView.reloadData()
                self.refreshControl?.endRefreshing()
            }
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return booklist.count
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath) as! BookDetailTableViewCell
        let book = booklist[indexPath.row]
        let imgUrl = URL(string: book.images)
        cell.imgBook.kf.setImage(with: imgUrl)
        cell.labelTitle.text = book.title
    
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let dest = segue.destination as! ViewController
        dest.book = booklist[(tableView.indexPathForSelectedRow?.row)!]
    }
 

}
