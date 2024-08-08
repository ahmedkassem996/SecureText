//
//  ViewController.swift
//  SecureText
//
//  Created by Ahmed Kasem on 25/12/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        getSubWithTrue()
    }
    
    func getSubWithTrue() {
        let subService1: [Services] =
        [
            Services(id: 123, name: "sub1", status: true),
            Services(id: 1423, name: "sub2", status: false),
            Services(id: 1323, name: "sub3", status: false),
            Services(id: 1523, name: "sub4", status: false),
            Services(id: 1223, name: "sub5", status: false),
            Services(id: 1623, name: "sub6", status: true)
        ]
        
        let subService2: [Services] =
        [
            Services(id: 1273, name: "sub11", status: true),
            Services(id: 1923, name: "sub22", status: false),
            Services(id: 1823, name: "sub33", status: false),
            Services(id: 12003, name: "sub44", status: false),
            Services(id: 18823, name: "sub55", status: false),
            Services(id: 13323, name: "sub66", status: true)
        ]
        
        let subService3: [Services] =
        [
            Services(id: 12243, name: "sub111", status: true),
            Services(id: 13423, name: "sub222", status: true),
            Services(id: 124223, name: "sub333", status: true),
            Services(id: 12423, name: "sub444", status: true),
            Services(id: 124223, name: "sub555", status: false),
            Services(id: 1222423, name: "sub666", status: true)
        ]
        
        let MServices: [MasterService] =
        [
            MasterService(id: 1, name: "master1", services: subService1),
            MasterService(id: 2, name: "master2", services: subService2),
            MasterService(id: 3, name: "master3", services: subService3),
        ]
        
//        let subs = MServices.filter( { return ($0.services[0].status == true) } )
//        print(subs)
//
//        let subs = Services.filter( { return })
        
        var allServices: [Services] = []
        
        for (index, master) in MServices.enumerated() {
            let Ssub = master.services.filter({ return $0.status == true})
            allServices.append(contentsOf: Ssub)
        }
        
        print(allServices.count)
    }


}

struct MasterService {
    let id: Int
    let name: String
    let services: [Services]
}


struct Services {
    let id: Int
    let name: String
    let status: Bool
}
