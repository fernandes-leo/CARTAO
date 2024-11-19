import CoreMotion
import SwiftUI

class MotionManager: ObservableObject {
    private var motionManager = CMMotionManager()
    @Published var xRotation: CGFloat = 0.0
    @Published var yRotation: CGFloat = 0.0

    init() {
        startMotionUpdates()
    }

    private func startMotionUpdates() {
        if motionManager.isDeviceMotionAvailable {
            motionManager.deviceMotionUpdateInterval = 0.02
            motionManager.startDeviceMotionUpdates(to: .main) { [weak self] motionData, error in
                guard let data = motionData else { return }
                DispatchQueue.main.async {
                    self?.xRotation = CGFloat(data.attitude.roll) * 10
                    self?.yRotation = CGFloat(data.attitude.pitch) * 10
                }
            }
        }
    }

    deinit {
        motionManager.stopDeviceMotionUpdates()
    }
}