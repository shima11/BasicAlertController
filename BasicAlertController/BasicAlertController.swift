//
//  BasicAlertController.swift
//  BasicAlertController
//
//  Created by shima jinsei on 2016/09/28.
//  Copyright © 2016年 Jinsei Shima. All rights reserved.
//

import UIKit


public class BasicAlertController: UIAlertController {
    
    public class func test() {
        print("hello framework")
    }
    //static let controller = BasicAlertController()
    
//    required public init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
}


//
//  EZAlertView.swift
//  EZAlertView
//
//  Created by Furkan Yilmaz on 11/11/15.
//  Copyright © 2015 Furkan Yilmaz. All rights reserved.
//

//import UIKit
//
//public class BasicAlertController {
//    
//    //==========================================================================================================
//    // MARK: - Singleton
//    //==========================================================================================================
//    
//    class var instance : BasicAlertController {
//        struct Static {
//            static let inst : BasicAlertController = BasicAlertController ()
//        }
//        return Static.inst
//    }
//    
//    //==========================================================================================================
//    // MARK: - Private Functions
//    //==========================================================================================================
//    
//    private func topMostController() -> UIViewController? {
//        
//        var presentedVC = UIApplication.sharedApplication().keyWindow?.rootViewController
//        while let pVC = presentedVC?.presentedViewController
//        {
//            presentedVC = pVC
//        }
//        
//        if presentedVC == nil {
//            print("EZAlertController Error: You don't have any views set. You may be calling in viewdidload. Try viewdidappear.")
//        }
//        return presentedVC
//    }
//    
//    
//    //==========================================================================================================
//    // MARK: - Class Functions
//    //==========================================================================================================
//    
//    public class func alert(title: String) -> UIAlertController {
//        return alert(title, message: "")
//    }
//    
//    public class func alert(title: String, message: String) -> UIAlertController {
//        return alert(title, message: message, acceptMessage: "OK") { () -> () in
//            // Do nothing
//        }
//    }
//    
//    public class func alert(title: String, message: String, acceptMessage: String, acceptBlock: () -> ()) -> UIAlertController {
//        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
//        let acceptButton = UIAlertAction(title: acceptMessage, style: .Default, handler: { (action: UIAlertAction) in
//            acceptBlock()
//        })
//        alert.addAction(acceptButton)
//        
//        instance.topMostController()?.presentViewController(alert, animated: true, completion: nil)
//        return alert
//    }
//    
//    public class func alert(title: String, message: String, buttons:[String], tapBlock:((UIAlertAction,Int) -> Void)?) -> UIAlertController{
//        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert, buttons: buttons, tapBlock: tapBlock)
//        instance.topMostController()?.presentViewController(alert, animated: true, completion: nil)
//        return alert
//    }
//    
//    public class func actionSheet(title: String, message: String, sourceView: UIView, actions: [UIAlertAction]) -> UIAlertController {
//        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.ActionSheet)
//        for action in actions {
//            alert.addAction(action)
//        }
//        alert.popoverPresentationController?.sourceView = sourceView
//        alert.popoverPresentationController?.sourceRect = sourceView.bounds
//        instance.topMostController()?.presentViewController(alert, animated: true, completion: nil)
//        return alert
//    }
//    
//    public class func actionSheet(title: String, message: String, sourceView: UIView, buttons:[String], tapBlock:((UIAlertAction,Int) -> Void)?) -> UIAlertController{
//        let alert = UIAlertController(title: title, message: message, preferredStyle: .ActionSheet, buttons: buttons, tapBlock: tapBlock)
//        alert.popoverPresentationController?.sourceView = sourceView
//        alert.popoverPresentationController?.sourceRect = sourceView.bounds
//        instance.topMostController()?.presentViewController(alert, animated: true, completion: nil)
//        return alert
//    }
//    
//}
//
//
//private extension UIAlertController {
//    convenience init(title: String?, message: String?, preferredStyle: UIAlertControllerStyle, buttons:[String], tapBlock:((UIAlertAction,Int) -> Void)?) {
//        self.init(title: title, message: message, preferredStyle:preferredStyle)
//        var buttonIndex = 0
//        for buttonTitle in buttons {
//            let action = UIAlertAction(title: buttonTitle, preferredStyle: .Default, buttonIndex: buttonIndex, tapBlock: tapBlock)
//            buttonIndex += 1
//            self.addAction(action)
//        }
//    }
//}
//
//
//
//private extension UIAlertAction {
//    convenience init(title: String?, preferredStyle: UIAlertActionStyle, buttonIndex:Int, tapBlock:((UIAlertAction,Int) -> Void)?) {
//        self.init(title: title, style: style) {
//            (action:UIAlertAction) in
//            if let block = tapBlock {
//                block(action,buttonIndex)
//            }
//        }
//    }
//}