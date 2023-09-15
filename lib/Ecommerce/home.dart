return Scaffold(
// TODO: Add app bar (102)
appBar: AppBar(
// TODO: Add buttons and title (102)
leading: IconButton(
icon: const Icon(
Icons.menu,
semanticLabel: 'menu',
),
onPressed: () {
print('Menu button');
},
),
title: const Text('SHRINE'),
// TODO: Add trailing buttons (102)
actions: <Widget>[
IconButton(
icon: const Icon(
Icons.search,
semanticLabel: 'search',
),
onPressed: () {
print('Search button');
},
),
IconButton(
icon: const Icon(
Icons.tune,
semanticLabel: 'filter',
),
onPressed: () {
print('Filter button');
},
),
],
// TODO: Add a grid view (102)
body: Center(
child: Text('You did it!'),
),
// TODO: Set resizeToAvoidBottomInset (101)
resizeToAvoidBottomInset: false,
);