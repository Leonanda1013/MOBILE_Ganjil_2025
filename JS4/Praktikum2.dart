void main(){
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
print(halogens);

var names1 = <String>{};
Set<String> names2 = {}; // This works, too.
var names3 = {}; // Creates a map, not a set.
 // Menambahkan data ke Set dengan .add()
  names1.add("Vincentius Leonanda Prabowo"); 
  names1.add("2341720149 coba beda"); 


  names2.addAll({"Vincentius Leonanda Prabowo", "2341720149"});
print(names1);
print(names2);
print(names3);
}