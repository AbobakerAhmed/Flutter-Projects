//Date: 28th of July 2024
//Course: Learn Dart from Scratch by eng. Weal Abu Hamza
//Platform: Youtube
//Course Link: https://www.youtube.com/watch?v=6bSP4vazmyw&list=PL93xoMrxRJIutlMCImcV3CYMmjS0MmlWL

/*

*/

void main(){
  Phone phone1 = new Phone("iphone 8 plus", 0999757397, 0115384176);
  phone1.setSim1(0901936329);
  print(phone1.name);
}//main

class Phone{
  String name = "Phone";
  String sim1 = "NULL";
  String sim2 = "NULL";

  //Constructor:
  Phone(String name, var sim1, var sim2){
    this.name = name;
    this.sim1 = sim1.toString();
    this.sim2 = sim2.toString();
  }

  //Seters:
  void setName(String name){ this.name = name;}
  void setSim1(var sim1){ this.sim1 = sim1.toString();}
  void setSim2(var sim2){ this.sim2 = sim2.toString();}

  //Geters:
  String getName(){ return this.name;}
  String getSim1(){ return this.sim1;}
  String getSim2(){ return this.sim2;}

  //Methods:
  
}//Phone
