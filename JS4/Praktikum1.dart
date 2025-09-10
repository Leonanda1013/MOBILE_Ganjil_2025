void main(){
//   var list = [1, 2, 3];
// assert(list.length == 3);
// assert(list[1] == 2);
// print(list.length);
// print(list[1]);

// list[1] = 1;
// assert(list[1] == 1);
// print(list[1]);


  
  final List<dynamic> list = List.filled(5, null);
  //variable final dan list dinamis agar fleksibel bisa int string dst
  
  list[1] = "Vincentius Leonanda Prabowo"; 

  
  list[2] = "2341720149"; 

 
  print(list);

  
  print("Index ke-1 (Nama): ${list[1]}");
  print("Index ke-2 (NIM): ${list[2]}");


}