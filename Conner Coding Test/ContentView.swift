//
//  ContentView.swift
//  Conner Coding Test
//
//  Created by Conner Donnelly on 7/27/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
//    @Environment(\.managedObjectContext) private var viewContext
//
//    @FetchRequest(
//        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
//        animation: .default)
    //private var items: FetchedResults<Item>
    var departments:[Departments]?
    var backupDepartments:[Departments] = [Departments(depName:"CompSci",subjects:["iOS","C++","OOP","Assembly Language"],numberOfTeachers:10,numberOfPublicationsPerYr:20),Departments(depName:"AgSci",subjects:["Horsemanship","Cattle Biology","Farm Managment","Crop Care"],numberOfTeachers:10,numberOfPublicationsPerYr:10),Departments(depName:"English",subjects:["LGBT Lit","Marketing English","Roman Lit","Business English"],numberOfTeachers:15,numberOfPublicationsPerYr:36),Departments(depName:"Art",subjects:["Classical","Dark Ages","Modern","Post Modern"],numberOfTeachers:7,numberOfPublicationsPerYr:0)]
   
//    if departments == nil{
//        departments = backupDepartments
//        print("Unable to retreive API data, using backup Data instead")
//    }


    var body: some View {
        NavigationView {
            List {
//                for department in Departments {
//                    NavigationLink{Text("Dep. Name \(departments[index].depName)")
//                    }
//                }
//                ForEach(departments){
//                    department in NavigationLink{
//                        Text("Department Name \(department[index].depName)")
//                    }
                }
//                ForEach(items) { item in
//                    NavigationLink {
//                        Text("Item at \(item.timestamp!, formatter: itemFormatter)")
//                    } label: {
//                        Text(item.timestamp!, formatter: itemFormatter)
//                    }
//                }
//                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Text("University Course Information")
                        .multilineTextAlignment(.center)
                        
                    //Label("University Course Information", systemImage: /*@START_MENU_TOKEN@*/""/*@END_MENU_TOKEN@*/)
//                    EditButton()
                }
                ToolbarItem {
//                    Button(action: addItem) {
//                        Label("Add Item", systemImage: "plus")
//                    }
                }
            }
            //Text("Select an item")
        }
    }

//    private func addItem() {
//        withAnimation {
//            let newItem = Item(context: viewContext)
//            newItem.timestamp = Date()
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//    }
//
//    private func deleteItems(offsets: IndexSet) {
//        withAnimation {
//            offsets.map { items[$0] }.forEach(viewContext.delete)
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//    }
//}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
            ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }
    }
}
