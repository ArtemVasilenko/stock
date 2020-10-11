
import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var repeatButton: UIButton!
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var cameraImageView: UIImageView!
    
    
    var captureSesssion: AVCaptureSession!
    var stillImageOutput: AVCapturePhotoOutput?
    var previewLayer: AVCaptureVideoPreviewLayer?
    var captureDevice : AVCaptureDevice!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        guard let backCamera = AVCaptureDevice.default(.builtInWideAngleCamera, for: AVMediaType.video, position: .back) else { return }
        
        //        self.cameraView.addSubview(backCamera)
        
        
    }
    
    
}


