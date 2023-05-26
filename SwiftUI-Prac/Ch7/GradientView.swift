//
//  GradientView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/26.
//

import SwiftUI


let myGrandientColors = Gradient(colors: [.orange, .green, .blue, .black])

extension Text {
    func bigLight() -> some View {
        font(.system(size: 60))
            .fontWeight(.thin)
            .multilineTextAlignment(.center)
            .foregroundColor(.white)
    }
}

struct LinearGradientView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: myGrandientColors,
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            Text("Linear Grandient")
                .bigLight()
        }
    }
}

struct RadialGrandientView: View {
    var body: some View {
        ZStack {
            RadialGradient(
                gradient: myGrandientColors,
                center: .center,
                startRadius: 20,
                endRadius: 500)
            
            Text("Radial GrandientView")
                .bigLight()
        }
    }
}

struct AngularGrandientView: View {
    var body: some View {
        ZStack {
            
            AngularGradient(gradient: Gradient(colors: [.orange, .green, .blue, .black, .black, .blue, .green, .orange]), center: .center)
            
            Text("Angular GrandientView")
                .bigLight()
        }
    }
}

struct GradientView: View {
    @State var selectedGrandient = 0
    
    @ViewBuilder var content: some View {
        switch self.selectedGrandient {
        case 0:
            LinearGradientView()
        case 1:
            RadialGrandientView()
        default:
            AngularGrandientView()
            
        }
    }
    
    var body: some View {
        ZStack(alignment: .top) {
            content.edgesIgnoringSafeArea(.all)
            
            Picker(selection: self.$selectedGrandient, content: {
                Text("Linear").tag(0)
                Text("Radial").tag(1)
                Text("Angular").tag(2)
            }, label: {
               Text("Select")
            })
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal, 3)
        }
    }
}

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView()
    }
}
