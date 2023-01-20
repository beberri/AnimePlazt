class model_profile{
  String nombre="";
  String email="";
  String photo;
  List<String> favorite =[];
  List<String> watching =[];
  List<String> finish =[];
  model_profile(this.nombre,this.email,this.photo,this.favorite,this.watching,this.finish){
    nombre = this.nombre;
    email=this.email;
    photo=this.photo;
    favorite =this.favorite;
    watching=this.watching;
    finish=this.finish;
  }

}

