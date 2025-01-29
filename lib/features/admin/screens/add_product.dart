import 'dart:io';
import 'dart:typed_data';
import 'package:ecommerce/core/contants/app_strings.dart';
import 'package:ecommerce/core/contants/app_styles.dart';
import 'package:ecommerce/services/api_service.dart';
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
  TextEditingController productname = TextEditingController();
  TextEditingController productprice = TextEditingController();
  TextEditingController productquantity = TextEditingController();
  TextEditingController productdescription = TextEditingController();
  TextEditingController productmodel = TextEditingController();
  TextEditingController producttype = TextEditingController();

  
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




  Future<void> _saveProduct(name,type,model,desc,quantity,price,image,isNew) async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Save product logic here
      final headers = {
        "Content-Type": "application/json",
      };
      final body = {
        "name": name,
        "type": type!,
        "model": model,
        "description": desc,
        "quantity": quantity,
        "price": price,
        "image": image,
        'isnew': isNew,
      };
      final parameter = {
        "Authorization": "Bearer YOUR_ACCESS_TOKEN"
      };
      // print(body);
      ApiService apiService = ApiService();
      await apiService.post("https:127.0.0.1/register", body, headers, parameter);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Product Added Successfully!")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //  AppBar(title: Text('Add Product1')),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppStrings.newProduct,
                style: TextStyle(
                  fontSize: AppStyle.fontSizeMedium,
                  fontWeight: FontWeight.bold,
                  ),
              ),
            ],
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(left: 100,right: 100),
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
                                    controller: productname,
                                    decoration: InputDecoration(labelText: 'Product Name'),
                                    onSaved: (value) => _productName = value,
                                    validator: (value) => value!.isEmpty ? 'Enter product name' : null,
                                  ),
                                  TextFormField(
                                    controller: producttype,
                                    decoration: InputDecoration(labelText: 'Product Type'),
                                    onSaved: (value) => _productType = value,
                                     validator: (value) => value!.isEmpty ? 'Enter product type' : null,
                                  ),
                                  TextFormField(
                                    controller: productmodel,
                                    decoration: InputDecoration(labelText: 'Product Model'),
                                    onSaved: (value) => _productModel = value,
                                     validator: (value) => value!.isEmpty ? 'Enter product model' : null,
                                  ),
                                  TextFormField(
                                    controller: productquantity,
                                    decoration: InputDecoration(labelText: 'Quantity'),
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) => _quantity = int.tryParse(value ?? '0'),
                                     validator: (value) => value == null || value == 0? 'Enter valid quantity' : null,
                                  ),
                                  TextFormField(
                                    controller: productprice,
                                    decoration: InputDecoration(labelText: 'Price'),
                                    keyboardType: TextInputType.number,
                                    onSaved: (value) => _price = double.tryParse(value ?? '0.0'),
                                     validator: (value) => value == null || value == 0? 'Enter valid price' : null,
                                  ),
                                  TextFormField(
                                    controller: productdescription,
                                    decoration: InputDecoration(labelText: 'Description'),
                                    maxLines: 3,
                                    onSaved: (value) => _productDescription = value,
                                     validator: (value) => value!.isEmpty ? 'Enter product description' : null,
                                  ),

                                  SizedBox(height: 20),
                                  
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Checkbox(
                                        value: _isNew,
                                        onChanged: (value) {
                                          setState(() {
                                            _isNew = value ?? false;
                                            print(_isNew);
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
                                  ),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  ElevatedButton(
                                    // onPressed: (){
                                    //   _productName = productname.text;
                                    //   print(_productName);},
                                    onPressed: (){_saveProduct(
                                       productname.text,
                                       producttype.text,
                                       productmodel.text,
                                       productdescription.text,
                                       productquantity.text,
                                       productprice.text,
                                       _selectedImage,
                                       _isNew
 
                                    );},
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

