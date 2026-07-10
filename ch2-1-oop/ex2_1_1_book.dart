class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  void showDetail() {
    print('Title: $title | Author: $author | Price: $price');
  }
}

void main() {
  Book b1 = Book('Clean Code', 'Robert C. Martin', 45.0);
  Book b2 = Book('The Pragmatic Programmer', 'Andrew Hunt', 39.5);

  b1.showDetail();
  b2.showDetail();
}
