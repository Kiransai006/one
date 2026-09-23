<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>BKS STORES | Kiran Fashion World</title>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@500;600;700&display=swap" rel="stylesheet">

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --primary: #8b2252;
      --primary-dark: #68163d;
      --secondary: #d6a84f;
      --cream: #fffaf3;
      --white: #ffffff;
      --dark: #21191c;
      --text: #51474a;
      --border: #eaded9;
      --light-pink: #f9edf2;
      --shadow: 0 15px 45px rgba(76, 30, 49, 0.12);
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      font-family: "DM Sans", sans-serif;
      color: var(--text);
      background: var(--cream);
      line-height: 1.6;
    }

    a {
      text-decoration: none;
      color: inherit;
    }

    img {
      width: 100%;
      display: block;
    }

    button {
      font-family: inherit;
      cursor: pointer;
      border: none;
    }

    /* HEADER */
    header {
      position: sticky;
      top: 0;
      z-index: 1000;
      background: rgba(255, 250, 243, 0.96);
      backdrop-filter: blur(15px);
      border-bottom: 1px solid var(--border);
    }

    .announcement {
      background: var(--primary);
      color: white;
      text-align: center;
      padding: 9px 15px;
      font-size: 13px;
      letter-spacing: 0.5px;
    }

    .navbar {
      max-width: 1250px;
      margin: auto;
      height: 82px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 0 25px;
    }

    .logo {
      font-family: "Playfair Display", serif;
      color: var(--primary);
      font-size: 30px;
      font-weight: 700;
      letter-spacing: 1px;
    }

    .logo span {
      display: block;
      color: var(--secondary);
      font-family: "DM Sans", sans-serif;
      font-size: 10px;
      letter-spacing: 4px;
      text-align: center;
      margin-top: -5px;
    }

    .nav-links {
      display: flex;
      gap: 30px;
      list-style: none;
      font-size: 14px;
      font-weight: 600;
    }

    .nav-links a:hover {
      color: var(--primary);
    }

    .nav-actions {
      display: flex;
      gap: 18px;
      align-items: center;
      font-size: 19px;
    }

    .cart {
      position: relative;
    }

    .cart-count {
      position: absolute;
      top: -10px;
      right: -10px;
      width: 18px;
      height: 18px;
      border-radius: 50%;
      background: var(--primary);
      color: white;
      font-size: 10px;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .menu-btn {
      display: none;
      background: none;
      font-size: 24px;
    }

    /* HERO */
    .hero {
      min-height: 650px;
      background:
        linear-gradient(90deg, rgba(28, 15, 20, 0.78), rgba(28, 15, 20, 0.20)),
        url("https://images.unsplash.com/photo-1610030469983-98e550d6193c?auto=format&fit=crop&w=1800&q=85")
        center/cover;
      display: flex;
      align-items: center;
      color: white;
    }

    .hero-content {
      max-width: 1250px;
      width: 100%;
      margin: auto;
      padding: 70px 25px;
    }

    .eyebrow {
      text-transform: uppercase;
      letter-spacing: 4px;
      font-size: 13px;
      color: #f0cf88;
      font-weight: 700;
      margin-bottom: 15px;
    }

    .hero h1 {
      max-width: 750px;
      font-family: "Playfair Display", serif;
      font-size: clamp(45px, 7vw, 82px);
      line-height: 1.05;
      margin-bottom: 25px;
    }

    .hero p {
      max-width: 570px;
      font-size: 18px;
      color: #f8e9e5;
      margin-bottom: 35px;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      padding: 14px 28px;
      border-radius: 3px;
      font-size: 14px;
      font-weight: 700;
      transition: 0.3s;
    }

    .btn-primary {
      background: var(--secondary);
      color: #261c13;
    }

    .btn-primary:hover {
      background: white;
      transform: translateY(-2px);
    }

    .btn-outline {
      border: 1px solid white;
      color: white;
      margin-left: 10px;
    }

    .btn-outline:hover {
      background: white;
      color: var(--primary);
    }

    /* SECTION */
    .section {
      max-width: 1250px;
      margin: auto;
      padding: 90px 25px;
    }

    .section-heading {
      text-align: center;
      margin-bottom: 45px;
    }

    .section-heading span {
      color: var(--secondary);
      text-transform: uppercase;
      font-size: 12px;
      font-weight: 700;
      letter-spacing: 3px;
    }

    .section-heading h2 {
      font-family: "Playfair Display", serif;
      color: var(--dark);
      font-size: 42px;
      margin: 8px 0;
    }

    .section-heading p {
      max-width: 600px;
      margin: auto;
      color: #786d70;
    }

    /* CATEGORIES */
    .categories {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 20px;
    }

    .category {
      position: relative;
      height: 420px;
      overflow: hidden;
      border-radius: 5px;
    }

    .category img {
      height: 100%;
      object-fit: cover;
      transition: 0.6s;
    }

    .category:hover img {
      transform: scale(1.08);
    }

    .category-overlay {
      position: absolute;
      inset: 0;
      display: flex;
      flex-direction: column;
      justify-content: flex-end;
      padding: 25px;
      background: linear-gradient(transparent, rgba(20, 10, 15, 0.78));
      color: white;
    }

    .category-overlay h3 {
      font-family: "Playfair Display", serif;
      font-size: 28px;
    }

    .category-overlay a {
      font-size: 13px;
      margin-top: 5px;
      color: #f1cf82;
    }

    /* PRODUCTS */
    .products {
      background: #fff;
    }

    .product-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 25px;
    }

    .product-card {
      background: white;
      border: 1px solid var(--border);
      transition: 0.3s;
    }

    .product-card:hover {
      transform: translateY(-7px);
      box-shadow: var(--shadow);
    }

    .product-image {
      height: 370px;
      position: relative;
      overflow: hidden;
      background: #f5eeee;
    }

    .product-image img {
      height: 100%;
      object-fit: cover;
      transition: 0.5s;
    }

    .product-card:hover .product-image img {
      transform: scale(1.05);
    }

    .badge {
      position: absolute;
      top: 14px;
      left: 14px;
      background: var(--primary);
      color: white;
      padding: 5px 10px;
      font-size: 10px;
      font-weight: 700;
      text-transform: uppercase;
    }

    .product-info {
      padding: 18px;
    }

    .product-category {
      font-size: 11px;
      color: #a18f93;
      text-transform: uppercase;
      letter-spacing: 1px;
    }

    .product-name {
      color: var(--dark);
      font-family: "Playfair Display", serif;
      font-size: 19px;
      margin: 4px 0 8px;
    }

    .price {
      color: var(--primary);
      font-weight: 700;
      font-size: 17px;
    }

    .old-price {
      color: #aaa;
      text-decoration: line-through;
      font-size: 13px;
      margin-left: 7px;
      font-weight: 400;
    }

    .add-btn {
      width: 100%;
      margin-top: 15px;
      padding: 11px;
      background: var(--light-pink);
      color: var(--primary);
      font-weight: 700;
      font-size: 13px;
      transition: 0.3s;
    }

    .add-btn:hover {
      background: var(--primary);
      color: white;
    }

    /* STORY */
    .story {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 70px;
      align-items: center;
    }

    .story-image {
      position: relative;
    }

    .story-image img {
      height: 600px;
      object-fit: cover;
    }

    .story-card {
      position: absolute;
      bottom: -25px;
      right: -25px;
      background: white;
      padding: 25px 35px;
      box-shadow: var(--shadow);
    }

    .story-card strong {
      color: var(--primary);
      font-family: "Playfair Display", serif;
      font-size: 30px;
    }

    .story-text span {
      color: var(--secondary);
      font-size: 12px;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 3px;
    }

    .story-text h2 {
      font-family: "Playfair Display", serif;
      color: var(--dark);
      font-size: 45px;
      line-height: 1.15;
      margin: 12px 0 20px;
    }

    .story-text p {
      margin-bottom: 20px;
      color: #716568;
    }

    .features {
      display: grid;
      grid-template-columns: repeat(2, 1fr);
      gap: 18px;
      margin: 30px 0;
    }

    .feature {
      display: flex;
      gap: 12px;
      align-items: center;
    }

    .feature-icon {
      width: 42px;
      height: 42px;
      background: var(--light-pink);
      color: var(--primary);
      display: grid;
      place-items: center;
      border-radius: 50%;
    }

    /* OFFER */
    .offer {
      background:
        linear-gradient(90deg, rgba(77, 17, 44, 0.95), rgba(77, 17, 44, 0.7)),
        url("https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=1800&q=85")
        center/cover;
      color: white;
      padding: 80px 25px;
    }

    .offer-inner {
      max-width: 900px;
      margin: auto;
      text-align: center;
    }

    .offer h2 {
      font-family: "Playfair Display", serif;
      font-size: 50px;
      margin: 10px 0;
    }

    .offer p {
      margin-bottom: 28px;
      color: #f4dce6;
    }

    /* TESTIMONIALS */
    .testimonials {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 25px;
    }

    .testimonial {
      background: white;
      padding: 30px;
      border: 1px solid var(--border);
    }

    .stars {
      color: var(--secondary);
      margin-bottom: 15px;
      letter-spacing: 2px;
    }

    .testimonial p {
      font-family: "Playfair Display", serif;
      font-size: 18px;
      color: #4c4044;
      margin-bottom: 20px;
    }

    .customer {
      font-weight: 700;
      color: var(--primary);
      font-size: 13px;
    }

    /* NEWSLETTER */
    .newsletter {
      background: #f5e8ed;
      text-align: center;
      padding: 80px 25px;
    }

    .newsletter h2 {
      font-family: "Playfair Display", serif;
      color: var(--dark);
      font-size: 40px;
    }

    .newsletter p {
      margin: 10px auto 25px;
      max-width: 550px;
    }

    .subscribe {
      display: flex;
      max-width: 500px;
      margin: auto;
      background: white;
      padding: 5px;
      border: 1px solid var(--border);
    }

    .subscribe input {
      flex: 1;
      border: none;
      outline: none;
      padding: 13px;
      background: transparent;
    }

    .subscribe button {
      background: var(--primary);
      color: white;
      padding: 0 22px;
      font-weight: 700;
    }

    /* FOOTER */
    footer {
      background: #21191c;
      color: #cfc1c5;
      padding: 65px 25px 25px;
    }

    .footer-grid {
      max-width: 1250px;
      margin: auto;
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 50px;
    }

    .footer-logo {
      color: white;
      font-family: "Playfair Display", serif;
      font-size: 30px;
    }

    .footer-brand p {
      margin-top: 15px;
      max-width: 350px;
      font-size: 14px;
    }

    footer h4 {
      color: white;
      margin-bottom: 18px;
    }

    footer ul {
      list-style: none;
    }

    footer li {
      margin-bottom: 10px;
      font-size: 14px;
    }

    footer a:hover {
      color: #f0cf88;
    }

    .footer-bottom {
      max-width: 1250px;
      margin: 45px auto 0;
      padding-top: 20px;
      border-top: 1px solid #403438;
      text-align: center;
      font-size: 12px;
    }

    /* TOAST */
    .toast {
      position: fixed;
      right: 25px;
      bottom: 25px;
      background: var(--dark);
      color: white;
      padding: 14px 20px;
      border-radius: 4px;
      opacity: 0;
      transform: translateY(20px);
      pointer-events: none;
      transition: 0.3s;
      z-index: 2000;
    }

    .toast.show {
      opacity: 1;
      transform: translateY(0);
    }

    /* RESPONSIVE */
    @media (max-width: 1000px) {
      .categories,
      .product-grid {
        grid-template-columns: repeat(2, 1fr);
      }

      .story {
        grid-template-columns: 1fr;
      }

      .story-image img {
        height: 500px;
      }

      .testimonials {
        grid-template-columns: 1fr;
      }

      .footer-grid {
        grid-template-columns: 1fr 1fr;
      }
    }

    @media (max-width: 700px) {
      .navbar {
        height: 70px;
      }

      .nav-links {
        position: absolute;
        top: 70px;
        left: 0;
        width: 100%;
        background: var(--cream);
        flex-direction: column;
        padding: 25px;
        gap: 18px;
        display: none;
        border-bottom: 1px solid var(--border);
      }

      .nav-links.active {
        display: flex;
      }

      .menu-btn {
        display: block;
      }

      .hero {
        min-height: 600px;
      }

      .hero h1 {
        font-size: 48px;
      }

      .btn-outline {
        margin-left: 0;
        margin-top: 10px;
      }

      .categories,
      .product-grid,
      .features,
      .footer-grid {
        grid-template-columns: 1fr;
      }

      .category {
        height: 400px;
      }

      .product-image {
        height: 430px;
      }

      .story-card {
        right: 10px;
      }

      .offer h2,
      .story-text h2 {
        font-size: 38px;
      }

      .subscribe {
        flex-direction: column;
        gap: 5px;
        background: transparent;
        border: none;
      }

      .subscribe input {
        background: white;
        border: 1px solid var(--border);
      }

      .subscribe button {
        padding: 13px;
      }
    }
  </style>
</head>

<body>

  <div class="announcement">
    ✦ FREE SHIPPING ON ORDERS ABOVE ₹1,999 &nbsp; | &nbsp; EASY 7-DAY RETURNS ✦
  </div>

  <header>
    <nav class="navbar">

      <a href="#" class="logo">
        BKS STORES
        <span>KIRAN FASHION WORLD</span>
      </a>

      <ul class="nav-links" id="navLinks">
        <li><a href="#home">Home</a></li>
        <li><a href="#categories">Collections</a></li>
        <li><a href="#products">Shop</a></li>
        <li><a href="#story">Our Story</a></li>
        <li><a href="#contact">Contact</a></li>
      </ul>

      <div class="nav-actions">
        <a href="#" onclick="searchProducts(); return false;">⌕</a>
        <a href="#" class="cart" onclick="showCart(); return false;">
          🛍
          <span class="cart-count" id="cartCount">0</span>
        </a>
        <button class="menu-btn" onclick="toggleMenu()">☰</button>
      </div>

    </nav>
  </header>

  <!-- HERO -->
  <section class="hero" id="home">
    <div class="hero-content">

      <div class="eyebrow">BKS STORES PRESENTS</div>

      <h1>
        Elevate Your Style with Kiran Fashion World
      </h1>

      <p>
        Discover timeless Indian elegance, contemporary fashion and carefully
        selected styles created for every beautiful occasion.
      </p>

      <a href="#products" class="btn btn-primary">
        Shop Collection
      </a>

      <a href="#categories" class="btn btn-outline">
        Explore Styles
      </a>

    </div>
  </section>

  <!-- CATEGORIES -->
  <section class="section" id="categories">

    <div class="section-heading">
      <span>Shop By Category</span>
      <h2>Find Your Signature Style</h2>
      <p>
        From traditional elegance to modern fashion, explore collections
        designed to make every occasion special.
      </p>
    </div>

    <div class="categories">

      <div class="category">
        <img src="https://images.unsplash.com/photo-1610030469983-98e550d6193c?auto=format&fit=crop&w=900&q=85" alt="Sarees">
        <div class="category-overlay">
          <h3>Sarees</h3>
          <a href="#products">Shop Sarees →</a>
        </div>
      </div>

      <div class="category">
        <img src="https://images.unsplash.com/photo-1583391733956-6c78276477e2?auto=format&fit=crop&w=900&q=85" alt="Ethnic Wear">
        <div class="category-overlay">
          <h3>Ethnic Wear</h3>
          <a href="#products">Explore Ethnic →</a>
        </div>
      </div>

      <div class="category">
        <img src="https://images.unsplash.com/photo-1490481651871-ab68de25d43d?auto=format&fit=crop&w=900&q=85" alt="Western Wear">
        <div class="category-overlay">
          <h3>Western Wear</h3>
          <a href="#products">Shop Western →</a>
        </div>
      </div>

      <div class="category">
        <img src="https://images.unsplash.com/photo-1523779917675-b6ed3a42a561?auto=format&fit=crop&w=900&q=85" alt="Accessories">
        <div class="category-overlay">
          <h3>Accessories</h3>
          <a href="#products">Shop Accessories →</a>
        </div>
      </div>

    </div>
  </section>

  <!-- PRODUCTS -->
  <section class="section products" id="products">

    <div class="section-heading">
      <span>BKS STORES Collection</span>
      <h2>Featured Styles</h2>
      <p>
        Handpicked fashion pieces to add elegance and confidence to your wardrobe.
      </p>
    </div>

    <div class="product-grid">

      <div class="product-card">
        <div class="product-image">
          <span class="badge">New</span>
          <img src="https://images.unsplash.com/photo-1610030469668-8f7f7b8c6a98?auto=format&fit=crop&w=900&q=85" alt="Silk Saree">
        </div>
        <div class="product-info">
          <div class="product-category">Saree</div>
          <div class="product-name">Royal Silk Saree</div>
          <div class="price">₹2,999 <span class="old-price">₹4,299</span></div>
          <button class="add-btn" onclick="addToCart('Royal Silk Saree')">
            ADD TO BAG
          </button>
        </div>
      </div>

      <div class="product-card">
        <div class="product-image">
          <span class="badge">Bestseller</span>
          <img src="https://images.unsplash.com/photo-1594633312681-425c7b97ccd1?auto=format&fit=crop&w=900&q=85" alt="Ethnic Dress">
        </div>
        <div class="product-info">
          <div class="product-category">Ethnic Wear</div>
          <div class="product-name">Elegant Anarkali</div>
          <div class="price">₹2,499 <span class="old-price">₹3,699</span></div>
          <button class="add-btn" onclick="addToCart('Elegant Anarkali')">
            ADD TO BAG
          </button>
        </div>
      </div>

      <div class="product-card">
        <div class="product-image">
          <span class="badge">Trending</span>
          <img src="https://images.unsplash.com/photo-1539109136881-3be0616acf4b?auto=format&fit=crop&w=900&q=85" alt="Fashion Dress">
        </div>
        <div class="product-info">
          <div class="product-category">Western Wear</div>
          <div class="product-name">Classic Evening Dress</div>
          <div class="price">₹1,999 <span class="old-price">₹2,899</span></div>
          <button class="add-btn" onclick="addToCart('Classic Evening Dress')">
            ADD TO BAG
          </button>
        </div>
      </div>

      <div class="product-card">
        <div class="product-image">
          <span class="badge">Limited</span>
          <img src="https://images.unsplash.com/photo-1611652022419-a9419f74343d?auto=format&fit=crop&w=900&q=85" alt="Jewellery">
        </div>
        <div class="product-info">
          <div class="product-category">Accessories</div>
          <div class="product-name">Golden Statement Set</div>
          <div class="price">₹999 <span class="old-price">₹1,499</span></div>
          <button class="add-btn" onclick="addToCart('Golden Statement Set')">
            ADD TO BAG
          </button>
        </div>
      </div>

    </div>
  </section>

  <!-- STORY -->
  <section class="section" id="story">

    <div class="story">

      <div class="story-image">
        <img src="https://images.unsplash.com/photo-1583391733981-849840b6e6e0?auto=format&fit=crop&w=1000&q=85" alt="Kiran Fashion World">

        <div class="story-card">
          <strong>100%</strong>
          <br>
          Style & Elegance
        </div>
      </div>

      <div class="story-text">

        <span>Welcome to BKS STORES</span>

        <h2>
          Fashion That Tells Your Story
        </h2>

        <p>
          At Kiran Fashion World, we believe fashion is more than clothing.
          It is an expression of confidence, personality and individuality.
        </p>

        <p>
          BKS STORES brings together traditional Indian beauty and modern
          fashion to help you create a look that feels uniquely yours.
        </p>

        <div class="features">

          <div class="feature">
            <div class="feature-icon">✦</div>
            <div>
              <strong>Quality First</strong>
              <br>
              <small>Carefully selected styles</small>
            </div>
          </div>

          <div class="feature">
            <div class="feature-icon">♡</div>
            <div>
              <strong>Made With Love</strong>
              <br>
              <small>Fashion for every occasion</small>
            </div>
          </div>

          <div class="feature">
            <div class="feature-icon">✓</div>
            <div>
              <strong>Easy Shopping</strong>
              <br>
              <small>Simple & convenient</small>
            </div>
          </div>

          <div class="feature">
            <div class="feature-icon">★</div>
            <div>
              <strong>Unique Styles</strong>
              <br>
              <small>Designed to stand out</small>
            </div>
          </div>

        </div>

        <a href="#products" class="btn btn-primary">
          Discover More
        </a>

      </div>

    </div>

  </section>

  <!-- OFFER -->
  <section class="offer">

    <div class="offer-inner">

      <div class="eyebrow">SPECIAL COLLECTION</div>

      <h2>
        Your Style. Your Story. Your World.
      </h2>

      <p>
        Refresh your wardrobe with beautiful fashion from Kiran Fashion World.
      </p>

      <a href="#products" class="btn btn-primary">
        Shop Now
      </a>

    </div>

  </section>

  <!-- TESTIMONIALS -->
  <section class="section">

    <div class="section-heading">
      <span>Customer Love</span>
      <h2>What Our Customers Say</h2>
    </div>

    <div class="testimonials">

      <div class="testimonial">
        <div class="stars">★★★★★</div>
        <p>
          “Beautiful collection and excellent quality. The saree looked even
          better in person.”
        </p>
        <div class="customer">— Priya S.</div>
      </div>

      <div class="testimonial">
        <div class="stars">★★★★★</div>
        <p>
          “I loved the styling and the quality. BKS STORES has become one of
          my favourite fashion stores.”
        </p>
        <div class="customer">— Ananya R.</div>
      </div>

      <div class="testimonial">
        <div class="stars">★★★★★</div>
        <p>
          “The collection is elegant, modern and perfect for special occasions.”
        </p>
        <div class="customer">— Kavya M.</div>
      </div>

    </div>

  </section>

  <!-- NEWSLETTER -->
  <section class="newsletter">

    <div class="eyebrow">STAY IN STYLE</div>

    <h2>Join the BKS STORES Family</h2>

    <p>
      Subscribe for new arrivals, exclusive offers and fashion inspiration.
    </p>

    <form class="subscribe" onsubmit="subscribeUser(event)">
      <input
        type="email"
        id="email"
        placeholder="Enter your email address"
        required
      >
      <button type="submit">SUBSCRIBE</button>
    </form>

  </section>

  <!-- FOOTER -->
  <footer id="contact">

    <div class="footer-grid">

      <div class="footer-brand">
        <div class="footer-logo">BKS STORES</div>

        <p>
          Kiran Fashion World brings together timeless elegance and modern
          fashion for every occasion.
        </p>
      </div>

      <div>
        <h4>Shop</h4>
        <ul>
          <li><a href="#products">Sarees</a></li>
          <li><a href="#products">Ethnic Wear</a></li>
          <li><a href="#products">Western Wear</a></li>
          <li><a href="#products">Accessories</a></li>
        </ul>
      </div>

      <div>
        <h4>Help</h4>
        <ul>
          <li><a href="#">Shipping</a></li>
          <li><a href="#">Returns</a></li>
          <li><a href="#">Size Guide</a></li>
          <li><a href="#">FAQs</a></li>
        </ul>
      </div>

      <div>
        <h4>Contact</h4>
        <ul>
          <li>📞 +91 98765 43210</li>
          <li>✉️ hello@bksstores.com</li>
          <li>📍 India</li>
        </ul>
      </div>

    </div>

    <div class="footer-bottom">
      © 2026 BKS STORES — Kiran Fashion World. All Rights Reserved.
    </div>

  </footer>

  <div class="toast" id="toast"></div>

  <script>
    let cartCount = 0;

    function toggleMenu() {
      document.getElementById("navLinks").classList.toggle("active");
    }

    function addToCart(productName) {
      cartCount++;

      document.getElementById("cartCount").textContent = cartCount;

      showToast(productName + " added to your bag");
    }

    function showCart() {
      if (cartCount === 0) {
        showToast("Your shopping bag is empty");
      } else {
        showToast("You have " + cartCount + " item(s) in your bag");
      }
    }

    function showToast(message) {
      const toast = document.getElementById("toast");

      toast.textContent = message;
      toast.classList.add("show");

      setTimeout(() => {
        toast.classList.remove("show");
      }, 2500);
    }

    function searchProducts() {
      const search = prompt("What are you looking for?");

      if (search && search.trim() !== "") {
        showToast("Searching for: " + search);
      }
    }

    function subscribeUser(event) {
      event.preventDefault();

      const email = document.getElementById("email").value;

      if (email) {
        showToast("Thank you for subscribing!");
        document.getElementById("email").value = "";
      }
    }

    document.querySelectorAll(".nav-links a").forEach(link => {
      link.addEventListener("click", () => {
        document.getElementById("navLinks").classList.remove("active");
      });
    });
  </script>

</body>
</html>
