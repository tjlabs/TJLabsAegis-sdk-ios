
import Foundation
import TJLabsAegis

public class AegisManager: TJLabsAegisDelegate {
    static let sdkVersion: String = "0.1.2"
    
    public func onAegisSuccess(_ manager: TJLabsAegis.TJLabsAegisManager, isSuccess: Bool, msg: String) {
        delegate?.onAegisSuccess(self, isSuccess: isSuccess, msg: msg)
    }
    
    public func onAegisResult(_ manager: TJLabsAegis.TJLabsAegisManager, rssiScore: Float, stepScore: Float) {
        delegate?.onAegisResult(self, rssiScore: rssiScore, stepScore: stepScore)
    }
    
    let manager = TJLabsAegisManager()
    public var delegate: AegisDelegate?
    
    public init() {
        manager.delegate = self
    }
    
    public func startAegis(tenantID: String, tenantPW: String) {
        manager.startAegis(tenantID: tenantID, tenantPW: tenantPW)
    }
    
    public func stopAegis() {
        manager.stopAegis()
    }
    
    public func setNearestBWardID(bWardId: String, completion: @escaping (Bool, String) -> Void) {
        manager.setNearestBWardID(bWardId: bWardId, completion: { isSuccess, msg in
            completion(isSuccess, msg)
        })
    }

    public func setStepWindowSec(sec: Double) {
        manager.setStepWindowSec(sec: sec)
    }
}

