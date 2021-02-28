import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleText(),
              Expanded(
                child: PokemonList()
              )
            ],
          )
        )
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(17.0),
      child: Text('Pokemon List', style: TextStyle(
        fontSize: 20.0, 
        fontWeight: FontWeight.bold)
      )
    );
  }
}

class Pokemon {
  String name;
  String type;

  Pokemon({this.name, this.type}); // constructor name optional
}

class PokemonList extends StatelessWidget {

  // nampung data pokemon list kita
  List<Pokemon> pokemonList = List<Pokemon>();

  @override
  Widget build(BuildContext context) {
    // add pokemon data

    pokemonList.add(Pokemon(name: 'Bulbasaur', type: 'Grass'));
    pokemonList.add(Pokemon(name: 'Charmander', type: 'Fire'));
    pokemonList.add(Pokemon(name: 'Squirtle', type: 'Water'));

    return ListView.builder(
      itemCount: pokemonList.length,
      itemBuilder: (context, index) {
        Pokemon pokemon = pokemonList[index];
        return ListTile(
          title: Text(pokemon.name),
          subtitle: Text(pokemon.type)
        );
      }
    );
  }
}