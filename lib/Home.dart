import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _listaTarefas = ["Ir ao mercado", "Estudar"];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de tarefas"),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: ListView.builder(
                itemCount: _listaTarefas.length,
                  itemBuilder: (contex, index){
                  return ListTile(
                    title: Text(_listaTarefas[index]),
                  );
                  }
              ),
          )
        ],
      ),

      floatingActionButtonLocation:
      FloatingActionButtonLocation.endFloat,
      //floatingActionButton: FloatingActionButton(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        elevation: 6,
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(context: context,
              builder: (context){
            return AlertDialog(
              title: Text(
                "Adicionar Tarefa"
              ),
              content: TextField(
                decoration: InputDecoration(
                  labelText: "Digite a sua tarefa"
                ),
                onChanged: (text){

                },
              ),
              actions: <Widget>[
               TextButton(
                   onPressed: () => Navigator.pop(context),
                   child: Text("Cancelar")
               ),
                TextButton(
                    onPressed: (){},
                    child: Text("Salvar")
                )
              ],
            );
          });
        },

      ),
      bottomNavigationBar: BottomAppBar(
        //shape: CircularNotchedRectangle(),
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
