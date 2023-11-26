//
//  Picker.swift
//  SwiftUI_ToolBox
//
//  Created by J. DeWeese on 11/26/23.
//

import SwiftUI


enum BudgetCategory: CaseIterable, Identifiable, Hashable{
    case Transportation
    case Rent
    case Groceries
    case Savings
    
    var id: Self {self}
}

extension BudgetCategory{
    var title: String {
        switch self {
        case .Transportation:
            return "Transportaion Expenses"
        case .Rent:
            return "Mortgage & Rent"
        case .Groceries:
            return "Grocery Expenses"
        case .Savings:
            return "Savings & Investments "
        }
    }
}
struct BudgetPicker: View {
    @State var selectedItem: BudgetCategory = BudgetCategory.allCases.first!
    
    private let BudgetCategories: [BudgetCategory] = BudgetCategory.allCases
    
    var body: some View {
        
        VStack {
            Text("Budget Category:")
            
            Picker("Choose Budget Category", selection: $selectedItem) {
                ForEach(BudgetCategories) { item in
                    Text(item.title)
                        .tag(item)
                }
            }
            .pickerStyle(.menu)
        }
        
            }
        }

#Preview {
    BudgetPicker()
}
