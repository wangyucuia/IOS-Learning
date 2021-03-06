//
//  ChargingRecordController.swift
//  ElectricStationBoard
//
//  Created by Galaxy on 16/5/22.
//  Copyright © 2016年 Iris. All rights reserved.
//

import UIKit

class ChargingRecordController: UITableViewController {

 
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBarHidden = false;
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1;
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1;
    }
    

 
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuse", forIndexPath: indexPath)
        cell.imageView?.image = UIImage(named: "me_charging_list_pls@2x.png");
        let label1 = UILabel();
        label1.text = "充电金额:";
        label1.font = UIFont(name: "Helvetica", size: 11);
        let label2 = UILabel();
        label2.text = "充电电量:";
        label2.font = UIFont(name: "Helvetica", size: 11);
        let label3 = UILabel();
        label3.text = "充电耗时:";
        label3.font = UIFont(name: "Helvetica", size: 11);
        let companyImage = UIImageView();
        companyImage.image = UIImage(named: "carr_guowang_hl@3x.png");
        let label4 = UILabel();
        label4.text = "北京电力公司";
        label4.font = UIFont(name: "Helvetica", size: 11);
        label4.textColor = UIColor.lightGrayColor();
        
        label1.frame = CGRectMake(150, 5, 80, 20);
        label2.frame = CGRectMake(150, 30, 80, 20);
        label3.frame = CGRectMake(150, 55, 80, 20);
        companyImage.frame = CGRectMake(150, 80, 15, 15);
        label4.frame = CGRectMake(170, 75, 100, 30);
        
        cell.contentView.addSubview(label1);
        cell.contentView.addSubview(label2);
        cell.contentView.addSubview(label3);
        cell.contentView.addSubview(label4);
        cell.contentView.addSubview(companyImage);
        


        return cell
    }
 
    //cell的高度
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 110;
    }

    //tableview header
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let myView = UIView();
        myView.backgroundColor = UIColor.whiteColor();
        var label = UILabel();
        label.text = "昌平文化区供电所公共充电点";
        label.font = UIFont(name: "Helvetica", size: 15);
        label.frame = CGRectMake(10, 0, 250, 22);
        myView.addSubview(label);
        var label2 = UILabel();
        label2.text = "2016-5-23 00:00:00";
        label2.frame = CGRectMake(280, 0, 100, 20);
        label2.font = UIFont(name: "Helvetica", size: 10);
        myView.addSubview(label2)
        return myView;
    }
    
    //tableview footer
    override func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let myview = UIView();
        myview.backgroundColor = UIColor.init(red: 230, green: 230, blue: 230, alpha: 0);
        return myview;
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
