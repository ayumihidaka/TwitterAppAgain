//
//  TimeLineTableViewController.swift
//  TwitterAppAgain
//
//  Created by あゆみ on 2015/09/19.
//  Copyright (c) 2015年 あゆみ. All rights reserved.
//

import UIKit

class TimeLineTableViewController: UITableViewController {
    //https://pbs.twimg.com/profile_images/459921170251264000/ax4FMwXA.jpeg
    //http://pic.prepics-cdn.com/4a32cbc7bdf5/8064422.gif
    let dataArray:[[String:String]] = [
        ["title":"タイトル1","image":"http://blog-imgs-56.fc2.com/r/o/e/roenvy/2014112013153672a.gif"],
        ["title":"タイトル2","image":"http://pds.exblog.jp/logo/1/200509/01/93/e006369320070720115807.gif"]
    ]
    
    //テーブルの件数を登録
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    //テーブルの内容を代入
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //セルを内部的にリサイクルしているのでこちらが必須になります。
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! TimeLineTableViewCell
        
        cell.tweetLabel.text = dataArray[indexPath.row]["title"]
        
        
        if let imageURLString = dataArray[indexPath.row]["image"]
        ,let imageURL = NSURL(string: imageURLString){
            
        cell.iconimageView.sd_setImageWithURL(imageURL)
            
        }
        
        return cell
    }
    
}