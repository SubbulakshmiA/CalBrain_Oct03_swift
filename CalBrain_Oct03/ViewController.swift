//
//  ViewController.swift
//  CalBrain_Oct03
//
//  Created by user243757 on 10/3/23.
//

import UIKit

class ViewController: UIViewController {

//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }

    var myModel = CalBrain()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myModel.addItems(number: 4)
        myModel.addItems(number: 6)
       var res = myModel.calculate(opr : "*")
        print(res)
        // Do any additional setup after loading the view.
    }
}

class CalBrain{
//    var items : NSMutableArray = []
    lazy var items2 = NSMutableArray()
  //  var id
    
//    init(items: NSMutableArray = NSMutableArray()) {
////        self.items = items
//        items.add(4)
//    }
    
    func addItems(number :Double){
        items2.add(number)
    }
    
    func popItem()->Double?{

        if(items2.count > 0){
            var poped = items2.lastObject
            items2.removeLastObject()
            return  poped as? Double

        }else{
            return -1
        }
    }
   
    func calculate(opr:String)->Double{
        var result = 0.0
        
        switch (opr){
        case "+":
            if let v11 = self.popItem(), let v22 = self.popItem(){
                result = v11+v22
            }
        case "-":
            if let v11 = self.popItem(), let v22 = self.popItem(){
                result = v11 - v22
            }
        case "*":
            if let v11 = self.popItem(), let v22 = self.popItem(){
                result = v11*v22
            }
        case "/":
            if let v11 = self.popItem(), let v22 = self.popItem(){
                result = v11/v22
            }
        default:
            result = 0
        }
        
        return result
    }
    
}


