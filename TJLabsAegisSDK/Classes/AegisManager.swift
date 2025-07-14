
import Foundation
import TJLabsAegis

public class AegisManager: TJLabsAegisDelegate {
    static let sdkVersion: String = "0.1.1"
    
    public func onAegisSuccess(_ manager: TJLabsAegis.TJLabsAegisManager, isSuccess: Bool, msg: String) {
        delegate?.onAegisSuccess(self, isSuccess: isSuccess, msg: msg)
    }
    
    public func onAegisError(_ manager: TJLabsAegis.TJLabsAegisManager, isFail: Bool, msg: String) {
        delegate?.onAegisError(self, isFail: isFail, msg: msg)
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
    
    public func setNearestBWardID(bWardId: String) {
        manager.setNearestBWardID(bWardId: bWardId)
    }
    
    public func findNearestBWard() -> [String: Double] {
        return manager.findNearestBWard()
    }
    
    public func getNearestBWardID() -> String {
        return manager.getNearestBWardID()
    }
    
    public func getNearestBWardRSSI() -> Double {
        return manager.getNearestBWardRSSI()
    }

    public func setStepWindowSec(sec: Double) {
        manager.setStepWindowSec(sec: sec)
    }
}

