import 'package:flutter/material.dart';
import 'package:yapero/models/users_model.dart';

class HomePage extends StatelessWidget {
  Widget customListTitle(UsersModel usuario) {
    return ListTile(
      leading: Image.network(usuario.perfilUrl),
      trailing: Text(usuario.precio),
      title: Text(usuario.nombre),
      subtitle: Text(usuario.fecha),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.orange,
      appBar: _appBar(),
      body: _cuerpo(),
      floatingActionButton: _botones(),
    );
  }

  //Todo sobre appbar
  Widget _appBar() {
    return AppBar(
      title: Text("YAPERO"),
      backgroundColor: Color(0xFFAB47BC),
      //centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.menu,
          size: 28,
        ),
      ),
    );
  }

  //todo sobre cerpo
  Widget _cuerpo() {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 50.0,
          color: Color(0xFFBA68C8),
          //margin: EdgeInsets.only(top:1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: Icon(Icons.visibility, color: Color(0xFF00BFA5)),
                // child: Icon(Icons.visibility, color: Colors.white),
              ),
              Text("Mostrar Saldo",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF00BFA5),
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 70.0,
          color: Colors.white10, //es como el background color
          child: Row(
            children: <Widget>[
              SizedBox(
                child: Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://pbs.twimg.com/profile_images/1228078976305897474/-76048XX.jpg"),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              SizedBox(
                child: Container(
                  margin: EdgeInsets.only(left: 10.0, right: 50.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text("Vidawasi Perú",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                              fontWeight: FontWeight.bold)),
                      Text("Por el Coraje de Mamá",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                  width: 90.0,
                  height: 40.0,
                  child: Container(
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text("DONAR",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                    ),
                  )),
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
          height: 10,
          thickness: 1, //aumenta el grosor de linea
          indent: 3,
          endIndent: 3,
        ), //esto es ese linea que divide
        Container(
          margin: EdgeInsets.only(top: 1, left: 18.0, right: 18.0),
          width: double.infinity,
          //color: Colors.lightBlue,
          height: 30.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Últimos yapeos",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              Text("Ver todos",
                  style: TextStyle(
                      fontSize: 19,
                      color: Color(0xFF00BFA5),
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 275.0,
          color: Colors.white12, //cambiar el color fondo donde users
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.circle, size: 40, color: Colors.yellow),
                trailing: Text("S/100.00",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.bold)),
                title: Text("Justino Ramos",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                subtitle: Text("11/05/2021", style: TextStyle(fontSize: 15)),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.circle, size: 40, color: Colors.yellow),
                trailing: Text("S/71.00",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.bold)),
                title: Text("Katty Mariana Gamarra",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                subtitle: Text("11/05/2021", style: TextStyle(fontSize: 15)),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.circle, size: 40, color: Colors.yellow),
                trailing: Text("S/23.00",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.bold)),
                title: Text("Michelle Ntaly Silva",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                subtitle: Text("11/05/2021", style: TextStyle(fontSize: 15)),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.circle, size: 40, color: Colors.yellow),
                trailing: Text("S/400.00",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.bold)),
                title: Text("ilmer Diego Valeriano",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                subtitle: Text("11/05/2021", style: TextStyle(fontSize: 15)),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.circle, size: 40, color: Colors.yellow),
                trailing: Text("S/50.00",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.bold)),
                title: Text("Flores Mamani Gabriela",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                subtitle: Text("11/05/2021", style: TextStyle(fontSize: 15)),
              ),
            ],
          ),
        )
      ],
    );
  }
  //donde estan los usuarios

  //todo botones

  Widget _botones() {
    return Container(
      margin: EdgeInsets.only(left: 30.0, right: 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            width: 120,
            height: 50,
            child: RaisedButton(
              child: Text("Cobrar",
                  style: TextStyle(fontSize: 20, color: Color(0xFF00BFA5))),
              onPressed: () {},
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                side: BorderSide(
                    color: Color(0xFF00BFA5),
                    style: BorderStyle.solid,
                    width: 2),
              ),
            ),
          ),
          SizedBox(
            width: 60,
            height: 50,
            child: FlatButton(
              child: Icon(Icons.qr_code, color: Colors.white),
              onPressed: () {},
              color: Color(0xFF00BFA5),
              //color: Colors.lightGreen,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
            ),
          ),
          SizedBox(
            width: 120,
            height: 50,
            child: RaisedButton(
              child: Text("Yapear",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              onPressed: () {},
              color: Color(0xFF00BFA5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
