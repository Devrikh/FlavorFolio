class Food {
  String name;
  String calorie;
  
  String imagePath;

  Food({
    required this.name,
    required this.calorie,
   
    required this.imagePath,
    
  });

  String get _name => name;
  String get _calorie => calorie;
 
  String get _imagePath => imagePath;
  
}