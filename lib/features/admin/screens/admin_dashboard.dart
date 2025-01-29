import 'dart:typed_data';

import 'package:ecommerce/core/contants/app_strings.dart';
import 'package:ecommerce/core/contants/app_styles.dart';
import 'package:ecommerce/features/admin/screens/analysis.dart';
import 'package:ecommerce/features/admin/screens/delete_product.dart';
import 'package:ecommerce/features/admin/screens/update_product.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:ecommerce/features/admin/screens/add_product.dart';
// Import other necessary screens

class AdminDashboardPanel extends StatefulWidget {
  @override
  _AdminDashboardPanelState createState() => _AdminDashboardPanelState();
}

class _AdminDashboardPanelState extends State<AdminDashboardPanel> {
  Widget _selectedScreen = DashboardContent();
  String _selectedRoute = '/admin-dashboard';

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(AppStrings.appName),
      ),
      sideBar: SideBar(
        textStyle: TextStyle(
          fontSize: 24,
        ),
        items: const [
          AdminMenuItem(
            title: 'Dashboard',
            route: '/admin-dashboard',
            icon: Icons.dashboard,
          ),
          AdminMenuItem(
            title: 'Product Management',
            icon: Icons.file_copy,
            children: [
              AdminMenuItem(
                title: 'Add Product',
                route: '/add-product',
                icon: Icons.control_point_rounded
              ),
              AdminMenuItem(
                title: 'Update Product',
                route: '/update-product',
                icon: Icons.update_rounded
              ),
              AdminMenuItem(
                title: 'Delete Product',
                route: '/delete-product',
                icon: Icons.delete_forever_rounded
              ),
              AdminMenuItem(
                title: 'Third Level',
                children: [
                  AdminMenuItem(
                    title: 'Third Level Item 1',
                    route: '/thirdLevelItem1',
                  ),
                  AdminMenuItem(
                    title: 'Third Level Item 2',
                    route: '/thirdLevelItem2',
                  ),
                ],
              ),
            ],
          ),
          AdminMenuItem(
            title: 'Analysis',
            route: '/analysis',
            icon: Icons.analytics_rounded,
          ),
        ],
        selectedRoute: _selectedRoute,
        onSelected: (item) {
          if (item.route != null) {
            setState(() {
              _selectedScreen = _getScreenForRoute(item.route!);
              _selectedRoute = item.route!;
            });
          }
        },
        header: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'header',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        footer: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'footer',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Admin Dashboard',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 36,
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: _selectedScreen,
            ),
          ],
        ),
      ),
    );
  }

  Widget _getScreenForRoute(String route) {
    switch (route) {
      case '/admin-dashboard':
        return DashboardContent();
      case '/add-product':
        return AddProductScreen();
      case '/update-product':
        return UpdateProductScreen();
      case '/delete-product':
        return DeleteProductScreen();
      case '/analysis':
        return DataAnalysisScreen();
      // Add cases for other routes
      default:
        return DashboardContent();
    }
  }
}

class DashboardContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome to the Dashboard',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
       
        // Add more dashboard content here
      ],
    );
  }
}

class AddProductScreen1 extends StatefulWidget {
  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  String? _productName, _productType, _productModel, _productDescription;

  int? _quantity;

  double? _price;

  // File? _selectedImage;
  Uint8List? _selectedImage;

  bool _isNew = false;

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
    
      // Save product logic here
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Product Added Successfully!")));
    
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Add Product',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        // Add your form or content for adding a product
        Text('Form for adding a new product goes here 111.'),
         Text('Here you can see an overview of your e-commerce store.'),
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
          decoration: InputDecoration(labelText: 'Product Description'),
          onSaved: (value) => _productDescription = value,
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Quantity'),
        ),
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
              ),
      ],
        ),
            Container(
            width: 100,
            height: 100,
            color: Colors.grey[200],
            child: Icon(Icons.camera_alt, color: Colors.grey[600]),
          ),
         Column(
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
      ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveProduct,
              child: Text("Save Product"),
            ),
           ],
         )
        // Image.file(_selectedImage!, width: 100, height: 100, fit: BoxFit.cover),
      ]
    );
  }
}

class UpdateProductScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Update Product',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        // Add your form or content for updating a product
        Text('Form for updating an existing product goes here.'),
      ],
    );
  }
}

// Implement other screen widgets as needed