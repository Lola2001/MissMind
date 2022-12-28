//
//  SkockoDvaVC.swift
//  Skocko1
//
//  Created by Lola on 29.11.22..
//

import UIKit
import Alamofire

class SkockoDvaVC: UIViewController, PrebaciPodatke{
    
    
    
    @IBOutlet weak var naslov: UILabel!
    
    
    @IBOutlet weak var prviredprvopolje: UIButton!
    @IBOutlet weak var prvireddrugopolje: UIButton!
    @IBOutlet weak var prviredtrecepolje: UIButton!
    @IBOutlet weak var prviredcetvrtopolje: UIButton!
    
    @IBOutlet weak var drugiredprvopolje: UIButton!
    @IBOutlet weak var drugireddrugopolje: UIButton!
    @IBOutlet weak var drugiredtrecepolje: UIButton!
    @IBOutlet weak var drugiredcetvrtopolje: UIButton!
    
    @IBOutlet weak var treciredprvopolje: UIButton!
    @IBOutlet weak var trecireddrugopolje: UIButton!
    @IBOutlet weak var treciredtrecepolje: UIButton!
    @IBOutlet weak var treciredcetvrtopolje: UIButton!
    
    
    @IBOutlet weak var cetvrtiredprvopolje: UIButton!
    @IBOutlet weak var cetvrtireddrugopolje: UIButton!
    @IBOutlet weak var cetvrtiredtrecepolje: UIButton!
    @IBOutlet weak var cetvrtiredcetvrtopolje: UIButton!
    
    @IBOutlet weak var petiredprvopolje: UIButton!
    @IBOutlet weak var petirddrugopolje: UIButton!
    @IBOutlet weak var petiredtrecepolje: UIButton!
    @IBOutlet weak var petiredcetvrtopolje: UIButton!
    
    
    @IBOutlet weak var sestiredprvopolje: UIButton!
    @IBOutlet weak var sestireddrugopolje: UIButton!
    @IBOutlet weak var sestiredtrecepolje: UIButton!
    @IBOutlet weak var sestiredcetvrtopolje: UIButton!
    
    @IBOutlet weak var prvosporedno1: UIButton!
    @IBOutlet weak var drugosporedno1: UIButton!
    @IBOutlet weak var trecesporedno1: UIButton!
    @IBOutlet weak var cetvrtosporedno1: UIButton!
    
    @IBOutlet weak var prvosporedno2: UIButton!
    @IBOutlet weak var drugosporedno2: UIButton!
    @IBOutlet weak var trecesporedno2: UIButton!
    @IBOutlet weak var cetvrtosporedno2: UIButton!
    
    @IBOutlet weak var prvosporedno3: UIButton!
    @IBOutlet weak var drugosporedno3: UIButton!
    @IBOutlet weak var trecesporedno3: UIButton!
    @IBOutlet weak var cetvrtosporedno3: UIButton!
    
    
    @IBOutlet weak var prvosporedno4: UIButton!
    @IBOutlet weak var drugospordno4: UIButton!
    @IBOutlet weak var trecesporedno4: UIButton!
    @IBOutlet weak var cetvtosporedno4: UIButton!
    
    
    @IBOutlet weak var prvosporedno5: UIButton!
    @IBOutlet weak var drugosporedno5: UIButton!
    @IBOutlet weak var trecesporedno5: UIButton!
    @IBOutlet weak var cetvrtosporedno5: UIButton!
    
    @IBOutlet weak var prvosporedno6: UIButton!
    @IBOutlet weak var drugosporedno6: UIButton!
    @IBOutlet weak var trecesporedno6: UIButton!
    @IBOutlet weak var cetvrtosporedno6: UIButton!
    
    @IBOutlet weak var crvenodugme: UIButton!
    @IBOutlet weak var plavopolje: UIButton!
    @IBOutlet weak var zelenopolje: UIButton!
    @IBOutlet weak var ljubicastopolje: UIButton!
    @IBOutlet weak var zutopolje: UIButton!
    @IBOutlet weak var tirkiznopolje: UIButton!
    
    
    @IBOutlet weak var prvopoljerjesenje: UIButton!
    @IBOutlet weak var drugopoljerjesenje: UIButton!
    @IBOutlet weak var trecepoljerjesenje: UIButton!
    @IBOutlet weak var cetvrtopoljerjesenje: UIButton!
    
    
    
    var prvired = [UIButton]()
    var redrjesenja=[UIButton]()
    
    var nizboja=[UIColor]()
    var niz1sporednih=[UIButton]()
    var niz2sporednih=[UIButton]()
    var niz3sporednih=[UIButton]()
    var niz4sporednih=[UIButton]()
    var niz5sporednih=[UIButton]()
    var niz6sporednih=[UIButton]()
    var boja1: UIColor?
    var boja2: UIColor?
    var boja3: UIColor?
    var boja4: UIColor?
    
    var sporedni=[[UIButton]]()
    var bojeResenja = [UIColor?]()
    var indexutrenutnomredu = 0
    
    var indeksMijenjanja : Int?
    
    var pocetak : Date?
    var kraj : Date?
    var razlika : Int = 0
    var korisnickoIme : String?
    var red : Int?
    
    var novaa : Bool?
    var uspjesno : Bool?
    var rb : Int = 0
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    
    
    @IBOutlet weak var slika: UIImageView!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    
        
        prvopoljerjesenje.backgroundColor = .gray
        drugopoljerjesenje.backgroundColor = .gray
        trecepoljerjesenje.backgroundColor = .gray
        cetvrtopoljerjesenje.backgroundColor = .gray
        
        
        
        
        
        
        
        crvenodugme.backgroundColor = .red
        plavopolje.backgroundColor = .blue
        zelenopolje.backgroundColor = .green
        ljubicastopolje.backgroundColor = .purple
        zutopolje.backgroundColor = .yellow
        tirkiznopolje.backgroundColor = .orange
        
        
        
        
        
        prvired.append(prviredprvopolje)
        prvired.append(prvireddrugopolje)
        prvired.append(prviredtrecepolje)
        prvired.append(prviredcetvrtopolje)
        
        prvired.append(drugiredprvopolje)
        prvired.append(drugireddrugopolje)
        prvired.append(drugiredtrecepolje)
        prvired.append(drugiredcetvrtopolje)
        
        prvired.append(treciredprvopolje)
        prvired.append(trecireddrugopolje)
        prvired.append(treciredtrecepolje)
        prvired.append(treciredcetvrtopolje)
        
        prvired.append(cetvrtiredprvopolje)
        prvired.append(cetvrtireddrugopolje)
        prvired.append(cetvrtiredtrecepolje)
        prvired.append(cetvrtiredcetvrtopolje)
        
        prvired.append(petiredprvopolje)
        prvired.append(petirddrugopolje)
        prvired.append(petiredtrecepolje)
        prvired.append(petiredcetvrtopolje)
        
        prvired.append(sestiredprvopolje)
        prvired.append(sestireddrugopolje)
        prvired.append(sestiredtrecepolje)
        prvired.append(sestiredcetvrtopolje)
        
        
        for button in prvired {
            button.backgroundColor=UIColor.gray
//            button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        }
        
        for button in niz1sporednih {
            button.backgroundColor=UIColor.gray
        }
        for button in niz2sporednih {
            button.backgroundColor=UIColor.gray
        }
        for button in niz3sporednih {
            button.backgroundColor=UIColor.gray
        }
        for button in niz4sporednih {
            button.backgroundColor=UIColor.gray
        }
        for button in niz5sporednih {
            button.backgroundColor=UIColor.gray
        }
        for button in niz6sporednih {
            button.backgroundColor=UIColor.gray
        }
        
        
        redrjesenja.append(prvopoljerjesenje)
        redrjesenja.append(drugopoljerjesenje)
        redrjesenja.append(trecepoljerjesenje)
        redrjesenja.append(cetvrtopoljerjesenje)
        
        nizboja.append(UIColor.red)
        nizboja.append(UIColor.orange)
        nizboja.append(UIColor.blue)
        nizboja.append(UIColor.green)
        nizboja.append(UIColor.purple)
        nizboja.append(UIColor.yellow)
        
        
        
        niz1sporednih.append(prvosporedno1)
        niz1sporednih.append(drugosporedno1)
        niz1sporednih.append(trecesporedno1)
        niz1sporednih.append(cetvrtosporedno1)
        
        
        
        niz2sporednih.append(prvosporedno2)
        niz2sporednih.append(drugosporedno2)
        niz2sporednih.append(trecesporedno2)
        niz2sporednih.append(cetvrtosporedno2)
        
        niz3sporednih.append(prvosporedno3)
        niz3sporednih.append(drugosporedno3)
        niz3sporednih.append(trecesporedno3)
        niz3sporednih.append(cetvrtosporedno3)
        
        niz4sporednih.append(prvosporedno4)
        niz4sporednih.append(drugospordno4)
        niz4sporednih.append(trecesporedno4)
        niz4sporednih.append(cetvtosporedno4)
        
        niz5sporednih.append(prvosporedno5)
        niz5sporednih.append(drugosporedno5)
        niz5sporednih.append(trecesporedno5)
        niz5sporednih.append(cetvrtosporedno5)
        
        niz6sporednih.append(prvosporedno6)
        niz6sporednih.append(drugosporedno6)
        niz6sporednih.append(trecesporedno6)
        niz6sporednih.append(cetvrtosporedno6)
        
        sporedni.append(niz1sporednih)
        sporedni.append(niz2sporednih)
        sporedni.append(niz3sporednih)
        sporedni.append(niz4sporednih)
        sporedni.append(niz5sporednih)
        sporedni.append(niz6sporednih)
        
        
        boja1 = nizboja.randomElement()
        boja2 = nizboja.randomElement()
        boja3 = nizboja.randomElement()
        boja4 = nizboja.randomElement()
       
        
        for i in 0...5{
            for j in 0...3{
                sporedni[i][j].backgroundColor=UIColor.gray
                
            }
            
        }
        
        bojeResenja = [boja1, boja2, boja3, boja4]
        slika.layer.cornerRadius=slika.frame.size.width/2
        slika.clipsToBounds=true
        spinner.isHidden = true
        
        pocetak=Date()
        
        
        
        
        
    }
//
//    @objc func buttonClicked(_sender : UIButton)   {
//
//
//
//        for nasiindeks in 0...23{
//            let polja1 =  prvired.first(where: {$0.backgroundColor==UIColor.gray})
//            indeksMijenjanja = prvired.index(before: (polja1?.index(ofAccessibilityElement: UIButton.self))!)
//            if(indeksMijenjanja == _sender.index(ofAccessibilityElement: UIButton.self)){
//
//                polja1!.backgroundColor = UIColor.gray
//            }
//
//
//        }
//
//    }
 
    
    func partija(nova: Bool) {
        novaa = nova
        if(novaa!){
            vratinapocetno()
            
        }
        
        
    }
 
    
    @IBAction func crvenopoljepress(_ sender: Any) {
        
        
        
        let polje1 = prvired.first(where: {$0.backgroundColor==UIColor.gray})
        polje1?.backgroundColor = UIColor.red
        
        
   
        
        
        
        
        
        vratiSporedne()
        prikazi()
        
        
    }
    
    
    @IBAction func tirkiznabojapressed(_ sender: Any) {
        let polje2 = prvired.first(where: {$0.backgroundColor==UIColor.gray})
        polje2?.backgroundColor = UIColor.orange
        
      
        
        
        
        vratiSporedne()
        prikazi()
    }
    
    
    
    
    
    @IBAction func zutodugmepress(_ sender: Any) {
        let polje3 = prvired.first(where: {$0.backgroundColor==UIColor.gray})
        polje3?.backgroundColor = UIColor.yellow
        
        
        
        vratiSporedne()
        prikazi()
        
        
    }
    
    
    @IBAction func ljubicastodugmepress(_ sender: Any) {
        let polje4 = prvired.first(where: {$0.backgroundColor==UIColor.gray})
        polje4?.backgroundColor = UIColor.purple
        
        
        
        vratiSporedne()
        prikazi()
        
        
    }
    
    
    @IBAction func zelenodugmepress(_ sender: Any) {
        let polje5 = prvired.first(where: {$0.backgroundColor==UIColor.gray})
        polje5?.backgroundColor = UIColor.green
        
        
        
        vratiSporedne()
        prikazi()
        
    }
    
    
    @IBAction func plavodugmepress(_ sender: Any) {
        let polje6 = prvired.first(where: {$0.backgroundColor==UIColor.gray})
        polje6?.backgroundColor = UIColor.blue
        
        
        vratiSporedne()
        
        prikazi()
        
        
    }
    
    func vratiSporedne(){
        
        
        if (indexutrenutnomredu == 3) {
            indexutrenutnomredu = 0
            
            for nasindex in 0 ... 23 {
                
                
                let redindex = (nasindex ) / 4
                let ureduindex = (nasindex ) % 4
                
                
                
                
                
                
                if (prvired[nasindex].backgroundColor==bojeResenja[ureduindex]){
                    
                    sporedni[redindex][ureduindex].backgroundColor=UIColor.white}
                
                uspjesno = vratiTacno(i: redindex)
                
            }
        } else {
            indexutrenutnomredu+=1
        }
    }
    
    func prikazi(){
        
        
        
        if(sestiredcetvrtopolje.backgroundColor != UIColor.gray){
            
            
            for i in 0...5{
                namjestiboje()
                if(uspjesno==true){
                    return
                    
                    
                }
                
                
            }
            kraj=Date()
            popup2()
        }
    }
    
    
    
    
    
    
    
    
    func popup2(){
        let alert=UIAlertController(title: "Niste pogodili kombinaciju!", message: "Da li zelite da odigrate novu partiju?", preferredStyle: .alert)
        
        let daAction=UIAlertAction(title: "Da", style: .default){
            UIAlertAction in
            self.vratinapocetno()
            
        }
        let neAction=UIAlertAction(title: "Ne", style: .default){
            UIAlertAction in
            exit(0)
            
            
        }
        alert.addAction(daAction)
        alert.addAction(neAction)
        
        
        self.present(alert, animated: true, completion: nil)
        
        
        
    }
    
    
    func vratinapocetno(){
        
        for button in prvired {
            button.backgroundColor=UIColor.gray}
        
        for i in 0...5{
            for j in 0...3{
                sporedni[i][j].backgroundColor=UIColor.gray}}
        
        for button in redrjesenja {
            button.backgroundColor = .gray
        }
        for l in 0...3{
            bojeResenja[l]=nizboja.randomElement()
        }
        pocetak=Date()
        
        
    }
    
    
    func namjestiboje(){
        
        for k in 0...3{
            redrjesenja[k].backgroundColor=bojeResenja[k]
        }}
    
    
    func vratiTacno(i:Int)->Bool{
        var brojac=0
        
        
        for button in sporedni[i]{
            if(button.backgroundColor == UIColor.white){
                brojac=brojac+1;
            }
            
        }
        if(brojac==4){
            namjestiboje()
            red=i+1
            kraj=Date()
            razlika=Int(kraj!.timeIntervalSinceReferenceDate-pocetak!.timeIntervalSinceReferenceDate)
            self.tableSetPost(completionHandler:{ [self](success) -> Void in
                
                
                if success {
                    self.spinner.startAnimating()
                    spinner.isHidden = false
                    
                    self.performSegue(withIdentifier: "dvaTri", sender: self)
                    
                    self.spinner.stopAnimating()
                    spinner.isHidden = true
                    
                } else {
                    
                }
                
                
            })
            
            
          
            
            return true
            
            
            
        }
        return false
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? RezVC {
            
            
            controller.korisnickoIme = korisnickoIme
            controller.boja1 = bojeResenja[0]
            controller.boja2 = bojeResenja[1]
            controller.boja3 = bojeResenja[2]
            controller.boja4 = bojeResenja[3]
            controller.vrijeme = razlika
            controller.rbb = rb
            controller.red = red
            
            controller.delegate=self
            
        }
    }
    typealias CompletionHandler = (_ succes:Bool) -> Void
    func tableSetPost(completionHandler : @escaping CompletionHandler)
       {
        let adress = "https://utilsapi.prodevserver.com/api/mastermind/inputScore"
        let parameters: Parameters=[
            
            "name" : korisnickoIme! ,
            "time" : razlika ,
            "line" : red!
            
        ]
        print("ime je koje postujem: ", korisnickoIme!)
        print("vrijeme koje postujem je: ", razlika)
        print("Red je: ", red!)
        AF.request(URL.init(string: adress)!, method: .post, parameters:parameters, encoding: URLEncoding.default).validate(statusCode: 200..<500)
               .responseDecodable(of: Uspjeh.self) { (response) in
                
                switch response.result {
                    
                case .success(_):
                    guard let responsePozicija = response.value else {return}
                    let pozicija = responsePozicija.place
                    _ = responsePozicija.success
                    self.rb = pozicija
                    print("Pozicija je: ", pozicija)
                  
                   let flag = true
                    completionHandler(flag)
                    break
                    
                case .failure(let error):
                    print(error.errorDescription!)
                   
                    break
                }
                   
                   
            }
       
        
        
    }
    
    
    
}
