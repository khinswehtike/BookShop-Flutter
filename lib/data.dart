class Book{
  String title,
  author,
  price,
  image,
  description = 'Jump in and build working Android apps with the help of more than 200 tested recipes. With this cookbook, you’ll find solutions for working with the user interfaces, multitouch gestures, location awareness, web services, and device features such as the phone, camera, and accelerometer. You also get useful steps on packaging your app for the Android Market.';
  int pages;
  double rating;

  //constructor
  Book(this.title, this.author, this.price, this.image,
      this.pages, this.rating);
}

final List<Book> books = [
  Book('Busy Coder\'s guide', "Android", "USD 20", 'images/android_cookbook.jpg', 123,4.0),
  Book('Busy Coder\'s guide', "Android", "USD 20", 'images/android_development.jpg', 123,4.0),
  Book('Busy Coder\'s guide', "Android", "USD 20", 'images/android_grow.png', 123,4.0),
  Book('Busy Coder\'s guide', "Android", "USD 20", 'images/kotlin.jpg', 123,4.0),
  Book('Busy Coder\'s guide', "Android", "USD 20", 'images/practical_android.jpg', 123,4.0),
  Book('Busy Coder\'s guide', "Android", "USD 20", 'images/android_dummies.jpg', 123,4.0),

];