//
//  BarCharView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/26.
//

import SwiftUI

enum Month: String, CaseIterable {
    case jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec
}

struct MonthDataPoint: Identifiable {
    var id: String { month.rawValue }
    let month: Month
    let value: Double
    var name: String {
        self.month.rawValue.capitalized
    }
}

extension Array where Element == Double {
    func monthDataPoints() -> [MonthDataPoint] {
        zip(Month.allCases, self)
            .map(MonthDataPoint.init)
    }
}

struct DataSet {
    static let dublin = [
        0.65, 0.50, 0.55, 0.55, 0.60, 0.65,
        0.55, 0.75, 0.60, 0.80, 0.75, 0.75
    ].monthDataPoints()
    
    static let milan = [
        0.65, 0.65, 0.80, 0.80, 0.95, 0.65,
        0.70, 0.95, 0.70, 1.00, 1.00, 0.60
    ].monthDataPoints()
    
    static let london = [
        0.55, 0.40, 0.40, 0.45, 0.50, 0.45,
        0.45, 0.50, 0.50, 0.70, 0.60, 0.55,
    ].monthDataPoints()
}


struct BarView: View {
    var dataPoint: MonthDataPoint
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 18, height: 180)
                Rectangle()
                    .fill(.white)
                    .frame(width: 18, height: self.dataPoint.value * 180)
            }
            Text(self.dataPoint.name)
                .font(.system(size: 11))
                .rotationEffect(.degrees(-45))
        }
    }
}

struct BarCharView: View {
    var dataPoints: [MonthDataPoint]
    
    var body: some View {
        HStack(spacing: 12) {
            ForEach(self.dataPoints) { point in
                BarView(dataPoint: point)
            }
        }
    }
}

struct BarCharContentView: View {
    let dataSet = [
        DataSet.dublin,
        DataSet.london,
        DataSet.milan,
    ]
    @State var selectedCity = 0
    
    var body: some View {
        VStack(spacing: 24) {
            Text("Average Precipitation")
                .font(.system(size: 32))
            Picker(selection: self.$selectedCity, content: {
                Text("Dublin").tag(0)
                Text("London").tag(1)
                Text("Milan").tag(2)
            }, label: {
                Text("Average Precipition")
            })
            .pickerStyle(.segmented)
            
            BarCharView(dataPoints: self.dataSet[self.selectedCity])
                Spacer()
        }
        .padding(.horizontal, 10)
        .background(.mint, ignoresSafeAreaEdges: .vertical)
    }
}

struct BarCharView_Previews: PreviewProvider {
    static var previews: some View {
        BarCharContentView()
    }
}
