# Supreme Valves Technical Hub - SEO & Content Strategy

This document outlines the SEO strategy and details the technical content generated for the Supreme Valves Technical Hub. The goal is to enhance Answer Engine Optimization (AEO), improve search visibility, and provide valuable resources for engineers, procurement managers, and plant designers.

## Overall SEO Strategy

*   **Target Audience:** Engineers, procurement managers, plant designers, technical professionals in industrial sectors.
*   **Keywords:** Focus on long-tail, technical keywords related to valve types, standards, dimensions, materials, and calculations (e.g., "ASME B16.5 Class 150 flange dimensions," "valve Cv table," "pipe schedule chart," "material compatibility for valves").
*   **AEO & Featured Snippets:** Structure content, especially tables and FAQs, for direct answers to common technical queries to capture featured snippets and improve visibility in answer engines.
*   **Schema Markup:** Implement comprehensive JSON-LD schema markup (`TechnicalArticle`, `FAQPage`, `HowTo`) to help search engines understand content context and improve rich result display.
*   **Internal Linking:** Create a robust internal linking structure between related technical pages and product pages to distribute link equity and guide users through relevant content.
*   **Accessibility:** Ensure all generated content is accessible, using semantic HTML, `alt` text for images, and proper table captions.
*   **Responsiveness & Performance:** Optimize for mobile devices and fast loading times using Bootstrap 5 and efficient data handling.

## Generated Content Overview

The following technical pages have been generated within the `docs/technical-resources/` directory, each optimized for SEO and user experience:

### 1. ASME B16.5 Class 150 Flange Dimensions (`asme-b16-5-class-150.html`)
*   **Description:** Detailed dimensional chart for Class 150 flanges (WN, SO, BL) with DN column, OD, thickness, bolt circle, bolt count, and bolt size. Includes mm & inches.
*   **SEO Elements:**
    *   `title` and `meta description` optimized with keywords.
    *   `TechnicalArticle` JSON-LD schema.
    *   Responsive HTML table with `<caption>` and `scope` attributes.
    *   Interactive DataTables.
    *   Bar chart (`canvas`) with `alt` text and tooltips showing DN and NPS.
    *   Downloadable CSV and JSON data.
    *   Introductory and concluding paragraphs explaining purpose and application.

### 2. Valve Cv Table - Gate, Globe, Ball, Butterfly (`valve-cv-table.html`)
*   **Description:** Flow coefficient (Cv) reference by DN and valve type. Includes guidance on how to use Cv for sizing.
*   **SEO Elements:**
    *   `title` and `meta description` optimized.
    *   `TechnicalArticle` JSON-LD schema.
    *   Responsive HTML table with `<caption>` and `scope`.
    *   Interactive DataTables.
    *   Line chart (`canvas`) showing Cv vs. DN for different valve types, with tooltips.
    *   Downloadable CSV and JSON data.
    *   Introductory and concluding paragraphs.

### 3. Pipe Schedule & Wall Thickness (`pipe-schedule-table.html`)
*   **Description:** Pipe schedule table with DN, OD, wall thickness per schedule (SCH 10, 20, 40, 80), and weight per meter. Useful for weight and pressure calculations.
*   **SEO Elements:**
    *   `title` and `meta description` optimized.
    *   `TechnicalArticle` JSON-LD schema.
    *   Responsive HTML table with `<caption>` and `scope`.
    *   Interactive DataTables.
    *   Downloadable CSV and JSON data.
    *   Introductory and concluding paragraphs.

### 4. Material Composition & Equivalent Grades (`material-composition.html`)
*   **Description:** Material chemical composition, mechanical properties, and cross-reference (ASTM, DIN, EN). Includes DN relevance for flange/valve sizing notes.
*   **SEO Elements:**
    *   `title` and `meta description` optimized.
    *   `TechnicalArticle` JSON-LD schema.
    *   Responsive HTML table with `<caption>` and `scope`.
    *   Interactive DataTables.
    *   Downloadable CSV and JSON data.
    *   Introductory and concluding paragraphs.

### 5. Useful Converters & Calculators (`converter-tools.html`)
*   **Description:** Interactive widgets for Pressure unit converter, Temperature converter, Cv ↔ Kv, Flow ↔ DP calculator, and Pipe Size calculator. Each tool outputs sample values and a downloadable CSV.
*   **SEO Elements:**
    *   `title` and `meta description` optimized.
    *   `TechnicalArticle` JSON-LD schema, with nested `HowTo` schema for each widget.
    *   Interactive JavaScript widgets.
    *   Downloadable CSV for sample conversions/calculations.
    *   Introductory paragraph explaining purpose.

### 6. Standards & Reference (`standards-reference.html`)
*   **Description:** Overview of ASME, ANSI, API, ISO valve standards, and IBR regulations.
*   **SEO Elements:**
    *   `title` and `meta description` optimized.
    *   `TechnicalArticle` JSON-LD schema.
    *   Clear headings and structured content.
    *   Internal links to external standards bodies.

### 7. Visual Reference Tables (`visual-references.html`)
*   **Description:** Visual guides for pressure rating graphs, material compatibility charts, temperature vs pressure graphs, and illustrated flange face types.
*   **SEO Elements:**
    *   `title` and `meta description` optimized.
    *   `TechnicalArticle` JSON-LD schema.
    *   Placeholders for images/graphs with `alt` text and captions.

### 8. Technical FAQs (`technical-faqs.html`)
*   **Description:** Answers to highly technical questions about non-slam check valves, diaphragm valves, IBR certification, and more.
*   **SEO Elements:**
    *   `title` and `meta description` optimized.
    *   `FAQPage` JSON-LD schema for each Q&A pair.
    *   Structured HTML for questions and answers.

## Implementation Details

*   **Framework:** Bootstrap 5 for responsive design and consistent styling.
*   **Interactivity:** DataTables.js for sortable, searchable, and paginated tables. Chart.js for interactive data visualizations.
*   **Units:** All tables and charts consistently use DN (Nominal Diameter), with both mm and inches where appropriate. Units are clearly labeled in header cells (e.g., "OD (mm)").
*   **File Naming:** Kebab-case slugs for all HTML, CSV, and JSON files (e.g., `asme-b16-5-class-150.html`).

This comprehensive approach ensures that the Supreme Valves Technical Hub is not only a valuable resource for users but also highly optimized for search engines and answer engines.
