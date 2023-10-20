import SwiftUI

struct SaveView: View {
    
    //MARK: MVP - Part I
    func WindowGroup() {
        @AppStorage("number1") var number1: Int = 0
        
        var body: some View {
            VStack {
                Text("This is the SaveView")
                    .padding()
                Text("Number 1: \(number1)")
                    .padding()
            }
        }
        Persistence()
    }
    
    struct SaveView: View {
        @AppStorage("number1") var number1: Int = 0
        
        var body: some View {
            Text("This is the SaveView")
                .padding()
            Text("Number 1: \(number1)")
                .padding()
        }
        
    }
    
    struct RetrieveView: View {
        @AppStorage("number2") var number2: Int = 0
        
        var body: some View {
            Text("This is the RetrieveView")
                .padding()
            Text("Number 2: \(number2)")
                .padding()
        }
    }
    
    
    
    //MARK: Stretch #1 - Part I
    
    
    
    
    @State var number2: Int?
    
    @State var url2: URL?
    
    @State var arrayNumber1: Double?
    @State var arrayNumber2: Double?
    @State var arrayNumber3: Double?
    
    @State var name: String = ""
    @State var age: Int?
    @State var phone: String = ""
    
    var body: some View {
        VStack {
            Group {
                
                TitleView(name: "MVP")
                HStack {
                    //TODO: MVP
                    //                    TextField("Integer #1", value: $number1, format: .number)
                    TextField("Integer #2", value: $number2, format: .number)
                }
                .textFieldStyle(.roundedBorder)
                Button("Save") {
                    //MARK: MVP - Part II
                    @AppStorage("number2") var number2: Int = 0
                    
                    var body: some View {
                        VStack {
                            Text("This is the SaveView")
                                .padding()
                            Text("Number 1: \(number1)")
                                .padding()
                            Text("Number 2: \(number2)")
                                .padding()
                        }
                    }
                    
                    
                    
                    
                }
                .frame(width: 200, height: 50)
                .foregroundColor(.white)
                .background(.blue)
                .clipShape(Capsule())
            }
            
            Group {
                TitleView(name: "Stretch #1")
                VStack {
                    //TODO: Stretch #1
                    //                    TextField("Enter URL #1", text: Binding(
                    //                        get: { url1?.absoluteString ?? "" },
                    //                        set: { url1 = URL(string: $0) }
                    //                    ))
                    TextField("Enter URL #2", text: Binding(
                        get: { url2?.absoluteString ?? "" },
                        set: { url2 = URL(string: $0) }
                    ))
                    
                }
                .autocorrectionDisabled(true)
                .textFieldStyle(.roundedBorder)
                Button("Save") {
                    //MARK: Stretch #1 - Part II
                    
                    
                    
                    
                    
                }
                .frame(width: 200, height: 50)
                .foregroundColor(.white)
                .background(.blue)
                .clipShape(Capsule())
            }
            
            Group {
                TitleView(name: "Stretch #2")
                VStack {
                    HStack {
                        TextField("#1", value: $arrayNumber1, format: .number)
                        TextField("#2", value: $arrayNumber2, format: .number)
                        TextField("#3", value: $arrayNumber3, format: .number)
                    }
                }
                .textFieldStyle(.roundedBorder)
                
                Button("Save") {
                    //MARK: Stretch #2 - Part I
                    
                    
                    
                    
                    
                }
                .frame(width: 200, height: 50)
                .foregroundColor(.white)
                .background(.blue)
                .clipShape(Capsule())
            }
            
            Group {
                TitleView(name: "Stretch #3")
                VStack {
                    TextField("Enter Name", text: $name)
                    TextField("Enter Age", value: $age, format: .number)
                    TextField("Enter Phone", text: $phone)
                }
                .textFieldStyle(.roundedBorder)
                Button("Save") {
                    //MARK: Stretch #3 - Part II
                    
                    
                    
                    
                    
                }
                .frame(width: 200, height: 50)
                .foregroundColor(.white)
                .background(.blue)
                .clipShape(Capsule())
            }
            
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
}

