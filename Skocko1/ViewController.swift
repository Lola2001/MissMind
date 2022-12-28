//
//  ViewController.swift
//  Skocko1
//
//  Created by Lola on 29.11.22..
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var user1: UITextField!
    var korisnickoIme : String = ""
    
    
    @IBOutlet weak var info: UILabel!
    
    
    
    
    @IBOutlet weak var pokreniBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pokreniBtn.titleLabel?.font = UIFont(name: "Papyrus", size: 20)
        info.isHidden = true
        
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let controller = segue.destination as? SkockoDvaVC {
            let korisIme =  self.korisnickoIme
            controller.korisnickoIme = korisIme
            
            
        }
        
    }
    
    
    
    @IBAction func pokreniigru(_ sender: UIButton) {
        
        if(user1.text!.count >= 3 && user1.text!.count <= 12){
            info.isHidden = true
            pokreniBtn.isEnabled = true
            korisnickoIme = user1.text!
            
            performSegue(withIdentifier: "prviDrugi", sender: sender)}
        else{
            info.isHidden = false
            
       
            
        }
        
        
        
        
        
        
    }
    
        
        
        
        
        
    }

