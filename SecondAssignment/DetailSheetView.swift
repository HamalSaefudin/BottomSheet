//
//  DetailSheetView.swift
//  SecondAssignment
//
//  Created by Hamal Saefudin on 28/11/22.
//

import SwiftUI

struct DetailSheetView: View {
    var body: some View {
        VStack{
            
            HStack(spacing:100){
                Text("Pink Beach, Flores")
                    .font(.system(size: 22,design: .rounded))
                    .fontWeight(.bold)
                HStack{
                    Image(systemName: "star.fill")
                        .font(.system(size: 18))
                        .symbolRenderingMode(.multicolor)
                        .foregroundColor(.yellow)
                    Text("4.8")
                        .font(.system(size: 16,design: .rounded))
                        .fontWeight(.bold)
                }
            }
            ScrollView(.horizontal,showsIndicators: false) {
                HStack{
                    CategoryItemView(title: "Walk", icon: "figure.walk.motion", color: .green, bgColor: .black)
                    CategoryItemView(title: "Food", icon: "fork.knife.circle.fill", color: .orange, bgColor: .black)
                    CategoryItemView(title: "Stays", icon: "house.fill", color: .blue, bgColor: .black)
                    CategoryItemView(title: "Ride", icon: "sailboat.fill", color: .indigo, bgColor: .black)
                }
            }.padding(10)
            Text("About destination")
                .fontWeight(.medium)
                .font(.system(size: 18,design: .rounded))
                .frame(maxWidth: .infinity,alignment: .leading)
            Text("Pink beach, or Pantai Merah, as it aptly named,is one of seven pink beaches on the planet.This was awsome")
                .multilineTextAlignment(.leading)
                .font(.system(size: 16,design: .rounded))
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.top,10)
        }.padding(.horizontal,20)
    }
}

struct DetailSheetView_Previews: PreviewProvider {
    static var previews: some View {
        DetailSheetView()
    }
}

struct CategoryItemView:View{
    var title:String;
    var icon:String;
    var color:Color;
    var bgColor:Color;
    
    var body: some View{
        HStack(spacing:20){
            VStack(alignment: .center,spacing:8){
                Image(systemName: icon)
                    .font(.system(size: 30))
                    .symbolRenderingMode(.multicolor)
                    .foregroundColor(color)
                Text(title)
                    .foregroundColor(.black)
            }
        }//HStack
        .frame(width: 50,height: 80)
        .padding(15)
        .background(Color("BrokenWhite"))
        .cornerRadius(15)
    }
}
