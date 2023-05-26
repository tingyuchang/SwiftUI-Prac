//
//  BuiltInShapesView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/26.
//

import SwiftUI

extension CGRect {
    var quarterX: CGFloat {
        minX + size.height/4
    }
    
    var quarterY: CGFloat {
        minY + size.height/4
    }
    
    var threeQuarterX: CGFloat {
        minX + 3*size.height/4
    }
    
    var threeQuarterY: CGFloat {
        minY + 3*size.height/4
    }
}


struct Heart:Shape {
    func path(in rect: CGRect) -> Path {
        Path() { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.maxY))
            path.addCurve(to: CGPoint(x: rect.minX, y: rect.quarterY),
                          control1: CGPoint(x: rect.midX, y: rect.threeQuarterY),
                          control2: CGPoint(x: rect.minX, y: rect.midY))
            path.addArc(center: CGPoint(x: rect.quarterX, y: rect.quarterY),
                        radius: rect.size.width/4,
                        startAngle: .radians(.pi),
                        endAngle: .radians(0),
                        clockwise: false)
            path.addArc(center: CGPoint(x: rect.threeQuarterX, y: rect.quarterY),
                        radius: rect.size.width/4,
                        startAngle: .radians(.pi),
                        endAngle: .radians(0),
                        clockwise: false)
            path.addCurve(to: CGPoint(x: rect.midX, y: rect.maxY),
                          control1: CGPoint(x: rect.maxY, y: rect.midY),
                          control2: CGPoint(x: rect.midX, y: rect.threeQuarterY))
            path.closeSubpath()
            
        }
    }
}

struct Rhombus: Shape {
    func path(in rect: CGRect) -> Path {
        Path() { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
            
            path.closeSubpath()
        }
    }
}

struct MyCircle: Shape {
    func path(in rect: CGRect) -> Path {
        Path() {path in
            path.move(to: CGPoint(x: rect.midX, y: rect.midY))
            path.addArc(center: CGPoint(x: rect.midX, y: rect.midY),
                        radius: rect.size.width/2,
                        startAngle: .radians(0),
                        endAngle: .radians(.pi*2),
                        clockwise: false)
            
    
            path.closeSubpath()
        }
    }
}


struct BuiltInShapesView: View {
    var body: some View {
        VStack(spacing: 10) {
//            Rectangle()
//                .stroke(.orange, lineWidth: 15)
//            RoundedRectangle(cornerRadius: 20)
//                .fill(.red)
//            Capsule(style: .circular)
//                .fill(.green)
//                .frame(height: 100)
//            Capsule(style: .continuous)
//                .fill(.yellow)
//                .frame(height: 100)
//            Circle()
//                .strokeBorder(.blue, lineWidth: 15)
//            Ellipse()
//                .fill(.purple)
//            Rhombus()
//                .fill(.orange)
//                .aspectRatio(0.7, contentMode: .fit)
//                .padding()
//                .background(.gray)
//            Heart()
//                .fill(.red)
//                .overlay(Heart()
//                    .stroke(.orange, lineWidth: 10))
//                .aspectRatio(contentMode: .fit)
//                .padding(.horizontal, 30)
            MyCircle()
                .fill(.orange)
                .aspectRatio(0.7, contentMode: .fit)
                .padding()

        }
        .padding(.horizontal, 20)
    }
}

struct BuiltInShapesView_Previews: PreviewProvider {
    static var previews: some View {
        BuiltInShapesView()
    }
}
