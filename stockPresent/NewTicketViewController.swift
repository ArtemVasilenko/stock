import UIKit

class NewTicketViewController: UIViewController {
    
    @IBOutlet weak var ticketPicker: UIPickerView!
    
    
    @IBOutlet weak var suplierPicker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}

extension NewTicketViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return 4
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        switch pickerView {
        
        case self.ticketPicker:
            
            switch row {
            case 0: return "Песок"
            case 1: return "Зонтики"
            case 2: return "Клей"
            case 3: return "Гвозди"
            default: return ""
            }
        case self.suplierPicker:
            
            switch row {
            case 0: return "ООО Погрузка"
            case 1: return "ЧП Волошин"
            case 2: return "ООО Железо и Ко"
            case 3: return "ЧП Петрович"
            default: return ""
            }
        default: return ""
        }
    }
}

