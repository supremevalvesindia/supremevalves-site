# Product Management System - Supreme Valves

## Overview
The website now uses a **JSON-based dynamic product management system** that allows you to easily manage all products, their images, and details from a single JSON file.

## File Structure

```
supremevalves_site_v3/
├── data/
│   └── products.json          # Product database (EDIT THIS FILE)
├── js/
│   └── products.js            # Product rendering engine
├── assets/
│   └── Valves and Projects/   # Product images
├── index.html                 # Homepage (uses featured products)
└── products.html              # Products page (shows all products)
```

## How to Add/Edit Products

### 1. Edit the JSON File
Open `data/products.json` and add or modify products:

```json
{
  "id": "your-product-id",
  "name": "Full Product Name",
  "shortName": "Display Name",
  "category": "Product Category",
  "image": "assets/Valves and Projects/your-image.jpg",
  "description": "Product description",
  "applications": ["Industry 1", "Industry 2"],
  "featured": true
}
```

### 2. Product Fields Explained

- **id**: Unique identifier (lowercase, use hyphens)
- **name**: Full product name
- **shortName**: Name shown on product cards
- **category**: Product category for filtering
- **image**: Path to product image
- **description**: Brief product description
- **applications**: Array of industries/applications
- **featured**: `true` to show on homepage, `false` otherwise

### 3. Add Product Images

1. Place your product image in `assets/Valves and Projects/`
2. Use the filename in the JSON `image` field
3. Supported formats: JPG, JPEG, PNG

### 4. Categories

Current categories in the system:
- Control Valves
- Quarter-Turn Valves
- Non-Return Valves
- Automated Valves
- Specialty Valves
- Strainers & Filters
- Multi-Port Valves
- Safety Valves
- Steam Traps
- Specialty Equipment
- Flow Indicators

You can add new categories by simply using them in the JSON file.

## Current Products (28 Total)

### Featured Products (shown on homepage):
1. Gate Valve
2. Globe Valve
3. Ball Valve
4. Ball Valve with Actuator
5. Check Valve
6. Butterfly Valve

### All Products:
1. Sight Glass
2. Knife Edge Gate Valve
3. Gate Valve
4. Swing Check Valve
5. Piston Valve
6. Blow Down Valve
7. Globe Valve
8. Basket / Pot Type Strainer
9. Single Piece Ball Valve
10. Non Slam Check Valve
11. Needle Valve
12. Butterfly Valve
13. Y-Type Strainer
14. Two Piece Ball Valve
15. Dual Plate Check Valve
16. Three Piece Ball Valve
17. Moisture Separator
18. Wafer Check Valve
19. Pressure Reducing Valve
20. Lift Type Non Return Valve
21. Flush Bottom Valve
22. Steam Trap - Thermodynamic
23. Three Way / L Port / T Port Ball Valve
24. Angle Type / Spring Loaded Safety Relief Valve
25. 2-3 Way Motorized, Cylinder & Pneumatic Control Valve
26. Ball Valve with Actuator
27. Check Valve
28. Butterfly Valve

## Features

### Homepage
- Displays **6 featured products** automatically
- Products marked with `"featured": true` appear here

### Products Page
- Shows **all products** from JSON
- **Category filter buttons** for easy browsing
- Click category to filter products
- "All Products" shows everything

### Dynamic Rendering
- Products load automatically on page load
- No need to manually update HTML
- Add product to JSON → appears on website immediately

### Image Fallback
- If image is missing, shows placeholder
- Prevents broken image icons

## How to Update

### Add a New Product
1. Open `data/products.json`
2. Copy an existing product object
3. Modify the fields with new product info
4. Add product image to `assets/Valves and Projects/`
5. Save the file
6. Refresh website - product appears automatically!

### Change Featured Products
1. Open `data/products.json`
2. Set `"featured": true` for products you want on homepage
3. Set `"featured": false` for others
4. Save and refresh

### Update Product Image
1. Replace image file in `assets/Valves and Projects/`
2. Or update `image` path in JSON
3. Refresh website

### Change Product Category
1. Edit `category` field in JSON
2. New category appears in filter automatically

## JavaScript API

The `ProductManager` class provides these methods:

```javascript
// Load all products
await productManager.loadProducts();

// Get featured products
const featured = productManager.getFeaturedProducts(6);

// Get all products
const all = productManager.getAllProducts();

// Get by category
const controlValves = productManager.getProductsByCategory('Control Valves');

// Search products
const results = productManager.searchProducts('ball valve');

// Render to page
productManager.renderProducts('container-id', products);
```

## Benefits

✅ **Easy Management**: Update one JSON file instead of multiple HTML files
✅ **Consistent Design**: All products use same card template
✅ **Automatic Filtering**: Categories auto-generate from JSON
✅ **Scalable**: Add 100+ products without touching HTML
✅ **SEO Friendly**: Proper alt tags and semantic HTML
✅ **Fast Updates**: Change product info in seconds
✅ **No Coding Required**: Just edit JSON file

## Troubleshooting

**Products not showing?**
- Check browser console for errors
- Verify JSON syntax is valid
- Ensure `js/products.js` is loaded

**Image not displaying?**
- Check image path in JSON
- Verify image exists in folder
- Check image filename (case-sensitive)

**Category filter not working?**
- Ensure `category-filter` div exists on page
- Check that products have valid categories
- Verify JavaScript is loaded

## Future Enhancements

Potential additions:
- Product detail pages (auto-generated)
- Search functionality
- Price management
- Stock status
- Product specifications table
- Related products
- Product comparison
