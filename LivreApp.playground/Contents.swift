



struct Book : Equatable{
    
    
    enum Genre : String{
        case brêle = "Brêle"
        case fantastique = "Fantastique"
        case heroique = "Héroique"
        case aventure = "Aventure"
    }

    static func ==(lhs: Book, rhs: Book) -> Bool {
        if lhs.id == rhs.id {
            return true
        }
        return false
    }
    
    let id : Int
    let title : String
    let author : String
    let genre : Genre
    var price : Float
    var notation : Int?
    var like : Bool
    
}




class Library {
    private var books:[Book] = []
    // var restaurants = [Restaurant]()
    // var restaurants : Array<Restaurant> = []
    // var restaurants = Array<Restaurant>()
    var book1 = Book(id: 1, title: "Harry sur la route", author: "Martin", genre: .aventure, price: 15.1, notation: 8, like: false)
    var book2 = Book(id: 2, title: "Thierry sur le chemin", author: "Nathalie", genre: .fantastique, price: 12.0, notation: 5, like: false)
    var book3 = Book(id: 3, title: "Dugarry du riz", author: "Rico", genre: .brêle, price: 15.51, notation: 4, like: false)
    var book4 = Book(id: 4, title: "Mayry du Lys", author: "Lito", genre: .heroique, price: 12.15, notation: nil, like: true)
    //List <Book> = []
    
    
    var allBooks: [Book] {
        return books
    }
    
    init() {
      books.append(book1)
      books.append(book2)
      books.append(book3)
      books.append(book4)
        print(books)
    }
    func add(book : Book){
       
        books.append(book)
    }
    
    func remove(book : Book){
        
        if let index = books.index(of: book){
            books.remove(at: index)
        }
//        for itemBook in books.enumerated() {
//            if (itemBook.element.id == book.id)
//            {
//                let idList = itemBook.offset
//                books.remove(at: idList)
//
//            }
//        }
        
        
    }
    
    func get(id: Int?) -> [Book] {
        var list:[Book] = []
        if let bookId = id {
            list.append(books[bookId])
            return list
        }
            return books
    }
    
    
   
}


