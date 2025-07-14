
public protocol AegisDelegate: AnyObject {
    func onAegisSuccess(_ manager: AegisManager, isSuccess: Bool, msg: String)
    func onAegisResult(_ manager: AegisManager, rssiScore: Float, stepScore: Float)
}
