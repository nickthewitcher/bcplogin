//
//  KeyboardController.swift
//  bcpClone
//
//  Created by Nick Quito Espinoza on 26/04/21.
//
import UIKit
import Foundation
class KeyboardController: UIViewController{
  
    @IBOutlet weak var pos1: UIButton!
    @IBOutlet weak var pos2: UIButton!
    
    @IBOutlet weak var pos3: UIButton!
    @IBOutlet weak var pos4: UIButton!
    @IBOutlet weak var pos5: UIButton!
    @IBOutlet weak var pos6: UIButton!
    @IBOutlet weak var pos7: UIButton!
    @IBOutlet weak var pos8: UIButton!
    @IBOutlet weak var pos9: UIButton!
    @IBOutlet weak var posDelete: UIButton!
    var listaNumber = [Int](){
        didSet{
            self.pos1.setTitle(String(listaNumber[0]), for: .normal)
            self.pos2.setTitle(String(listaNumber[1]), for: .normal)
            self.pos3.setTitle(String(listaNumber[2]), for: .normal)
            self.pos4.setTitle(String(listaNumber[3]), for: .normal)
            self.pos5.setTitle(String(listaNumber[4]), for: .normal)
            self.pos6.setTitle(String(listaNumber[5]), for: .normal)
            self.pos7.setTitle(String(listaNumber[6]), for: .normal)
            self.pos8.setTitle(String(listaNumber[7]), for: .normal)
            self.pos9.setTitle(String(listaNumber[8]), for: .normal)

 }}
    

    
    override func viewDidLoad() {
       super.viewDidLoad()
        self.listaNumber = [9,2,3,4,5,6,7,8,1]
       // Do any additional setup after loading the view.
   }
    
}
