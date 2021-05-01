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
    var password = ""
    
    @IBAction func clicPos1(_ sender: UIButton) {
        
        password = password + sender.currentTitle!
        print("clicpos1")
        print(password)
    }
    
    @IBAction func clicPos2(_ sender: UIButton) {
        password = password + sender.currentTitle!
        print("clicpos2")
        print(password)
    }
    
    
    @IBAction func clicPos3(_ sender: UIButton) {
        password = password + sender.currentTitle!
        print("clicpos3")
        print(password)
    }
    
    
    @IBAction func clicPos4(_ sender: UIButton) {
        password = password + sender.currentTitle!
        print("clicpos4")
        print(password)
    }
    
    
    @IBAction func clicPos5(_ sender: UIButton) {
        password = password + sender.currentTitle!
        print("clicpos5")
        print(password)
    }
    
    @IBAction func clicPos6(_ sender: UIButton) {
        password = password + sender.currentTitle!

        print("clicpos6")
        print(password)
    }
    

    @IBAction func clicPos7(_ sender: UIButton) {
        password = password + sender.currentTitle!

        print("clicpos7")
        print(password)
    }
    
    @IBAction func deleteLetter(_ sender: UIButton) {
        if(password.count > 0)
        {        password = password + sender.currentTitle!}
   }
    
    @IBAction func clicPos8(_ sender: UIButton) {
        password = password + sender.currentTitle!

        print("clicpos8")
        print(password)
    }
    
    
    @IBAction func clicPos9(_ sender: UIButton) {
        password = password + sender.currentTitle!

        print("clicpos9")
    }
    
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
        //self.listaNumber = [9,2,3,4,5,6,7,8,1]

        let apiService = ApiService.sharedInstance
        _ = apiService.getTeclado()
            .subscribe(
                onNext: {
                    print("onNext: \($0)")
                    self.listaNumber = ($0).listaNumberTeclado
                },
                onError: { print("onError: \($0)")
                   });
        
       super.viewDidLoad()
       // Do any additional setup after loading the view.
   }
    
  /*  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let destinationVC = segue.destination as! HomeController
            destinationVC.password = self.password
    }
    */
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if self.password.count == 4 
        {
           
            return true

        }
        else
        {
            return false
        }
    }
    
    
    
    
}
