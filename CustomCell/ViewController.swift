//
//  ViewController.swift
//  CustomCell
//
//  Created by Alivelu Ravula on 4/4/18.
//  Copyright © 2018 Alivelu Ravula. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var tblView:UITableView?
//
//    var actorsArray=[CellCustom(),kajal()] as [Any]
//    var cricArry=[Dhoni(),virat()] as [Any]
//    var partArray=[Bjp(),Congress()] as [Any]
//
//
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblView=UITableView(frame:CGRect(x: 0, y: 30, width: self.view.bounds.size.width , height: self.view.bounds.size.height), style:UITableViewStyle.plain)
        
        tblView?.delegate=self
        tblView?.dataSource=self
        
        self.view.addSubview(tblView!)
        
        tblView?.register(CellCustom.self, forCellReuseIdentifier: "CellCustom")
        var cell = UINib(nibName:"CellCustom", bundle:nil)
        tblView?.register(cell, forCellReuseIdentifier: "CellCustom")
        
        
        tblView?.register(kajal.self, forCellReuseIdentifier: "kajal")
        var cell2 = UINib(nibName:"kajal", bundle:nil)
        tblView?.register(cell2, forCellReuseIdentifier: "kajal")
        
        tblView?.register(Dhoni.self, forCellReuseIdentifier: "Dhoni")
        var cell3=UINib(nibName:"Dhoni",bundle:nil)
        tblView?.register(cell3, forCellReuseIdentifier:"Dhoni")
        
        tblView?.register(virat.self, forCellReuseIdentifier: "virat")
        var cell4=UINib(nibName:"virat", bundle:nil)
        tblView?.register(cell4, forCellReuseIdentifier: "virat")
        
        
        tblView?.register(Bjp.self, forCellReuseIdentifier: "Bjp")
        var cell5=UINib(nibName:"Bjp", bundle:nil)
        tblView?.register(cell5, forCellReuseIdentifier: "Bjp")
        
        
        tblView?.register(Congress.self, forCellReuseIdentifier: "Congress")
        var cell6=UINib(nibName:"Congress", bundle:nil)
        tblView?.register(cell6, forCellReuseIdentifier: "Congress")
        
        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section==0)
        {
            return 2
        }
        else if(section==1)
        {
            return 2

        }
        else if(section==2)
        {
            return 2
            
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var tblCell = UITableViewCell()
        if(indexPath.section==0)
        {
        if(indexPath.row==0)
        {
        let cell=tblView?.dequeueReusableCell(withIdentifier: "CellCustom", for: indexPath) as! CellCustom
            return cell
        }
        else if(indexPath.row==1)
        {
            let cell=tblView?.dequeueReusableCell(withIdentifier: "kajal", for: indexPath) as! kajal
       return cell
        }
        }
        else if(indexPath.section==1)
        {
            if(indexPath.row==0)
            {
                let cell=tblView?.dequeueReusableCell(withIdentifier: "Dhoni", for: indexPath) as! Dhoni
                return cell
            }
            else if(indexPath.row==1)
            {
                let cell=tblView?.dequeueReusableCell(withIdentifier: "virat", for: indexPath) as! virat
                return cell
            }
        }
            else if(indexPath.section==2)
        {
            if(indexPath.row==0)
            {
                let cell = tblView?.dequeueReusableCell(withIdentifier: "Bjp", for: indexPath) as! Bjp
                return cell
                }
            else if(indexPath.row==1)
            {
                let cell = tblView?.dequeueReusableCell(withIdentifier: "Congress", for: indexPath) as! Congress
                return cell
            }
            
        }
            
        
        return tblCell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 260
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

