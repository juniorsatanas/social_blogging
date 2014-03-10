 
part of social_blogging; 
 
// lib/social/blogging/model.dart 
 
class BloggingModel extends BloggingEntries { 
 
  BloggingModel(Model model) : super(model); 
 
  fromJsonToBlogEntry() { 
    fromJson(socialBloggingBlogEntry); 
  } 
  
  fromJsonToModel() { 
    fromJson(socialBloggingModel); 
  }
  
  fromMap(Map<String, Object> entriesMap) {  
    Map<String, Object> blogEntryMap = entriesMap["Blog"]; 
    fromMapToEntry(blogEntryMap); 
  }
  
  init() {  
    initBlogs(); 
  } 
 
  initBlogs() {  
    var blogConcept = blogs.concept; 
 
    var blog1 = new Blog(blogConcept); 
    blog1.link = Uri.parse("http://www.dartlang.org/articles/dart-unit-tests/"); 
    blog1.name = "present"; 
    blogs.add(blog1); 
 
    var blog2 = new Blog(blogConcept); 
    blog2.link = Uri.parse("http://www.villa-marrakech.ma/"); 
    blog2.name = "time"; 
    blogs.add(blog2); 
 
    var blog3 = new Blog(blogConcept); 
    blog3.link = Uri.parse("http://code.google.com/p/dart/issues/list"); 
    blog3.name = "Dart issues"; 
    blogs.add(blog3); 
 
  } 
 
 
} 
 
