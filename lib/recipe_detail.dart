import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderVal = 1;
  List<Ingredient> _updatedIngredients = [];

  @override
  void initState() {
    super.initState();
    _updateIngredients();
  }

  void _updateIngredients() {
    // Memperbarui daftar bahan sesuai dengan nilai slider yang baru
    setState(() {
      _updatedIngredients = widget.recipe.ingredients
          .map((ingredient) => Ingredient(
              ingredient.quantity * _sliderVal,
              ingredient.measure,
              ingredient.name))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 500,
                width: double.infinity,
                child: Image(
                  image: AssetImage(widget.recipe.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Text(
                      widget.recipe.label,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      widget.recipe.description,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Bahan:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: _updatedIngredients
                          .map((ingredient) => Text(
                                '- ${ingredient.quantity} ${ingredient.measure} ${ingredient.name}',
                                style: TextStyle(fontSize: 16),
                              ))
                          .toList(),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Langkah - Langkah:',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: widget.recipe.cookingSteps
                          .asMap()
                          .entries
                          .map((step) => Text(
                                '${step.key + 1}. ${step.value}',
                                style: TextStyle(fontSize: 16),
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Slider(
                  min: 1,
                  max: 10,
                  divisions: 10,
                  label: '${_sliderVal * widget.recipe.servings} servings',
                  value: _sliderVal.toDouble(),
                  onChanged: (newValue) {
                    setState(() {
                      _sliderVal = newValue.round();
                      _updateIngredients(); // Memperbarui daftar bahan
                    });
                  },
                  activeColor: Colors.green,
                  inactiveColor: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
