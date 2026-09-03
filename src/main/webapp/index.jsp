<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>NexusShop — Dark Neon E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ========================================
           NEW DARK NEON THEME – E‑COMMERCE
           ======================================== */
        :root {
            --bg-body: #0b0e14;
            --bg-surface: #141820;
            --bg-card: rgba(255, 255, 255, 0.04);
            --border-glass: rgba(255, 255, 255, 0.06);
            --text-primary: #f0f4ff;
            --text-muted: #8892a8;
            --accent-cyan: #00f0ff;
            --accent-pink: #ff3d9a;
            --accent-gradient: linear-gradient(135deg, #00f0ff, #ff3d9a);
            --shadow-glow: 0 8px 32px rgba(0, 240, 255, 0.15);
            --radius: 16px;
            --container: 1200px;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html, body {
            height: 100%;
        }

        body {
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            background: var(--bg-body);
            color: var(--text-primary);
            -webkit-font-smoothing: antialiased;
            line-height: 1.5;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 20px;
        }

        /* ----- HEADER (glass + sticky) ----- */
        header {
            position: sticky;
            top: 0;
            z-index: 50;
            background: rgba(11, 14, 20, 0.72);
            backdrop-filter: blur(16px) saturate(180%);
            -webkit-backdrop-filter: blur(16px) saturate(180%);
            border-bottom: 1px solid var(--border-glass);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            padding: 12px 0;
        }

        .brand {
            font-weight: 700;
            font-size: 22px;
            letter-spacing: -0.02em;
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }
        .brand .accent {
            -webkit-text-fill-color: var(--accent-cyan);
        }

        nav.main-nav ul {
            display: flex;
            gap: 6px;
            list-style: none;
            align-items: center;
        }
        nav.main-nav li a {
            display: flex;
            align-items: center;
            gap: 8px;
            padding: 8px 14px;
            border-radius: 40px;
            font-weight: 500;
            font-size: 14px;
            color: var(--text-muted);
            transition: all 0.2s;
        }
        nav.main-nav li a:hover {
            color: #fff;
            background: var(--bg-card);
            box-shadow: 0 0 20px rgba(0, 240, 255, 0.08);
        }

        .search {
            display: flex;
            align-items: center;
            gap: 8px;
            background: var(--bg-card);
            border: 1px solid var(--border-glass);
            border-radius: 60px;
            padding: 6px 12px 6px 18px;
            min-width: 200px;
            transition: border-color 0.2s;
        }
        .search:focus-within {
            border-color: var(--accent-cyan);
            box-shadow: 0 0 20px rgba(0, 240, 255, 0.08);
        }
        .search input {
            background: transparent;
            border: 0;
            outline: none;
            color: #fff;
            font-size: 14px;
            width: 100%;
        }
        .search input::placeholder {
            color: var(--text-muted);
        }
        .icon-btn {
            background: transparent;
            border: 0;
            color: var(--text-muted);
            font-size: 18px;
            cursor: pointer;
            transition: color 0.2s;
            padding: 6px;
        }
        .icon-btn:hover {
            color: var(--accent-cyan);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 12px;
        }
        .cart {
            position: relative;
            display: inline-flex;
            align-items: center;
            gap: 6px;
            padding: 6px 10px;
            border-radius: 40px;
            background: var(--bg-card);
            border: 1px solid var(--border-glass);
            transition: background 0.2s;
        }
        .cart:hover {
            background: rgba(255, 255, 255, 0.08);
        }
        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--accent-pink);
            color: #fff;
            font-size: 11px;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: grid;
            place-items: center;
        }

        .mobile-toggle {
            display: none;
            background: transparent;
            border: 0;
            color: #fff;
            font-size: 22px;
            cursor: pointer;
        }

        /* ----- HERO (animated gradient) ----- */
        .hero {
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            min-height: 460px;
            padding: 60px 20px;
            background:
                radial-gradient(ellipse at 20% 50%, rgba(0, 240, 255, 0.08), transparent 60%),
                radial-gradient(ellipse at 80% 50%, rgba(255, 61, 154, 0.08), transparent 60%),
                var(--bg-body);
            border-bottom: 1px solid var(--border-glass);
            position: relative;
            overflow: hidden;
        }
        .hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: url("data:image/svg+xml,%3Csvg width='60' height='60' viewBox='0 0 60 60' xmlns='http://www.w3.org/2000/svg'%3E%3Cg fill='none' fill-rule='evenodd'%3E%3Cg fill='%2300f0ff' fill-opacity='0.04'%3E%3Cpath d='M36 34v-4h-2v4h-4v2h4v4h2v-4h4v-2h-4zm0-30V0h-2v4h-4v2h4v4h2V6h4V4h-4zM6 34v-4H4v4H0v2h4v4h2v-4h4v-2H6zM6 4V0H4v4H0v2h4v4h2V6h4V4H6z'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E");
            opacity: 0.2;
        }
        .hero h1 {
            font-size: 44px;
            font-weight: 700;
            letter-spacing: -0.02em;
            margin: 0 0 12px;
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }
        .hero p {
            font-size: 18px;
            color: var(--text-muted);
            max-width: 700px;
            margin: 0 auto 24px;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 12px 28px;
            border-radius: 60px;
            font-weight: 600;
            border: 0;
            cursor: pointer;
            transition: all 0.25s;
        }
        .btn-primary {
            background: var(--accent-gradient);
            color: #0b0e14;
            box-shadow: 0 4px 20px rgba(0, 240, 255, 0.3);
        }
        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 30px rgba(0, 240, 255, 0.5);
        }
        .btn-ghost {
            background: transparent;
            border: 1.5px solid var(--border-glass);
            color: #fff;
        }
        .btn-ghost:hover {
            background: var(--bg-card);
            border-color: var(--accent-cyan);
        }

        /* ----- SECTION TITLES ----- */
        .section {
            padding: 56px 0;
        }
        .section .title {
            text-align: center;
            margin-bottom: 28px;
        }
        .section .title h2 {
            font-size: 32px;
            font-weight: 700;
            letter-spacing: -0.02em;
        }
        .section .title p {
            color: var(--text-muted);
            margin-top: 4px;
        }

        /* ----- CATEGORIES (glass cards) ----- */
        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
        }
        .cat-card {
            background: var(--bg-card);
            backdrop-filter: blur(8px);
            -webkit-backdrop-filter: blur(8px);
            border: 1px solid var(--border-glass);
            border-radius: var(--radius);
            padding: 20px 12px;
            text-align: center;
            cursor: pointer;
            transition: all 0.25s;
        }
        .cat-card:hover {
            transform: translateY(-6px);
            border-color: var(--accent-cyan);
            box-shadow: var(--shadow-glow);
        }
        .cat-card .icon {
            font-size: 32px;
            color: var(--accent-cyan);
            margin-bottom: 8px;
        }
        .cat-card h4 {
            font-size: 15px;
            font-weight: 600;
            margin: 6px 0 0;
        }

        /* ----- PRODUCTS (glass cards) ----- */
        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }
        .product {
            background: var(--bg-card);
            backdrop-filter: blur(8px);
            -webkit-backdrop-filter: blur(8px);
            border: 1px solid var(--border-glass);
            border-radius: var(--radius);
            overflow: hidden;
            transition: all 0.3s;
            display: flex;
            flex-direction: column;
        }
        .product:hover {
            transform: translateY(-6px);
            border-color: var(--accent-cyan);
            box-shadow: var(--shadow-glow);
        }
        .product img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            display: block;
        }
        .product-body {
            padding: 14px 16px 8px;
            flex: 1;
        }
        .product-body h5 {
            font-size: 16px;
            font-weight: 600;
            margin: 0 0 4px;
        }
        .product-body .muted {
            color: var(--text-muted);
            font-size: 13px;
        }
        .price-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: 8px;
        }
        .price {
            font-weight: 700;
            font-size: 18px;
            color: #fff;
        }
        .old-price {
            color: var(--text-muted);
            text-decoration: line-through;
            font-size: 14px;
            font-weight: 400;
            margin-left: 6px;
        }
        .rating {
            color: #ffc107;
            font-size: 14px;
        }
        .rating span {
            color: var(--text-muted);
            font-size: 12px;
        }
        .product-footer {
            display: flex;
            gap: 10px;
            padding: 12px 16px 16px;
        }
        .add-btn {
            flex: 1;
            background: var(--accent-gradient);
            color: #0b0e14;
            border: 0;
            padding: 10px 0;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.2s;
        }
        .add-btn:hover {
            transform: scale(1.02);
            box-shadow: 0 0 24px rgba(0, 240, 255, 0.3);
        }
        .wish-btn {
            background: var(--bg-card);
            border: 1px solid var(--border-glass);
            color: var(--text-muted);
            padding: 8px 12px;
            border-radius: 40px;
            cursor: pointer;
            transition: all 0.2s;
        }
        .wish-btn:hover {
            color: var(--accent-pink);
            border-color: var(--accent-pink);
        }

        /* ----- DEAL (featured) ----- */
        .deal {
            display: flex;
            gap: 20px;
            background: var(--bg-card);
            border: 1px solid var(--border-glass);
            border-radius: var(--radius);
            overflow: hidden;
            align-items: center;
        }
        .deal img {
            width: 45%;
            height: 280px;
            object-fit: cover;
        }
        .deal .content {
            padding: 28px 32px;
            flex: 1;
        }
        .deal .content h3 {
            font-size: 26px;
            font-weight: 700;
        }
        .timer {
            display: flex;
            gap: 12px;
            margin: 16px 0;
        }
        .time-box {
            background: var(--bg-body);
            border: 1px solid var(--border-glass);
            padding: 12px 16px;
            border-radius: 12px;
            min-width: 70px;
            text-align: center;
        }
        .time-box div:first-child {
            font-size: 24px;
            font-weight: 700;
            color: var(--accent-cyan);
        }
        .time-box div:last-child {
            font-size: 11px;
            color: var(--text-muted);
            text-transform: uppercase;
            letter-spacing: 0.04em;
        }
        .deal .price {
            font-size: 28px;
        }
        .deal-discount {
            background: var(--accent-pink);
            color: #fff;
            padding: 4px 14px;
            border-radius: 40px;
            font-weight: 700;
            font-size: 14px;
        }

        /* ----- TESTIMONIALS (horizontal scroll) ----- */
        .testimonials {
            display: flex;
            gap: 16px;
            overflow-x: auto;
            padding: 8px 4px 16px;
        }
        .testimonial {
            min-width: 300px;
            background: var(--bg-card);
            border: 1px solid var(--border-glass);
            border-radius: var(--radius);
            padding: 20px;
            flex-shrink: 0;
        }
        .testimonial .rating {
            margin-bottom: 8px;
        }
        .testimonial p {
            color: var(--text-muted);
            font-size: 15px;
            line-height: 1.5;
        }
        .testimonial .avatar {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid var(--border-glass);
        }

        /* ----- NEWSLETTER (gradient) ----- */
        .newsletter {
            background: var(--accent-gradient);
            border-radius: var(--radius);
            padding: 40px 32px;
            text-align: center;
            color: #0b0e14;
        }
        .newsletter h3 {
            font-size: 28px;
            font-weight: 700;
            margin-bottom: 6px;
        }
        .newsletter p {
            opacity: 0.8;
            margin-bottom: 20px;
        }
        .newsletter input {
            padding: 12px 24px;
            border-radius: 60px;
            border: 0;
            width: 320px;
            max-width: 100%;
            background: rgba(255, 255, 255, 0.85);
            font-size: 14px;
        }
        .newsletter input:focus {
            outline: none;
            background: #fff;
        }
        .newsletter .btn {
            background: #0b0e14;
            color: #fff;
            box-shadow: none;
        }
        .newsletter .btn:hover {
            background: #1a1f2a;
        }

        /* ----- FOOTER ----- */
        footer {
            margin-top: 20px;
            padding: 36px 0 24px;
            border-top: 1px solid var(--border-glass);
            color: var(--text-muted);
            font-size: 14px;
        }
        footer .icon-btn {
            font-size: 20px;
        }
        footer .muted {
            color: var(--text-muted);
        }

        /* ----- RESPONSIVE TWEAKS ----- */
        @media (max-width: 1024px) {
            .categories { grid-template-columns: repeat(3, 1fr); }
            .products { grid-template-columns: repeat(3, 1fr); }
        }
        @media (max-width: 820px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: inline-block; }
            .products { grid-template-columns: repeat(2, 1fr); }
            .categories { grid-template-columns: repeat(2, 1fr); }
            .deal img { width: 40%; height: 200px; }
        }
        @media (max-width: 600px) {
            .hero h1 { font-size: 30px; }
            .products { grid-template-columns: 1fr; }
            .categories { grid-template-columns: 1fr; }
            .deal { flex-direction: column; }
            .deal img { width: 100%; height: 200px; }
            .search { min-width: 140px; }
            .newsletter input { width: 100%; }
        }
    </style>
</head>
<body>
    <header>
        <div class="container header-inner" role="banner">
            <div style="display:flex; align-items:center; gap:18px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu">
                    <em class="fas fa-bars"></em>
                </button>
                <a class="brand" href="#">
                    Nexus<span class="accent">Shop</span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav" aria-label="Primary navigation">
                <ul>
                    <li><a href="#"><em class="fas fa-home"></em> Home</a></li>
                    <li><a href="#categories"><em class="fas fa-th-large"></em> Categories</a></li>
                    <li><a href="#products"><em class="fas fa-fire"></em> Trending</a></li>
                    <li><a href="#deals"><em class="fas fa-tag"></em> Deals</a></li>
                </ul>
            </nav>

            <div style="display:flex; align-items:center; gap:14px;">
                <div class="search" role="search">
                    <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search products" />
                    <button class="icon-btn" id="searchBtn" aria-label="Search"><em class="fas fa-search"></em></button>
                </div>

                <div class="header-actions">
                    <a class="icon-btn" title="Account" href="#"><em class="far fa-user"></em></a>
                    <a class="icon-btn" title="Wishlist" href="#"><em class="far fa-heart"></em></a>
                    <a class="cart" href="#" id="cartBtn" title="View cart">
                        <em class="fas fa-shopping-cart"></em>
                        <span class="cart-count" id="cartCount">0</span>
                    </a>
                </div>
            </div>
        </div>

        <!-- Mobile menu -->
        <div id="mobileMenu" style="display:none; background:var(--bg-body); border-top:1px solid var(--border-glass);">
            <div class="container" style="padding:12px 0;">
                <nav aria-label="Mobile navigation">
                    <ul style="list-style:none; padding:0; margin:0; display:flex; flex-direction:column; gap:8px;">
                        <li><a href="#">Home</a></li>
                        <li><a href="#categories">Categories</a></li>
                        <li><a href="#products">Trending</a></li>
                        <li><a href="#deals">Deals</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <main>
        <!-- Hero -->
        <section class="hero" aria-label="Hero banner">
            <div class="container">
                <h1>New Winter Collection – Premium Picks</h1>
                <p>Discover the latest trends in fashion, technology, and accessories — curated just for you. Enjoy limited-time deals and free shipping on selected items.</p>
                <div>
                    <button class="btn btn-primary" id="shopNow">Shop Now <em class="fas fa-arrow-right"></em></button>
                    <button class="btn btn-ghost" id="exploreDeals">Explore Deals</button>
                </div>
            </div>
        </section>

        <!-- Categories -->
        <section id="categories" class="section container" aria-labelledby="cat-title">
            <div class="title" id="cat-title">
                <h2>Shop by Category</h2>
                <p>Browse through our wide range of products across curated categories.</p>
            </div>
            <div class="grid categories" id="categoriesGrid" aria-live="polite"></div>
        </section>

        <!-- Products -->
        <section id="products" class="section container" aria-labelledby="prod-title">
            <div class="title" id="prod-title">
                <h2>Trending Products</h2>
                <p>Popular picks based on recent activity.</p>
            </div>
            <div class="grid products" id="productsGrid" aria-live="polite"></div>
        </section>

        <!-- Deals -->
        <section id="deals" class="section container" aria-labelledby="deals-title">
            <div class="title" id="deals-title">
                <h2>Flash Sale</h2>
                <p>Limited-time offers — don't miss out!</p>
            </div>

            <div class="deal">
                <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80" alt="MacBook Air M2">
                <div class="content">
                    <h3>MacBook Air M2</h3>
                    <p class="muted">Thin, light and powerful — now with M2 performance.</p>

                    <div class="timer" aria-hidden="false">
                        <div class="time-box">
                            <div id="dealDays">0</div>
                            <div>Days</div>
                        </div>
                        <div class="time-box">
                            <div id="dealHours">00</div>
                            <div>Hours</div>
                        </div>
                        <div class="time-box">
                            <div id="dealMinutes">00</div>
                            <div>Minutes</div>
                        </div>
                        <div class="time-box">
                            <div id="dealSeconds">00</div>
                            <div>Seconds</div>
                        </div>
                    </div>

                    <div style="display:flex; align-items:center; gap:12px; flex-wrap:wrap;">
                        <div class="price">$999 <span class="old-price">$1,199</span></div>
                        <div class="deal-discount">-17%</div>
                    </div>

                    <p style="margin-top:10px;">Only <strong>12</strong> items left at this price!</p>
                    <div style="margin-top:18px;">
                        <button class="btn btn-primary" id="buyDeal">Buy Now</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonials -->
        <section class="section container" aria-labelledby="test-title">
            <div class="title" id="test-title">
                <h2>What our customers say</h2>
                <p>Real reviews from verified buyers.</p>
            </div>
            <div class="testimonials" id="testimonials">
                <div class="testimonial">
                    <div class="rating">★★★★★</div>
                    <p>"Fast shipping and excellent customer support. The product exceeded my expectations!"</p>
                    <div style="display:flex; align-items:center; gap:10px;">
                        <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Ava Martin" class="avatar">
                        <div>
                            <div style="font-weight:700;">Ava Martin</div>
                            <div class="muted" style="font-size:13px;">Verified buyer</div>
                        </div>
                    </div>
                </div>
                <div class="testimonial">
                    <div class="rating">★★★★☆</div>
                    <p>"Great selection and the checkout was smooth. Will shop again."</p>
                    <div style="display:flex; align-items:center; gap:10px;">
                        <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="Michael Lee" class="avatar">
                        <div>
                            <div style="font-weight:700;">Michael Lee</div>
                            <div class="muted" style="font-size:13px;">Frequent buyer</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Newsletter -->
        <section class="section container" aria-labelledby="news-title">
            <div class="newsletter" id="newsletter">
                <h3 id="news-title">Stay in the loop</h3>
                <p>Subscribe to get exclusive offers & new arrivals</p>
                <form id="newsletterForm" style="display:flex; justify-content:center; gap:8px; flex-wrap:wrap;">
                    <input id="newsletterEmail" type="email" placeholder="Enter your email" aria-label="Email address" required>
                    <button class="btn" id="subscribeBtn" style="background:#0b0e14; color:#fff;">Subscribe</button>
                </form>
                <div id="newsletterMsg" style="margin-top:10px; font-size:14px; display:none;"></div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container" style="display:flex; flex-wrap:wrap; gap:28px; align-items:flex-start; justify-content:space-between;">
            <div style="max-width:360px;">
                <div style="font-weight:700; font-size:18px; background:var(--accent-gradient); -webkit-background-clip:text; -webkit-text-fill-color:transparent; background-clip:text;">NexusShop</div>
                <p class="muted" style="margin-top:8px;">A modern e-commerce demo built with HTML, CSS & JavaScript.</p>
                <div style="margin-top:14px; display:flex; gap:10px;">
                    <a class="icon-btn" href="#" title="Facebook"><em class="fab fa-facebook"></em></a>
                    <a class="icon-btn" href="#" title="Twitter"><em class="fab fa-twitter"></em></a>
                    <a class="icon-btn" href="#" title="Instagram"><em class="fab fa-instagram"></em></a>
                </div>
            </div>

            <div style="display:flex; gap:40px; flex:1; justify-content:flex-end; flex-wrap:wrap;">
                <div>
                    <div style="font-weight:700; margin-bottom:8px;">Company</div>
                    <div class="muted" style="line-height:1.8;">About<br>Careers<br>Press</div>
                </div>
                <div>
                    <div style="font-weight:700; margin-bottom:8px;">Support</div>
                    <div class="muted" style="line-height:1.8;">Help Center<br>Shipping & Returns<br>Contact</div>
                </div>
            </div>
        </div>
        <div style="text-align:center; margin-top:22px; color:var(--text-muted); font-size:13px;">
            © <span id="year"></span> NexusShop. All rights reserved.
        </div>
    </footer>

    <script>
        // --- Data ---
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
            { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
            { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'phones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'laptops' },
            { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: '-25%', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'footwear' },
            { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
            { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
            { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
            { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'gadgets' }
        ];

        // --- DOM refs ---
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');
        const searchBtn = document.getElementById('searchBtn');
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        const newsletterForm = document.getElementById('newsletterForm');
        const newsletterEmail = document.getElementById('newsletterEmail');
        const newsletterMsg = document.getElementById('newsletterMsg');

        let cartCount = 0;

        // --- Render functions ---
        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="icon"><em class="fas ${cat.icon}"></em></div>
                    <h4>${cat.name}</h4>
                    <div class="muted" style="font-size:13px; margin-top:6px;">Explore</div>
                `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product';
                el.innerHTML = `
                    ${p.badge ? `<div style="position:absolute; margin:12px; z-index:2;"><span style="background:${p.badge.startsWith('-') ? '#ff4757' : 'var(--accent-cyan)'}; color:#0b0e14; padding:4px 10px; border-radius:40px; font-weight:700; font-size:12px;">${p.badge}</span></div>` : ''}
                    <img src="${p.img}" alt="${p.title}" style="position:relative;">
                    <div class="product-body">
                        <h5>${p.title}</h5>
                        <div class="muted">${p.category}</div>
                        <div class="price-row">
                            <div>
                                <div class="price">$${p.price.toLocaleString()}</div>
                                ${p.oldPrice ? `<div class="old-price">$${p.oldPrice.toLocaleString()}</div>` : ''}
                            </div>
                            <div class="rating">${'★'.repeat(Math.round(p.rating))} <span>(${p.reviews})</span></div>
                        </div>
                    </div>
                    <div class="product-footer">
                        <button class="add-btn" data-id="${p.id}"><em class="fas fa-cart-plus"></em> Add</button>
                        <button class="wish-btn" aria-label="Add to wishlist"><em class="far fa-heart"></em></button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            // Attach add-to-cart listeners
            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    const id = Number(btn.dataset.id);
                    addToCart(id);
                });
            });
        }

        function addToCart(productId) {
            const p = PRODUCTS.find(x => x.id === productId);
            if (!p) return;
            cartCount++;
            cartCountEl.textContent = cartCount;
            const btn = document.querySelector(`.add-btn[data-id="${productId}"]`);
            if (btn) {
                const orig = btn.innerHTML;
                btn.innerHTML = 'Added ✓';
                btn.disabled = true;
                setTimeout(() => {
                    btn.innerHTML = orig;
                    btn.disabled = false;
                }, 1200);
            }
        }

        function filterProducts(query) {
            const q = query.trim().toLowerCase();
            if (!q) {
                renderProducts(PRODUCTS);
                return;
            }
            const filtered = PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) ||
                p.category.toLowerCase().includes(q)
            );
            renderProducts(filtered);
        }

        // --- Search ---
        searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', (e) => {
            if (e.key === 'Enter') filterProducts(e.target.value);
        });

        // --- Mobile menu ---
        mobileToggle.addEventListener('click', () => {
            mobileMenu.style.display = mobileMenu.style.display === 'none' ? 'block' : 'none';
        });

        // --- Newsletter ---
        newsletterForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const email = newsletterEmail.value.trim();
            if (!email || !email.includes('@')) {
                newsletterMsg.style.display = 'block';
                newsletterMsg.textContent = 'Please enter a valid email address.';
                newsletterMsg.style.color = '#ffb3b3';
                return;
            }
            newsletterMsg.style.display = 'block';
            newsletterMsg.textContent = 'Thanks! You are subscribed.';
            newsletterMsg.style.color = '#cce7ff';
            newsletterEmail.value = '';
            setTimeout(() => newsletterMsg.style.display = 'none', 3000);
        });

        // --- Deal countdown ---
        (function setupDealTimer() {
            const now = new Date();
            const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);
            function tick() {
                const diff = target - new Date();
                if (diff <= 0) {
                    document.getElementById('dealDays').textContent = '0';
                    document.getElementById('dealHours').textContent = '00';
                    document.getElementById('dealMinutes').textContent = '00';
                    document.getElementById('dealSeconds').textContent = '00';
                    return;
                }
                const days = Math.floor(diff / (24 * 3600 * 1000));
                const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
                const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
                const secs = Math.floor((diff % (60 * 1000)) / 1000);
                document.getElementById('dealDays').textContent = days;
                document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
            }
            tick();
            setInterval(tick, 1000);
        })();

        // --- Other UI actions ---
        document.getElementById('shopNow').addEventListener('click', () => {
            document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
        });
        document.getElementById('exploreDeals').addEventListener('click', () => {
            document.getElementById('deals').scrollIntoView({ behavior: 'smooth' });
        });
        document.getElementById('buyDeal').addEventListener('click', () => {
            cartCount++;
            cartCountEl.textContent = cartCount;
            alert('Deal added to cart (demo).');
        });

        // --- Init ---
        renderCategories();
        renderProducts(PRODUCTS);
        document.getElementById('year').textContent = new Date().getFullYear();
    </script>
</body>
</html>
