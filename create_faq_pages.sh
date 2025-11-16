#!/bin/bash

# Create FAQ directory
mkdir -p faqs

# Function to create FAQ page
create_faq_page() {
    local filename=$1
    local title=$2
    local description=$3
    local keywords=$4
    local content=$5
    
    cat > "faqs/${filename}" << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${title} | Supreme Valves India</title>
    <meta name="description" content="${description}">
    <meta name="keywords" content="${keywords}">
    <link rel="icon" type="image/svg+xml" href="../assets/Supreme Valves.svg">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="../styles.css">
    <style>
        .faq-container { max-width: 1200px; margin: 0 auto; padding: 2rem 1rem; }
        .faq-item { background: #fff; border: 1px solid #e0e0e0; border-radius: 8px; margin-bottom: 1rem; overflow: hidden; transition: all 0.3s ease; }
        .faq-item:hover { box-shadow: 0 4px 12px rgba(0,0,0,0.1); }
        .faq-question { padding: 1.25rem 1.5rem; font-size: 1.1rem; font-weight: 600; color: #333; cursor: pointer; display: flex; justify-content: space-between; align-items: center; margin: 0; user-select: none; }
        .faq-question:hover { background: #f8f9fa; }
        .faq-question i { transition: transform 0.3s ease; color: var(--primary-color); }
        .faq-question.active i { transform: rotate(180deg); }
        .faq-answer { padding: 0 1.5rem; max-height: 0; overflow: hidden; transition: all 0.3s ease; color: #555; line-height: 1.7; }
        .faq-answer.active { padding: 0 1.5rem 1.25rem 1.5rem; max-height: 2000px; }
        .faq-answer ul { margin: 0.5rem 0; padding-left: 1.5rem; }
        .faq-answer li { margin: 0.5rem 0; }
        .faq-answer strong { color: #333; }
        .breadcrumbs { margin-bottom: 2rem; color: #666; }
        .breadcrumbs a { color: var(--primary-color); text-decoration: none; }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <div class="logo">
                <a href="../index.html"><img src="../assets/Supreme Valves.svg" alt="Supreme Valves India Logo"></a>
            </div>
            <nav>
                <ul>
                    <li><a href="../index.html">Home</a></li>
                    <li><a href="../about.html">About Us</a></li>
                    <li><a href="../products.html">Products</a></li>
                    <li><a href="../industries.html">Industries</a></li>
                    <li><a href="../projects.html">Projects</a></li>
                    <li><a href="../resources.html">Resources</a></li>
                    <li><a href="../contact.html">Contact Us</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <main class="faq-container">
        <div class="breadcrumbs">
            <a href="../index.html">Home</a> / <a href="../faqs.html">FAQs</a> / <span>${title}</span>
        </div>
        
        <h1 class="section-title">${title}</h1>
        <p style="text-align: center; max-width: 800px; margin: 0 auto 2rem;">${description}</p>

        ${content}

        <div style="text-align: center; margin-top: 3rem; padding: 2rem; background: #f8f9fa; border-radius: 8px;">
            <p><a href="../faqs.html" class="btn btn-primary">← Back to All FAQs</a> <a href="../contact.html" class="btn btn-secondary">Contact Our Experts</a></p>
        </div>
    </main>

    <footer class="footer-new">
        <div class="container">
            <div class="footer-grid">
                <div class="footer-col footer-products-col">
                    <h4>Product Range</h4>
                    <ul id="footer-products-list" class="footer-products-multicolumn"></ul>
                </div>
                <div class="footer-col">
                    <h4>Quick Links</h4>
                    <ul>
                        <li><a href="../index.html">Home</a></li>
                        <li><a href="../about.html">About Us</a></li>
                        <li><a href="../products.html">Products</a></li>
                        <li><a href="../industries.html">Industries</a></li>
                        <li><a href="../projects.html">Projects</a></li>
                        <li><a href="../resources.html">Resources</a></li>
                        <li><a href="../contact.html">Contact Us</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-company-details">
                <div class="company-info-grid">
                    <div class="company-info-item">
                        <i class="fas fa-map-marker-alt"></i>
                        <div>
                            <h5>India Office</h5>
                            <p>Ranginwala Building, Relief Road<br>Ahmedabad - 380001, Gujarat, India</p>
                        </div>
                    </div>
                    <div class="company-info-item">
                        <i class="fas fa-globe"></i>
                        <div>
                            <h5>International Offices</h5>
                            <p>Singapore: sg@supremevalves.in<br>Sydney, Australia: aus@supremevalves.in<br>Mississauga, Canada: ca@supremevalves.in</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-socials">
                <a href="https://www.facebook.com/p/Supreme-Enterprise-61566023002189/" target="_blank"><i class="fab fa-facebook-f"></i></a>
                <a href="https://www.instagram.com/supremevalvesindia/" target="_blank"><i class="fab fa-instagram"></i></a>
                <a href="https://www.linkedin.com/company/supreme-valves-india/posts/?feedView=all" target="_blank"><i class="fab fa-linkedin-in"></i></a>
                <a href="https://x.com/SupremeValves" target="_blank"><i class="fab fa-x-twitter"></i></a>
                <a href="https://www.youtube.com/@SupremeValves" target="_blank"><i class="fab fa-youtube"></i></a>
            </div>
            <div class="copyright">&copy; 2025 Supreme Valves India. All Rights Reserved.</div>
        </div>
    </footer>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <script src="../js/products.js"></script>
    <script>
        function toggleFAQ(element) {
            element.classList.toggle('active');
            const answer = element.nextElementSibling;
            answer.classList.toggle('active');
        }
    </script>
</body>
</html>
EOF
}

echo "Creating FAQ pages..."
