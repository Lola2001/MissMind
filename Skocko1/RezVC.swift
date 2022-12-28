//
//  RezVC.swift
//  Skocko1
//
//  Created by Lola on 9.12.22..
//

import UIKit
import Alamofire

protocol PrebaciPodatke : AnyObject{
    func partija(nova : Bool)
}

    
    

    


class RezVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
 
    
    @IBOutlet weak var rjesenje1: UIButton!
    
    @IBOutlet weak var rjesenje2: UIButton!
    @IBOutlet weak var rjesenje3: UIButton!
    
    @IBOutlet weak var rjesenje4: UIButton!
    var redrjesnja=[UIButton]()
    var boja1: UIColor?
    var boja2: UIColor?
    var boja3: UIColor?
    var boja4: UIColor?
    var  vrijeme : Int?
    var korisnickoIme : String?
    var red : Int?
    var nova : Bool=false
    weak var delegate :  PrebaciPodatke? = nil
    
    @IBOutlet weak var rb: UILabel!
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    let tableViewData=Array(repeating: "Igrac", count: 100)
        
    private var igraci: [Igrac] = []
    var index : Int = 1
    var rbb : Int=0
    

    
        
    
    
    
    @IBOutlet weak var KorisnickoIme: UILabel!
    
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var vrijemeKorisnika: UILabel!
    @IBOutlet weak var NovaPartija: UIButton!
    
    @IBOutlet weak var Red: UILabel!

    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.reloadData()
        NovaPartija.titleLabel?.font = UIFont(name: "Papyrus", size: 20)
        redrjesnja = [rjesenje1, rjesenje2, rjesenje3, rjesenje4]
        for button in redrjesnja {
            button.backgroundColor = .gray
        }
        rjesenje1.backgroundColor=boja1
        rjesenje2.backgroundColor=boja2
        rjesenje3.backgroundColor=boja3
        rjesenje4.backgroundColor=boja4
        KorisnickoIme.text = korisnickoIme
        logo.layer.cornerRadius=logo.frame.size.width/2
        logo.clipsToBounds=true
        if #available(iOS 15.4, *) {
            vrijemeKorisnika.text = vrijeme?.codingKey.stringValue
            Red.text = red?.codingKey.stringValue
        } else {
            
            
        }
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "TableViewCell")
//        tableSetPost()
        tableResult()
     
        tableView.delegate = self
        self.tableView.allowsSelection = false
      
        rb.text = "\( rbb)"
        print("Na drugoj strani pozicija je", rbb)
       
        
        
     
        
        }

    
    func tableResult() {
        let adressBase = "https://utilsapi.prodevserver.com/api/mastermind/getScores"
        

        AF.request(URL.init(string: adressBase)!, method: .get, encoding: URLEncoding.default, interceptor: nil)
          .responseDecodable(of: ListaIgraca.self){ (response) in
            print("****************")
            print(response.result)
            print("***************")
            switch response.result {
            case .success(_):
              guard let answer = response.value else { return }
                
                self.igraci = answer.scores
                self.tableView.reloadData()
              print(answer)
              break
            case .failure(let error):
              print(error)
              break
            }
          }
      }

    @IBAction func novapartija(_ sender: Any) {
     
        nova=true;
        delegate?.partija(nova: nova)
        _ = self.navigationController?.popViewController(animated: true)
      
        
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.igraci.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "IgracCell", for: indexPath) as! IgracCell
      
            
            igraci[indexPath.row].set(index: indexPath.row)
        
            cell.id.text = "\(String(describing: igraci[indexPath.row].pozicija!))"
            cell.name.text = igraci[indexPath.row].name
            cell.time.text = "\(String(describing: igraci[indexPath.row].time))"
            cell.line.text = "\(String(describing: igraci[indexPath.row].line))"
            
            
       
         
        
        
        
        
        return cell
    }
   
}
    
    



    

