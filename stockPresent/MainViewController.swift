import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var stockCollectionView: UICollectionView!
    
    var stockItems: [CollectionViewModel] = {
        var warehouseКeceipt = CollectionViewModel() //поступление на склад
        warehouseКeceipt.text = "Поступление на склад"
        warehouseКeceipt.image = "postuplenieNaSkald"
        
        var itemPlacement = CollectionViewModel() //размещение товара
        itemPlacement.text = "Размещение товара"
        itemPlacement.image = "razmeshenie"
        
        var inventoryItems = CollectionViewModel() //движение ТМЦ
        inventoryItems.text = "Движение ТМЦ"
        inventoryItems.image = "dvijenieTMC"
        
        var purchaseReturns = CollectionViewModel() //возврат товара
        purchaseReturns.text = "Возврат товара"
        purchaseReturns.image = "vozvratTovara"
        
        var movingGoods = CollectionViewModel() //перемещение товара
        movingGoods.text = "Перемещение товара"
        movingGoods.image = "peremeshenie"
        
        var inventory = CollectionViewModel() //инверторизация
        inventory.text = "Инвенторизация"
        inventory.image = "inventory"
        
        return [warehouseКeceipt, itemPlacement, inventoryItems, purchaseReturns, movingGoods, inventory]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.stockItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? MainCollectionViewCell {
            itemCell.stockItems = self.stockItems[indexPath.row]
            return itemCell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
        switch indexPath.row {
        case 0:
            print("0")
            let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            
            let controller: WarehouseKeceiptViewController = storyboard.instantiateViewController(withIdentifier: "Warehouse") as! WarehouseKeceiptViewController
            
            self.present(controller, animated: true, completion: nil)
            
        case 1:
            print("1")
        case 2:
            print("2")
        default:
            break
        }
        
    }
}
