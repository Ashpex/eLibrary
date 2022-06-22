

import 'package:elibrary/librarian/data/models/author.dart';
import 'package:elibrary/librarian/data/models/book.dart';

const baseRadius = 10.0;
const basePadding = 10.0;
const paddingSize = 30.0;

// path
const iconsPath = 'assets/icons/';
const imagesPath = 'assets/images/';

// link
const imageLink =
    'https://png.pngtree.com/png-vector/20191027/ourlarge/pngtree-book-cover-template-vector-realistic-illustration-isolated-on-gray-background-empty-png-image_1893997.jpg';
Book book_cons = Book(id: 5, name: 'Name', star: '5', img_link: 'https://topdev.vn/blog/wp-content/uploads/2020/10/HTTP-status-code-error-404.png',
description: 'Descriptions', genres: [], add_date: 'time', author: Author(2,'Author'));