//
//  CanvasDraw.swift
//  SwiftUIBootcamp
//
//  Created by Soumya Ranjan Mishra on 02/05/25.
//

import SwiftUI

struct MountainCanvasView: View {
    var body: some View {
        GeometryReader { geometry in
            TimelineView(.animation) { timeline in
                let time = timeline.date.timeIntervalSinceReferenceDate
                Canvas { context, size in
                    drawSky(context: &context, size: size)
                    drawAnimatedClouds(context: &context, size: size, time: time)
                    drawFlyingBirds(context: &context, size: size, time: time)
                    drawSunWithFace(context: &context, size: size, time: time)
                    drawMountains(context: &context, size: size)
                }
            }
            .ignoresSafeArea()
        }
    }
    
    /// Draw Sky
    private func drawSky(context: inout GraphicsContext, size: CGSize) {
        let rect = CGRect(origin: .zero, size: size)
        let gradient = Gradient(colors: [.blue, .purple, .orange, .yellow])
        context.fill(Path(rect), with: .linearGradient(
            gradient,
            startPoint: .zero,
            endPoint: CGPoint(x: 0, y: size.height)))
    }
    
    /// Draw Clouds
    private func drawAnimatedClouds(context: inout GraphicsContext, size: CGSize, time: TimeInterval) {
        let speed: CGFloat = 30  /// pixels per second
        let cloudWidth: CGFloat = 100
        let cloudHeight: CGFloat = 50
        let spacing: CGFloat = 200
        
        let offset = CGFloat(time.truncatingRemainder(dividingBy: 20)) * speed.truncatingRemainder(dividingBy: size.width + cloudWidth)
        
        for i in 0..<3 {
            let x = (offset + CGFloat(i) * spacing).truncatingRemainder(dividingBy: size.width + cloudWidth) - cloudWidth
            let y: CGFloat = CGFloat(50 + i * 40)
            
            let cloudRect = CGRect(x: x, y: y, width: cloudWidth, height: cloudHeight)
            let cloudPath = makeCloud(in: cloudRect)
            context.fill(cloudPath, with: .color(.white))
        }
    }
    
    /// Make Cloud
    private func makeCloud(in rect: CGRect) -> Path {
        var path = Path()
        let centerY = rect.midY
        
        /// Central puff
        path.addEllipse(in: CGRect(x: rect.midX - 25, y: centerY - 20, width: 50, height: 40))
        /// Left puff
        path.addEllipse(in: CGRect(x: rect.minX, y: centerY - 15, width: 40, height: 35))
        /// Right puff
        path.addEllipse(in: CGRect(x: rect.maxX - 40, y: centerY - 15, width: 40, height: 35))
        /// Bottom puff
        path.addEllipse(in: CGRect(x: rect.midX - 20, y: centerY, width: 40, height: 30))
        
        return path
    }
    
    /// Draw Sun with Face
    private func drawSunWithFace(context: inout GraphicsContext, size: CGSize, time: TimeInterval) {
        let sunCenter = CGPoint(x: size.width * 0.25, y: size.height * 0.2)
        let pulse = 1.0 + 0.1 * sin(time * 2)
        let baseRadius: CGFloat = 50
        let sunRadius = baseRadius * pulse
        
        /// Glowing sun
        let sunPath = Path(ellipseIn: CGRect(
            x: sunCenter.x - sunRadius,
            y: sunCenter.y - sunRadius,
            width: sunRadius * 2,
            height: sunRadius * 2))
        context.fill(sunPath, with: .radialGradient(
            Gradient(colors: [.yellow, .orange]),
            center: sunCenter,
            startRadius: 0,
            endRadius: 100))
        
        /// Face offsets
        let eyeOffsetX: CGFloat = 15
        let eyeOffsetY: CGFloat = 10
        let eyeSize = CGSize(width: 8, height: 12)
        
        /// Eyes
        let leftEye = Path(ellipseIn: CGRect(
            x: sunCenter.x - eyeOffsetX - eyeSize.width / 2,
            y: sunCenter.y - eyeOffsetY,
            width: eyeSize.width,
            height: eyeSize.height))
        let rightEye = Path(ellipseIn: CGRect(
            x: sunCenter.x + eyeOffsetX - eyeSize.width / 2,
            y: sunCenter.y - eyeOffsetY,
            width: eyeSize.width,
            height: eyeSize.height))
        context.fill(leftEye, with: .color(.black))
        context.fill(rightEye, with: .color(.black))
        
        /// Nose (small circle)
        let nose = Path(ellipseIn: CGRect(
            x: sunCenter.x - 3,
            y: sunCenter.y + 6,
            width: 6,
            height: 6))
        context.fill(nose, with: .color(.black))
        
        /// Smiling mouth (arc)
        var mouthPath = Path()
        let mouthWidth: CGFloat = 30
        let mouthTop = CGPoint(x: sunCenter.x - mouthWidth / 2, y: sunCenter.y + 18)
        mouthPath.move(to: mouthTop)
        mouthPath.addQuadCurve(
            to: CGPoint(x: sunCenter.x + mouthWidth / 2, y: sunCenter.y + 18),
            control: CGPoint(x: sunCenter.x, y: sunCenter.y + 35))
        context.stroke(mouthPath, with: .color(.black), lineWidth: 2)
    }
    
    /// Draw mountains
    private func drawMountains(context: inout GraphicsContext, size: CGSize) {
        var mountainPath = Path()
        mountainPath.move(to: CGPoint(x: 0, y: size.height))
        mountainPath.addLine(to: CGPoint(x: size.width * 0.2, y: size.height * 0.5))
        mountainPath.addLine(to: CGPoint(x: size.width * 0.4, y: size.height * 0.65))
        mountainPath.addLine(to: CGPoint(x: size.width * 0.6, y: size.height * 0.4))
        mountainPath.addLine(to: CGPoint(x: size.width * 0.8, y: size.height * 0.6))
        mountainPath.addLine(to: CGPoint(x: size.width, y: size.height * 0.3))
        mountainPath.addLine(to: CGPoint(x: size.width, y: size.height))
        mountainPath.closeSubpath()
        
        context.fill(mountainPath, with: .linearGradient(
            Gradient(colors: [.black, .gray]),
            startPoint: CGPoint(x: 0, y: size.height * 0.3),
            endPoint: CGPoint(x: 0, y: size.height)))
    }
    
    /// Draw Flying Birds
    private func drawFlyingBirds(context: inout GraphicsContext, size: CGSize, time: TimeInterval) {
        let birdCount = 5
        let baseY: CGFloat = 300
        let spacing: CGFloat = size.width / CGFloat(birdCount)
        
        for i in 0..<birdCount {
            let birdSpeed: CGFloat = 35
            let xOffset = CGFloat(time * Double(birdSpeed)).truncatingRemainder(dividingBy: size.width + 40)
            let x = (CGFloat(i) * spacing - xOffset).truncatingRemainder(dividingBy: size.width + 40) - 20
            let y = baseY + CGFloat(i % 2) * 15 // slight vertical wave
            
            let birdPath = makeBird(at: CGPoint(x: x, y: y))
            context.stroke(birdPath, with: .color(.black), lineWidth: 1.5)
        }
    }
    
    /// Make Birds
    private func makeBird(at point: CGPoint) -> Path {
        var path = Path()
        let wingSpan: CGFloat = 20
        let wingHeight: CGFloat = 10
        
        path.move(to: point)
        path.addLine(to: CGPoint(x: point.x - wingSpan / 2, y: point.y - wingHeight))
        path.move(to: point)
        path.addLine(to: CGPoint(x: point.x + wingSpan / 2, y: point.y - wingHeight))
        
        return path
    }
}


struct MountainCanvasView_Previews: PreviewProvider {
    static var previews: some View {
        MountainCanvasView()
    }
}
