//
//  TicTacToeView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/26.
//

import SwiftUI

struct Nought: View {
    var body: some View {
        Circle()
            .stroke(.red, lineWidth: 10)
    }
}

struct CrossShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path() { path in
            path.move(to: CGPoint(x: rect.minX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.move(to: CGPoint(x: rect.maxX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.closeSubpath()
        }
    }
}

struct Cross: View {
    var body: some View {
        CrossShape()
            .stroke(.green, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
    }
}

struct Cell: View {
    enum CellType {
        case hidden
        case nought
        case cross
    }
    
    @State private var type: CellType = .hidden
    @Binding var isNextNought: Bool
    
    @ViewBuilder
    private var content: some View {
        switch self.type {
        case .hidden:
            Color.clear
        case .nought:
            Nought()
        case .cross:
            Cross()
        }
    }
    
    var body: some View {
        content
            .padding(20)
            .contentShape(Rectangle())
            .onTapGesture {
                guard self.type == .hidden else { return }
                
                self.type = self.isNextNought ? .nought : .cross
                isNextNought.toggle()
            }
    }
}


struct GridShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path () { path in
            path.move(to: CGPoint(x: rect.width/3, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.width/3, y: rect.maxY))
            path.move(to: CGPoint(x: 2 * rect.width/3, y: rect.minY))
            path.addLine(to: CGPoint(x: 2 * rect.width/3, y: rect.maxY))
            path.move(to: CGPoint(x: rect.minX, y: rect.height/3))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.height/3))
            path.move(to: CGPoint(x: rect.minX, y: 2 * rect.height/3))
            path.addLine(to: CGPoint(x: rect.maxX, y: 2 * rect.height/3))
        }
    }
}

struct Row: View {
    @Binding var isNextNought: Bool
    var body: some View {
        HStack {
            Cell(isNextNought: self.$isNextNought)
            Cell(isNextNought: self.$isNextNought)
            Cell(isNextNought: self.$isNextNought)
        }
    }
}

struct Grid: View {
    @State var isNextNought = false
    
    var body: some View {
        ZStack {
            GridShape()
                .stroke(.indigo, lineWidth: 15)
            VStack {
                Row(isNextNought: self.$isNextNought)
                Row(isNextNought: self.$isNextNought)
                Row(isNextNought: self.$isNextNought)
            }
        }
        .aspectRatio(contentMode: .fit)
    }
}


struct TicTacToeView: View {
    var body: some View {
        VStack {
            Grid()
                .padding(.horizontal, 20)
        }
    }
}

struct TicTacToeView_Previews: PreviewProvider {
    static var previews: some View {
        TicTacToeView()
    }
}
