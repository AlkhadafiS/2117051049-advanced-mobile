import 'dart:io';
late String? nama;

void main(){
  // String? nama;
  // nama = stdin.readLineSync();
  // int umur = 20;
  // var a = [1,2,3];
  // var b = [a,4];
  // var c = [...a,4];
  // String? message;

  // print(nama);
  // print(umur);
  // print(a);
  // print(b);
  // print(c);

  // if (message == null){
  //   text = "Empty";
  // } else {
  //   text = message;
  // }

  // String text = message ?? "Empty";

  List angka = [1,2,3,4,5];

  printList(angka);
  printList2(angka);
}

void printList(List l){
  for (var i = 0; i <l.length; i++){
    print(l[i]);
  }
}

void printList2([List? l]){
  print('cek');
}