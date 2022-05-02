//
//  JuiceMaker - ViewController.swift
//  Created by 수꿍, 바드. 
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {
    
    let someJuiceMaker = JuiceMaker()
    
    @IBOutlet weak var strawberryLabel: UILabel!
    @IBOutlet weak var bananaLabel: UILabel!
    @IBOutlet weak var pineappleLabel: UILabel!
    @IBOutlet weak var kiwiLabel: UILabel!
    @IBOutlet weak var mangoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateFruitStock()
    }
    
    func make(_ juice: Juice) {
        do {
            try someJuiceMaker.checkFruitAvailable(for: juice)
            try someJuiceMaker.checkPossibilityOfMaking(juice)
        } catch (let error) {
            someJuiceMaker.fruitStore.handle(error)
        }
    }
    
    func updateFruitStock() {
        strawberryLabel.text = String(someJuiceMaker.fruitStore.fruitWarehouse[.strawberry] ?? 0)
        bananaLabel.text = String(someJuiceMaker.fruitStore.fruitWarehouse[.banana] ?? 0)
        pineappleLabel.text = String(someJuiceMaker.fruitStore.fruitWarehouse[.pineapple] ?? 0)
        kiwiLabel.text = String(someJuiceMaker.fruitStore.fruitWarehouse[.kiwi] ?? 0)
        mangoLabel.text = String(someJuiceMaker.fruitStore.fruitWarehouse[.mango] ?? 0)
    }
    
    @IBAction func orderStrawberryBananaJuiceButton(_ sender: Any) {
    }
    
    @IBAction func orderMangoKiwiJuiceButton(_ sender: Any) {
    }
    
    @IBAction func orderStrawberryJuiceButton(_ sender: Any) {
    }
    
    @IBAction func orderBananaJuiceButton(_ sender: Any) {
    }
    
    @IBAction func orderPineappleJuiceButton(_ sender: Any) {
    }
    
    @IBAction func orderKiwiJuiceButton(_ sender: Any) {
    }
    
    @IBAction func orderMangoJuiceButton(_ sender: Any) {
    }
    
    @IBAction func editStock(_ sender: UIBarButtonItem) {
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "FruitStockViewController") {
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
}
