import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';


class AddProductScreen extends StatefulWidget {
  @override
  _AddProductScreen createState() => _AddProductScreen();
}

class _AddProductScreen extends State<AddProductScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _productName, _productType, _productModel, _productDescription;
  int? _quantity;
  double? _price;
  // File? _selectedImage;
  Uint8List? _selectedImage;
  bool _isNew = false;
  

  // Future<void> _pickImage() async {
  //   try {
  //     final result = await FilePicker.platform.pickFiles(
  //       type: FileType.image,
  //       allowMultiple: false, // Ensure single selection
  //     );

  //     if (result != null && result.files.single.bytes != null) {
  //       setState(() {
  //         _selectedImage = File(result.files.single.path!);
  //       });
  //     } else {
  //       print('No file selected.');
  //     }
  //   } catch (e) {
  //     print('Error picking file: $e');
  //   }
  // }

 

Future<void> _pickImage() async {
  try {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: false, // Ensure single selection
    );

    if (result != null) {
      // Access the bytes instead of the path
      Uint8List? fileBytes = result.files.single.bytes;

      if (fileBytes != null) {
        setState(() {
          // If you need to create a File object, you can do so for mobile/desktop
          // For web, you can manage bytes directly or convert to an image
          _selectedImage = fileBytes; // Store bytes directly for web
          // If you need to use an image widget, consider using MemoryImage
          // _imageWidget = MemoryImage(fileBytes);
        });
      } else {
        print('No file selected or file is empty.');
      }
    } else {
      print('No file selected.');
    }
  } catch (e) {
    print('Error picking file: $e');
  }
}




  void _saveProduct() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Save product logic here
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Product Added Successfully!")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Product1')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(left: 400,right: 400),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 800,
                      child: Center(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(labelText: 'Product Name'),
                                    onSaved: (value) => _productName = value,
                                    validator: (value) => value!.isEmpty ? 'Enter product name' : null,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(labelText: 'Product Type'),
                                    onSaved: (value) => _productType = value,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(labelText: 'Product Model'),
                                    onSaved: (value) => _productModel = value,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(labelText: 'Quantity'),
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) => _quantity = int.tryParse(value ?? '0'),
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(labelText: 'Price'),
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) => _price = double.tryParse(value ?? '0.0'),
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(labelText: 'Description'),
                                    maxLines: 3,
                                    onSaved: (value) => _productDescription = value,
                                  ),
                                  // SizedBox(height: 10),
                                  
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Checkbox(
                                        value: _isNew,
                                        onChanged: (value) {
                                          setState(() {
                                            _isNew = value ?? false;
                                          });
                                        },
                                      ),
                                      Text("Mark as New"),
                                      SizedBox(width: 10,),
                                       GestureDetector(
                                    onTap: _pickImage,
                                    child: ElevatedButton.icon(
                                      onPressed: _pickImage, 
                                      label: Text("Upload Image")
                                      ),
                                    
                                    // Container(
                                    //         width: 100,
                                    //         height: 100,
                                    //         color: Colors.grey[200],
                                    //         child: Icon(Icons.camera_alt, color: Colors.grey[600]),
                                    //       )
                                        
                                        //Image.file(_selectedImage!, width: 100, height: 100, fit: BoxFit.cover),
                                  ),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  ElevatedButton(
                                    onPressed: _saveProduct,
                                    child: Text("Save Product"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                         child: SizedBox(
                          child: _selectedImage == null ? Container(
                                              width: 300,
                                              height: 300,
                                              color: Colors.grey[200],
                                              child: Icon(Icons.camera_alt, color: Colors.grey[600]),
                                            ) : ClipRRect(
                                              borderRadius: BorderRadius.circular(8),
                                              child: Image.memory(
                                                _selectedImage!,
                                                width: 300,
                                                height: 300,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                         ),
                        )
                      ],
                    ),
                  )
                 
                  
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
