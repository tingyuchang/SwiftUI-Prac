//
//  CanvasView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/26.
//

import SwiftUI

struct Line {
    var points: [CGPoint]
}

struct CanvasView: View {
    @State var lines: [Line] = []
    var body: some View {
        Canvas { ctx, size in
            for line in self.lines {
                var path = Path()
                path.addLines(line.points)
                ctx.stroke(path, with: .color(.blue), style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round))
            }
        }
        .gesture(DragGesture(minimumDistance: 0, coordinateSpace: .local)
            .onChanged() { value in
                let position = value.location
                if value.translation == .zero {
                    self.lines.append(Line(points: [position]))
                } else {
                    guard let lastIndex = self.lines.indices.last else { return }
                    self.lines[lastIndex].points.append(position)
                }
            }
        )
    
    }
}

struct CanvasView_Previews: PreviewProvider {
    static var previews: some View {
        CanvasView()
    }
}
