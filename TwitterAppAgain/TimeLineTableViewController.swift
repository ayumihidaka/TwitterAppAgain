//
//  TimeLineTableViewController.swift
//  TwitterAppAgain
//
//  Created by あゆみ on 2015/09/19.
//  Copyright (c) 2015年 あゆみ. All rights reserved.
//

import UIKit

class TimeLineTableViewController: UITableViewController {
    
    let dataArray:[[String:String]] = [["title":"タイトル1"],["title":"タイトル2"]]
    
    //テーブルの件数を登録
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    //テーブルの内容を代入
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //セルを内部的にリサイクルしているのでこちらが必須になります。
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! TimeLineTableViewCell
        
        cell.tweetLabel.text = dataArray[indexPath.row]["title"]
        
        return cell
    }
    
}