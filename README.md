# ecommerce

lib/
├── core/
│   ├── constants/
│   │   ├── app_colors.dart
│   │   ├── app_strings.dart
│   │   └── app_styles.dart
│   ├── themes/
│   │   ├── light_theme.dart
│   │   └── dark_theme.dart
│   ├── utils/
│   │   ├── validators.dart
│   │   ├── formatter.dart
│   │   └── helpers.dart
│
├── data/
│   ├── models/
│   │   ├── product.dart
│   │   ├── cart_item.dart
│   │   ├── user.dart
│   │   ├── order.dart
│   │   └── category.dart
│   ├── repositories/
│   │   ├── product_repo.dart
│   │   ├── cart_repo.dart
│   │   ├── user_repo.dart
│   │   └── order_repo.dart
│   └── providers/
│       ├── cart_provider.dart
│       ├── product_provider.dart
│       ├── user_provider.dart
│       ├── order_provider.dart
│       └── category_provider.dart
│
├── features/
│   ├── auth/
│   │   ├── login_screen.dart
│   │   ├── register_screen.dart
│   │   ├── widgets/
│   │   │   ├── login_form.dart
│   │   │   └── register_form.dart
│   │   └── auth_service.dart
│   ├── home/
│   │   ├── home_screen.dart
│   │   ├── widgets/
│   │   │   ├── product_tile.dart
│   │   │   └── category_card.dart
│   │   └── home_service.dart
│   ├── product_details/
│   │   ├── product_details_screen.dart
│   │   ├── widgets/
│   │   │   └── product_reviews.dart
│   │   └── product_service.dart
│   ├── cart/
│   │   ├── cart_screen.dart
│   │   └── widgets/
│   │       └── cart_item_tile.dart
│   ├── checkout/
│   │   ├── checkout_screen.dart
│   │   ├── widgets/
│   │   │   ├── payment_methods.dart
│   │   │   └── order_summary.dart
│   │   └── checkout_service.dart
│   ├── orders/
│   │   ├── order_history_screen.dart
│   │   └── widgets/
│   │       ├── order_card.dart
│   │       └── order_status_indicator.dart
│   └── profile/
│       ├── profile_screen.dart
│       ├── edit_profile_screen.dart
│       └── profile_service.dart
│
├── routes/
│   ├── app_routes.dart
│   └── route_generator.dart
│
├── services/
│   ├── api_service.dart
│   ├── local_storage.dart
│   ├── notification_service.dart
│   └── payment_service.dart
│
├── widgets/
│   ├── custom_button.dart
│   ├── custom_text_field.dart
│   ├── loader.dart
│   └── empty_state.dart
