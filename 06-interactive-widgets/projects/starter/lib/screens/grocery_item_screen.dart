import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

import '../models/grocery_item.dart';
import '../models/models.dart';

class GroceryItemScreen extends StatefulWidget {
  final Function(GroceryItem) onCreate;
  final Function(GroceryItem) onUpdate;
  final GroceryItem? originalItem;
  final bool isUpdating;

  const GroceryItemScreen({
    Key? key,
    required this.onCreate,
    required this.onUpdate,
    this.originalItem,
  })  : isUpdating = (originalItem != null),
        super(key: key);

  @override
  State<GroceryItemScreen> createState() => _GroceryItemScreenState();
}

class _GroceryItemScreenState extends State<GroceryItemScreen> {
  // TODO: Add grocery item screen state properties
  final _nameController = TextEditingController();
  var _name = '';
  Importance _importance = Importance.low;
  DateTime _dueDate = DateTime.now();
  TimeOfDay _timeOfDay = TimeOfDay.now();
  Color _currentColor = Colors.green;
  var _currentSliderValue = 0;

  // TODO: Add initState()
  @override
  void initState() {
    super.initState();
    final originalItem = widget.originalItem;
    if (originalItem != null) {
      _nameController.text = originalItem.name;
      _name = originalItem.name;
      _importance = originalItem.importance;
      _currentSliderValue = originalItem.quantity;
      _currentColor = originalItem.color;

      final date = originalItem.date;
      _timeOfDay = TimeOfDay(
        hour: date.hour,
        minute: date.minute,
      );
      _dueDate = date;
    }

    _nameController.addListener(() {
      setState(() {
        _name = _nameController.text;
      });
    });
  }

// TODO: Add dispose()
  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO 12: Add GroceryItemScreen Scaffold
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Grocery Item',
          style: GoogleFonts.lato(
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              // TODO 24: Add callback handler
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // TODO 13: Add name TextField
            buildNameField(),
            // TODO 14: Add Importance selection
            buildImportanceField(),
            // TODO 15: Add date picker
            // TODO 16: Add time picker
            // TODO 17: Add color picker
            // TODO 18: Add slider
            // TODO: 19: Add Grocery Tile
          ],
        ),
      ),
    );
  }

  // TODO: Add buildNameField()
  Widget buildNameField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Item Name',
          style: GoogleFonts.lato(
            fontSize: 28.0,
          ),
        ),
        TextField(
          controller: _nameController,
          cursorColor: _currentColor,
          decoration: InputDecoration(
            hintText: 'E.g. Apples, Banana, 1 Bag of salt',
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: _currentColor,
              ),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: _currentColor,
              ),
            ),
          ),
        ),
      ],
    );
  }

  // TODO: Add buildImportanceField()
  Widget buildImportanceField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Importance',
          style: GoogleFonts.lato(fontSize: 28.0),
        ),
        Wrap(
          spacing: 10,
          children: [
            ChoiceChip(
              selectedColor: Colors.black,
              selected: _importance == Importance.low,
              label: const Text(
                'low',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onSelected: (selected) {
                setState(() => _importance == Importance.low);
              },
            ),
            ChoiceChip(
              selectedColor: Colors.black,
              selected: _importance == Importance.medium,
              label: const Text(
                'medium',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onSelected: (selected) {
                setState(() => _importance == Importance.medium);
              },
            ),
            ChoiceChip(
              selectedColor: Colors.black,
              selected: _importance == Importance.high,
              label: const Text(
                'high',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onSelected: (selected) {
                setState(() => _importance == Importance.high);
              },
            ),
          ],
        ),
      ],
    );
  }

  // TODO: ADD buildDateField()

  // TODO: Add buildTimeField()

  // TODO: Add buildColorPicker()

  // TODO: Add buildQuantityField()
}
