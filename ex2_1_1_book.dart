class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  void showDetail() {
    print('ชื่อหนังสือ: $title');
    print('ผู้แต่ง: $author');
    print('ราคา: $price บาท');
    print('--------------------------'); 
  }
}

void main() {
  Book book1 = Book('เรียนรู้ Dart และ Flutter', 'สมชาย ใจดี', 350.0);

  Book book2 = Book('โจทย์และแนวคิดการเขียนโปรแกรม', 'สมหญิง รักเรียน', 290.0);

  Book book3 = Book('English', 'natthawut' , 400.0);

  book1.showDetail();
  book2.showDetail();
  book3.showDetail();
}