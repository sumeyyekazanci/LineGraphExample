//
//  Home.swift
//  LineGraphExample
//
//  Created by Sümeyye Kazancı on 13.07.2022.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "slider.horizontal.3")
                        .font(.title2)
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "person")
                        .font(.title2)
                }
            }
            .padding()
            .foregroundColor(.black)
            
            Spacer()
            LineGraph(data: sampleData)
                .frame(height: 250)
            Spacer()
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    CardView(image: "Dollar-USD-icon", title: "USD", color: Color.green)
                    CardView(image: "Euro-EUR-icon", title: "EUR", color: Color.blue)
                    CardView(image: "Pound-GBP-icon", title: "GBP", color: Color.purple)
                    CardView(image: "Bitcoin-icon", title: "BTC", color: Color.orange)
                }
            }
            .padding()
            
            Spacer()
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .background(.gray.opacity(0.1))
    }
    
    @ViewBuilder
    func CardView(image: String, title: String, color: Color) -> some View {
        VStack(spacing: 15) {
            Image(image)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
                .frame(width: 35, height: 35)
                .padding()
                .background(color,in: Circle())
            
            Text(title)
                .font(.title3.bold())
        }
        .padding(.vertical)
        .padding(.horizontal, 20)
        .background(.white, in: RoundedRectangle(cornerRadius: 15))
        .shadow(color: .black.opacity(0.05), radius: 5, x: 5, y: 5)
        .shadow(color: .black.opacity(0.03), radius: 5, x: -5, y: -5)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home().previewDevice(PreviewDevice(rawValue: "iPhone 12"))
    }
}

let sampleData: [CGFloat] = [
    900,1030,789,800,880,970,1000,1200,1220,600,660,720,1200,1500,1000,500,600
]
