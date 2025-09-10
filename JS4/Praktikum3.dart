// void main(){
//   var gifts = {
//   // Key:    Value
//   'first': 'partridge',
//   'second': 'turtledoves',
//   'fifth': 1
// };

// var nobleGases = {
//   2: 'helium',
//   10: 'neon',
//   18: 2,
// };

// print(gifts);
// print(nobleGases);

// var mhs1 = Map<String, String>();
// gifts['first'] = 'partridge';
// gifts['second'] = 'turtledoves';
// gifts['fifth'] = 'golden rings';

// var mhs2 = Map<int, String>();
// nobleGases[2] = 'helium';
// nobleGases[10] = 'neon';
// nobleGases[18] = 'argon';

// }

void main() {
  
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

 
  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  
  var mhs1 = Map<String, String>();
  mhs1['name'] = 'Vincentius Leonanda Prabowo';
  mhs1['nim'] = '2341720149';

  
  var mhs2 = Map<int, String>();
  mhs2[1] = 'Vincentius Leonanda Prabowo';
  mhs2[2] = '2341720149';

  
  gifts['name'] = 'Vincentius Leonanda Prabowo';
  gifts['nim'] = '2341720149';

  nobleGases[99] = 'Vincentius Leonanda Prabowo';
  nobleGases[100] = '2341720149';

  
  print('gifts: $gifts');
  print('nobleGases: $nobleGases');
  print('mhs1: $mhs1');
  print('mhs2: $mhs2');
}
