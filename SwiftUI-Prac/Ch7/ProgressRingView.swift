//
//  ProgressRingView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/26.
//

import SwiftUI

struct ProgressRing: Shape {
    private let startAngle = Angle.radians(1.5 * .pi)
    @Binding var progress: Double

    func path(in rect: CGRect) -> Path {
        Path() { path in
            path.addArc(
                center: CGPoint(x: rect.midX, y: rect.midY),
                radius: rect.width/2,
                startAngle: self.startAngle,
                endAngle: self.startAngle + Angle(radians: 2 * .pi * self.progress),
                clockwise: false)
        }
    }
}

struct ProgressRingView: View {
    private let ringPadding = 5.0
    private let ringWidth = 40.0
    private var ringStrokeStyle: StrokeStyle {
        StrokeStyle(lineWidth: self.ringWidth, lineCap: .round, lineJoin: .round)
    }
    
    @Binding var progressExternal: Double
    @Binding var progressCentral: Double
    @Binding var progressInternal: Double
    
    var body: some View {
        ZStack {
            ProgressRing(progress: self.$progressInternal)
                .stroke(.blue, style: ringStrokeStyle)
                .padding(2*(self.ringWidth + self.ringPadding))
            ProgressRing(progress: self.$progressCentral)
                .stroke(.red, style: ringStrokeStyle)
                .padding(self.ringWidth + self.ringPadding)
            ProgressRing(progress: self.$progressExternal)
                .stroke(.green, style: ringStrokeStyle)
        }
        .padding(self.ringWidth)
    }
}


struct ProgressRingContentView: View {
    @State private var progressExternal = 0.3
    @State private var progressCentral = 0.7
    @State private var progressInternal = 0.5
    
    var body: some View {
        ZStack {
            ProgressRingView(progressExternal: self.$progressExternal, progressCentral: self.$progressCentral, progressInternal: self.$progressInternal)
                .aspectRatio(contentMode: .fit)
            
            VStack(spacing: 10) {
                Spacer()
                Slider(value: self.$progressExternal, in: 0...1, step: 0.01)
                Slider(value: self.$progressCentral, in: 0...1, step: 0.01)
                Slider(value: self.$progressInternal, in: 0...1, step: 0.01)
            }
            .padding(30)
        }
    }
}

struct ProgressRingView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressRingContentView()
    }
}
