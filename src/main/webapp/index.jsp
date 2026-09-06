<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>KiranLux — Illuminate Your Style</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ========================================
           KIRANLUX — DARK NEON E‑COMMERCE
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
            --accent-gold: #f7c948;
            --accent-gradient: linear-gradient(135deg, #00f0ff, #f7c948);
            --shadow-glow: 0 8px 32px rgba(0, 240, 255, 0.15);
            --shadow-gold: 0 8px 32px rgba(247, 201, 72, 0.15);
            --radius: 16px;
            --container: 1200px;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html,
        body {
            height: 100%;
            scroll-behavior: smooth;
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

        /* ----- SCROLLBAR ----- */
        ::-webkit-scrollbar {
            width: 6px;
            height: 6px;
        }
        ::-webkit-scrollbar-track {
            background: var(--bg-body);
        }
        ::-webkit-scrollbar-thumb {
            background: var(--accent-cyan);
            border-radius: 10px;
        }

        /* ----- HEADER (glass + sticky) ----- */
        header {
            position: sticky;
            top: 0;
            z-index: 50;
            background: rgba(11, 14, 20, 0.78);
            backdrop-filter: blur(18px) saturate(180%);
            -webkit-backdrop-filter: blur(18px) saturate(180%);
            border-bottom: 1px solid var(--border-glass);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            padding: 10px 0;
        }

        .brand {
            font-weight: 800;
            font-size: 24px;
            letter-spacing: -0.02em;
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            display: flex;
            align-items: center;
            gap: 6px;
        }
        .brand .icon {
            -webkit-text-fill-color: var(--accent-gold);
            font-size: 22px;
        }
        .brand-tagline {
            font-size: 11px;
            font-weight: 400;
            letter-spacing: 0.06em;
            color: var(--text-muted);
            -webkit-text-fill-color: var(--text-muted);
            background: none;
            margin-left: 2px;
        }

        nav.main-nav ul {
            display: flex;
            gap: 4px;
            list-style: none;
            align-items: center;
        }
        nav.main-nav li a {
            display: flex;
            align-items: center;
            gap: 8px;
            padding: 8px 16px;
            border-radius: 40px;
            font-weight: 500;
            font-size: 14px;
            color: var(--text-muted);
            transition: all 0.25s;
            position: relative;
        }
        nav.main-nav li a:hover {
            color: #fff;
            background: var(--bg-card);
            box-shadow: 0 0 24px rgba(0, 240, 255, 0.06);
        }
        nav.main-nav li a.active {
            color: #fff;
            background: var(--bg-card);
            border: 1px solid rgba(0, 240, 255, 0.15);
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
            transition: border-color 0.3s, box-shadow 0.3s;
        }
        .search:focus-within {
            border-color: var(--accent-cyan);
            box-shadow: 0 0 28px rgba(0, 240, 255, 0.08);
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
            transition: color 0.25s;
            padding: 6px;
            border-radius: 50%;
        }
        .icon-btn:hover {
            color: var(--accent-cyan);
            background: rgba(0, 240, 255, 0.06);
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
            padding: 6px 12px;
            border-radius: 40px;
            background: var(--bg-card);
            border: 1px solid var(--border-glass);
            transition: background 0.25s, border-color 0.25s;
        }
        .cart:hover {
            background: rgba(255, 255, 255, 0.08);
            border-color: var(--accent-gold);
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
            box-shadow: 0 0 12px rgba(255, 61, 154, 0.4);
        }

        .mobile-toggle {
            display: none;
            background: transparent;
            border: 0;
            color: #fff;
            font-size: 22px;
            cursor: pointer;
            padding: 4px 8px;
            border-radius: 8px;
            transition: background 0.2s;
        }
        .mobile-toggle:hover {
            background: var(--bg-card);
        }

        /* ----- HERO (animated gradient) ----- */
        .hero {
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            min-height: 480px;
            padding: 60px 20px;
            background:
                radial-gradient(ellipse at 20% 50%, rgba(0, 240, 255, 0.10), transparent 60%),
                radial-gradient(ellipse at 80% 50%, rgba(247, 201, 72, 0.08), transparent 60%),
                var(--bg-body);
            border-bottom: 1px solid var(--border-glass);
            position: relative;
            overflow: hidden;
        }
        .hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: url("data:image/svg+xml,%3Csvg width='60' height='60' viewBox='0 0 60 60' xmlns='http://www.w3.org/2000/svg'%3E%3Cg fill='none' fill-rule='evenodd'%3E%3Cg fill='%23f7c948' fill-opacity='0.05'%3E%3Cpath d='M36 34v-4h-2v4h-4v2h4v4h2v-4h4v-2h-4zm0-30V0h-2v4h-4v2h4v4h2V6h4V4h-4zM6 34v-4H4v4H0v2h4v4h2v-4h4v-2H6zM6 4V0H4v4H0v2h4v4h2V6h4V4H6z'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E");
            opacity: 0.3;
            pointer-events: none;
        }
        .hero .container {
            position: relative;
            z-index: 1;
        }
        .hero h1 {
            font-size: 48px;
            font-weight: 800;
            letter-spacing: -0.03em;
            margin: 0 0 12px;
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }
        .hero h1 .highlight {
            -webkit-text-fill-color: var(--accent-gold);
            background: none;
        }
        .hero p {
            font-size: 18px;
            color: var(--text-muted);
            max-width: 680px;
            margin: 0 auto 28px;
        }
        .hero .badge {
            display: inline-block;
            background: rgba(247, 201, 72, 0.12);
            border: 1px solid rgba(247, 201, 72, 0.2);
            padding: 4px 16px;
            border-radius: 40px;
            font-size: 13px;
            color: var(--accent-gold);
            margin-bottom: 16px;
            letter-spacing: 0.04em;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 12px 30px;
            border-radius: 60px;
            font-weight: 600;
            border: 0;
            cursor: pointer;
            transition: all 0.3s;
            font-size: 15px;
        }
        .btn-primary {
            background: var(--accent-gradient);
            color: #0b0e14;
            box-shadow: 0 4px 24px rgba(0, 240, 255, 0.3);
        }
        .btn-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 40px rgba(0, 240, 255, 0.5);
        }
        .btn-ghost {
            background: transparent;
            border: 1.5px solid var(--border-glass);
            color: #fff;
        }
        .btn-ghost:hover {
            background: var(--bg-card);
            border-color: var(--accent-gold);
            box-shadow: 0 0 30px rgba(247, 201, 72, 0.08);
        }
        .btn-gold {
            background: var(--accent-gold);
            color: #0b0e14;
            box-shadow: 0 4px 24px rgba(247, 201, 72, 0.25);
        }
        .btn-gold:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 40px rgba(247, 201, 72, 0.4);
        }

        /* ----- SECTION TITLES ----- */
        .section {
            padding: 56px 0;
        }
        .section .title {
            text-align: center;
            margin-bottom: 32px;
        }
        .section .title h2 {
            font-size: 32px;
            font-weight: 700;
            letter-spacing: -0.02em;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 12px;
        }
        .section .title h2 .accent {
            color: var(--accent-gold);
        }
        .section .title p {
            color: var(--text-muted);
            margin-top: 4px;
        }
        .section .title .line {
            width: 60px;
            height: 3px;
            background: var(--accent-gradient);
            border-radius: 4px;
            margin: 8px auto 0;
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
            padding: 22px 12px;
            text-align: center;
            cursor: pointer;
            transition: all 0.3s;
            position: relative;
            overflow: hidden;
        }
        .cat-card::after {
            content: '';
            position: absolute;
            inset: 0;
            background: radial-gradient(circle at 50% 0%, rgba(247, 201, 72, 0.06), transparent 70%);
            opacity: 0;
            transition: opacity 0.4s;
        }
        .cat-card:hover::after {
            opacity: 1;
        }
        .cat-card:hover {
            transform: translateY(-6px);
            border-color: var(--accent-gold);
            box-shadow: var(--shadow-gold);
        }
        .cat-card .icon {
            font-size: 32px;
            color: var(--accent-gold);
            margin-bottom: 8px;
            position: relative;
            z-index: 1;
        }
        .cat-card h4 {
            font-size: 15px;
            font-weight: 600;
            margin: 6px 0 0;
            position: relative;
            z-index: 1;
        }
        .cat-card .muted {
            position: relative;
            z-index: 1;
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
            transition: all 0.35s;
            display: flex;
            flex-direction: column;
            position: relative;
        }
        .product:hover {
            transform: translateY(-8px);
            border-color: var(--accent-cyan);
            box-shadow: var(--shadow-glow);
        }
        .product .img-wrap {
            position: relative;
            overflow: hidden;
            height: 200px;
            flex-shrink: 0;
        }
        .product .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: block;
            transition: transform 0.5s;
        }
        .product:hover .img-wrap img {
            transform: scale(1.04);
        }
        .product .badge-top {
            position: absolute;
            top: 12px;
            left: 12px;
            z-index: 2;
            background: var(--accent-gold);
            color: #0b0e14;
            padding: 4px 12px;
            border-radius: 40px;
            font-weight: 700;
            font-size: 11px;
            letter-spacing: 0.04em;
        }
        .product .badge-top.sale {
            background: var(--accent-pink);
            color: #fff;
        }
        .product-body {
            padding: 14px 16px 8px;
            flex: 1;
        }
        .product-body h5 {
            font-size: 16px;
            font-weight: 600;
            margin: 0 0 4px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
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
            flex-wrap: wrap;
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
            color: var(--accent-gold);
            font-size: 14px;
            letter-spacing: 1px;
        }
        .rating span {
            color: var(--text-muted);
            font-size: 12px;
            letter-spacing: 0;
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
            transition: all 0.25s;
            font-size: 14px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 6px;
        }
        .add-btn:hover {
            transform: scale(1.02);
            box-shadow: 0 0 28px rgba(0, 240, 255, 0.3);
        }
        .add-btn:disabled {
            opacity: 0.6;
            cursor: default;
            transform: none;
        }
        .wish-btn {
            background: var(--bg-card);
            border: 1px solid var(--border-glass);
            color: var(--text-muted);
            padding: 8px 14px;
            border-radius: 40px;
            cursor: pointer;
            transition: all 0.25s;
            font-size: 16px;
        }
        .wish-btn:hover {
            color: var(--accent-pink);
            border-color: var(--accent-pink);
            background: rgba(255, 61, 154, 0.06);
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
            transition: border-color 0.3s;
        }
        .deal:hover {
            border-color: var(--accent-gold);
        }
        .deal .img-wrap {
            width: 45%;
            flex-shrink: 0;
            height: 280px;
            overflow: hidden;
        }
        .deal .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s;
        }
        .deal:hover .img-wrap img {
            transform: scale(1.03);
        }
        .deal .content {
            padding: 28px 32px;
            flex: 1;
        }
        .deal .content h3 {
            font-size: 26px;
            font-weight: 700;
            display: flex;
            align-items: center;
            gap: 12px;
            flex-wrap: wrap;
        }
        .deal .content h3 .deal-tag {
            font-size: 13px;
            background: var(--accent-pink);
            color: #fff;
            padding: 2px 14px;
            border-radius: 40px;
            font-weight: 600;
        }
        .timer {
            display: flex;
            gap: 12px;
            margin: 16px 0;
        }
        .time-box {
            background: var(--bg-body);
            border: 1px solid var(--border-glass);
            padding: 10px 16px;
            border-radius: 12px;
            min-width: 64px;
            text-align: center;
        }
        .time-box div:first-child {
            font-size: 24px;
            font-weight: 700;
            color: var(--accent-gold);
        }
        .time-box div:last-child {
            font-size: 10px;
            color: var(--text-muted);
            text-transform: uppercase;
            letter-spacing: 0.06em;
            margin-top: 2px;
        }
        .deal .price {
            font-size: 28px;
        }
        .deal-discount {
            background: var(--accent-pink);
            color: #fff;
            padding: 4px 16px;
            border-radius: 40px;
            font-weight: 700;
            font-size: 14px;
        }
        .deal .stock-info {
            font-size: 14px;
            color: var(--text-muted);
            margin-top: 10px;
        }
        .deal .stock-info strong {
            color: var(--accent-gold);
        }

        /* ----- TESTIMONIALS (horizontal scroll) ----- */
        .testimonials {
            display: flex;
            gap: 16px;
            overflow-x: auto;
            padding: 8px 4px 16px;
            scroll-snap-type: x mandatory;
        }
        .testimonials::-webkit-scrollbar {
            height: 4px;
        }
        .testimonial {
            min-width: 300px;
            background: var(--bg-card);
            border: 1px solid var(--border-glass);
            border-radius: var(--radius);
            padding: 22px;
            flex-shrink: 0;
            scroll-snap-align: start;
            transition: border-color 0.3s;
        }
        .testimonial:hover {
            border-color: var(--accent-gold);
        }
        .testimonial .rating {
            margin-bottom: 8px;
            font-size: 16px;
        }
        .testimonial p {
            color: var(--text-muted);
            font-size: 15px;
            line-height: 1.6;
            margin-bottom: 12px;
        }
        .testimonial .avatar {
            width: 42px;
            height: 42px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid var(--border-glass);
            flex-shrink: 0;
        }
        .testimonial .person {
            display: flex;
            align-items: center;
            gap: 12px;
        }
        .testimonial .person .name {
            font-weight: 700;
            font-size: 15px;
        }
        .testimonial .person .role {
            font-size: 13px;
            color: var(--text-muted);
        }

        /* ----- NEWSLETTER (gradient) ----- */
        .newsletter {
            background: var(--accent-gradient);
            border-radius: var(--radius);
            padding: 44px 32px;
            text-align: center;
            color: #0b0e14;
            position: relative;
            overflow: hidden;
        }
        .newsletter::before {
            content: '';
            position: absolute;
            inset: 0;
            background: radial-gradient(circle at 70% 30%, rgba(255, 255, 255, 0.15), transparent 60%);
            pointer-events: none;
        }
        .newsletter .content {
            position: relative;
            z-index: 1;
        }
        .newsletter h3 {
            font-size: 28px;
            font-weight: 700;
            margin-bottom: 4px;
        }
        .newsletter p {
            opacity: 0.8;
            margin-bottom: 20px;
            font-weight: 500;
        }
        .newsletter .form-wrap {
            display: flex;
            justify-content: center;
            gap: 10px;
            flex-wrap: wrap;
        }
        .newsletter input {
            padding: 12px 24px;
            border-radius: 60px;
            border: 0;
            width: 320px;
            max-width: 100%;
            background: rgba(255, 255, 255, 0.9);
            font-size: 14px;
            transition: background 0.3s, box-shadow 0.3s;
        }
        .newsletter input:focus {
            outline: none;
            background: #fff;
            box-shadow: 0 0 0 3px rgba(11, 14, 20, 0.15);
        }
        .newsletter .btn-dark {
            background: #0b0e14;
            color: #fff;
            border: 0;
            padding: 12px 32px;
            border-radius: 60px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.25s;
        }
        .newsletter .btn-dark:hover {
            background: #1a1f2a;
            transform: translateY(-2px);
            box-shadow: 0 8px 24px rgba(11, 14, 20, 0.2);
        }
        #newsletterMsg {
            margin-top: 12px;
            font-size: 14px;
            font-weight: 500;
            display: none;
            position: relative;
            z-index: 1;
        }

        /* ----- FOOTER ----- */
        footer {
            margin-top: 20px;
            padding: 40px 0 24px;
            border-top: 1px solid var(--border-glass);
            color: var(--text-muted);
            font-size: 14px;
        }
        footer .brand-foot {
            font-weight: 800;
            font-size: 20px;
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }
        footer .icon-btn {
            font-size: 20px;
        }
        footer .muted {
            color: var(--text-muted);
        }
        footer .social-links {
            display: flex;
            gap: 10px;
            margin-top: 12px;
        }
        footer .social-links a {
            background: var(--bg-card);
            border: 1px solid var(--border-glass);
            border-radius: 50%;
            width: 40px;
            height: 40px;
            display: grid;
            place-items: center;
            transition: all 0.25s;
            color: var(--text-muted);
        }
        footer .social-links a:hover {
            border-color: var(--accent-gold);
            color: var(--accent-gold);
            transform: translateY(-2px);
            box-shadow: var(--shadow-gold);
        }
        footer .links h4 {
            font-weight: 700;
            color: #fff;
            margin-bottom: 10px;
            font-size: 15px;
        }
        footer .links ul {
            list-style: none;
            padding: 0;
            line-height: 2;
        }
        footer .links ul li a {
            color: var(--text-muted);
            transition: color 0.2s;
        }
        footer .links ul li a:hover {
            color: #fff;
        }
        .footer-bottom {
            text-align: center;
            margin-top: 28px;
            padding-top: 18px;
            border-top: 1px solid var(--border-glass);
            font-size: 13px;
            color: var(--text-muted);
        }

        /* ----- RESPONSIVE TWEAKS ----- */
        @media (max-width: 1024px) {
            .categories {
                grid-template-columns: repeat(3, 1fr);
            }
            .products {
                grid-template-columns: repeat(3, 1fr);
            }
        }
        @media (max-width: 820px) {
            nav.main-nav {
                display: none;
            }
            .mobile-toggle {
                display: inline-block;
            }
            .products {
                grid-template-columns: repeat(2, 1fr);
            }
            .categories {
                grid-template-columns: repeat(2, 1fr);
            }
            .deal .img-wrap {
                width: 40%;
                height: 200px;
            }
            .hero h1 {
                font-size: 34px;
            }
            .search {
                min-width: 140px;
            }
        }
        @media (max-width: 600px) {
            .hero h1 {
                font-size: 28px;
            }
            .hero p {
                font-size: 16px;
            }
            .products {
                grid-template-columns: 1fr;
                max-width: 400px;
                margin: 0 auto;
            }
            .categories {
                grid-template-columns: repeat(2, 1fr);
            }
            .deal {
                flex-direction: column;
            }
            .deal .img-wrap {
                width: 100%;
                height: 200px;
            }
            .deal .content {
                padding: 20px;
            }
            .search {
                min-width: 120px;
            }
            .newsletter input {
                width: 100%;
            }
            .brand-tagline {
                display: none;
            }
            .section .title h2 {
                font-size: 26px;
            }
            .timer {
                gap: 8px;
                flex-wrap: wrap;
            }
            .time-box {
                min-width: 56px;
                padding: 8px 12px;
            }
            .time-box div:first-child {
                font-size: 20px;
            }
        }
        @media (max-width: 420px) {
            .header-actions .icon-btn {
                display: none;
            }
            .header-actions .cart {
                padding: 6px 10px;
            }
            .brand {
                font-size: 20px;
            }
            .search {
                min-width: 100px;
                padding: 4px 8px 4px 12px;
            }
            .search input {
                font-size: 13px;
            }
            .categories {
                grid-template-columns: repeat(2, 1fr);
                gap: 10px;
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="container header-inner" role="banner">
            <div style="display:flex; align-items:center; gap:14px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu">
                    <em class="fas fa-bars"></em>
                </button>
                <a class="brand" href="#">
                    <span class="icon"><em class="fas fa-sun"></em></span>
                    Kiran<span style="-webkit-text-fill-color:var(--accent-gold);">Lux</span>
                    <span class="brand-tagline">✦ illuminate</span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav" aria-label="Primary navigation">
                <ul>
                    <li><a href="#" class="active"><em class="fas fa-home"></em> Home</a></li>
                    <li><a href="#categories"><em class="fas fa-th-large"></em> Categories</a></li>
                    <li><a href="#products"><em class="fas fa-fire"></em> Trending</a></li>
                    <li><a href="#deals"><em class="fas fa-tag"></em> Deals</a></li>
                </ul>
            </nav>

            <div style="display:flex; align-items:center; gap:12px;">
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
            <div class="container" style="padding:14px 0;">
                <nav aria-label="Mobile navigation">
                    <ul style="list-style:none; padding:0; margin:0; display:flex; flex-direction:column; gap:6px;">
                        <li><a href="#" style="display:block; padding:10px 14px; border-radius:8px; color:var(--text-muted); font-weight:500; transition:background 0.2s;" onmouseover="this.style.background='var(--bg-card)'" onmouseout="this.style.background='transparent'">Home</a></li>
                        <li><a href="#categories" style="display:block; padding:10px 14px; border-radius:8px; color:var(--text-muted); font-weight:500; transition:background 0.2s;" onmouseover="this.style.background='var(--bg-card)'" onmouseout="this.style.background='transparent'">Categories</a></li>
                        <li><a href="#products" style="display:block; padding:10px 14px; border-radius:8px; color:var(--text-muted); font-weight:500; transition:background 0.2s;" onmouseover="this.style.background='var(--bg-card)'" onmouseout="this.style.background='transparent'">Trending</a></li>
                        <li><a href="#deals" style="display:block; padding:10px 14px; border-radius:8px; color:var(--text-muted); font-weight:500; transition:background 0.2s;" onmouseover="this.style.background='var(--bg-card)'" onmouseout="this.style.background='transparent'">Deals</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <main>
        <!-- Hero -->
        <section class="hero" aria-label="Hero banner">
            <div class="container">
                <div class="badge"><em class="fas fa-star" style="margin-right:6px;"></em> New Season — Fresh Arrivals</div>
                <h1>Illuminate Your <span class="highlight">Style</span> with <br>KiranLux</h1>
                <p>Discover premium fashion, tech, and lifestyle essentials — curated with a glow. Enjoy exclusive deals and free shipping on your first order.</p>
                <div style="display:flex; gap:12px; justify-content:center; flex-wrap:wrap;">
                    <button class="btn btn-primary" id="shopNow">Shop Now <em class="fas fa-arrow-right"></em></button>
                    <button class="btn btn-ghost" id="exploreDeals">Explore Deals</button>
                </div>
            </div>
        </section>

        <!-- Categories -->
        <section id="categories" class="section container" aria-labelledby="cat-title">
            <div class="title" id="cat-title">
                <h2>Shop by <span class="accent">Category</span></h2>
                <p>Browse our curated collections across premium categories</p>
                <div class="line"></div>
            </div>
            <div class="grid categories" id="categoriesGrid" aria-live="polite"></div>
        </section>

        <!-- Products -->
        <section id="products" class="section container" aria-labelledby="prod-title">
            <div class="title" id="prod-title">
                <h2>Trending <span class="accent">Picks</span></h2>
                <p>Popular products loved by our community</p>
                <div class="line"></div>
            </div>
            <div class="grid products" id="productsGrid" aria-live="polite"></div>
        </section>

        <!-- Deals -->
        <section id="deals" class="section container" aria-labelledby="deals-title">
            <div class="title" id="deals-title">
                <h2>Flash <span class="accent">Sale</span></h2>
                <p>Limited-time offers — glow up your cart!</p>
                <div class="line"></div>
            </div>

            <div class="deal">
                <div class="img-wrap">
                    <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80" alt="MacBook Air M2">
                </div>
                <div class="content">
                    <h3>
                        MacBook Air M2
                        <span class="deal-tag"><em class="fas fa-bolt"></em> Flash</span>
                    </h3>
                    <p class="muted">Thin, light and powerful — now with M2 performance and all‑day battery.</p>

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

                    <div style="display:flex; align-items:center; gap:14px; flex-wrap:wrap;">
                        <div class="price">$999 <span class="old-price">$1,199</span></div>
                        <div class="deal-discount"><em class="fas fa-tag" style="margin-right:4px;"></em> -17%</div>
                    </div>

                    <div class="stock-info">Only <strong>12</strong> items left at this price!</div>
                    <div style="margin-top:16px;">
                        <button class="btn btn-gold" id="buyDeal"><em class="fas fa-cart-plus"></em> Buy Now</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonials -->
        <section class="section container" aria-labelledby="test-title">
            <div class="title" id="test-title">
                <h2>What Our <span class="accent">Customers</span> Say</h2>
                <p>Real reviews from verified buyers</p>
                <div class="line"></div>
            </div>
            <div class="testimonials" id="testimonials">
                <div class="testimonial">
                    <div class="rating"><em class="fas fa-star"></em><em class="fas fa-star"></em><em class="fas fa-star"></em><em class="fas fa-star"></em><em class="fas fa-star"></em></div>
                    <p>"Fast shipping and excellent customer support. The product exceeded my expectations — absolutely love it!"</p>
                    <div class="person">
                        <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Ava Martin" class="avatar">
                        <div>
                            <div class="name">Ava Martin</div>
                            <div class="role">Verified buyer</div>
                        </div>
                    </div>
                </div>
                <div class="testimonial">
                    <div class="rating"><em class="fas fa-star"></em><em class="fas fa-star"></em><em class="fas fa-star"></em><em class="fas fa-star"></em><em class="fas fa-star"></em></div>
                    <p>"Great selection and the checkout was smooth. KiranLux has become my go‑to store for premium finds."</p>
                    <div class="person">
                        <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="Michael Lee" class="avatar">
                        <div>
                            <div class="name">Michael Lee</div>
                            <div class="role">Frequent buyer</div>
                        </div>
                    </div>
                </div>
                <div class="testimonial">
                    <div class="rating"><em class="fas fa-star"></em><em class="fas fa-star"></em><em class="fas fa-star"></em><em class="fas fa-star"></em><em class="fas fa-star-half-alt"></em></div>
                    <p>"Amazing quality and the packaging was beautiful. The gold accents on the site drew me in — and the products delivered!"</p>
                    <div class="person">
                        <img src="https://images.unsplash.com/photo-1580489944761-15a19d654956?auto=format&fit=crop&w=80&q=80" alt="Sophia Chen" class="avatar">
                        <div>
                            <div class="name">Sophia Chen</div>
                            <div class="role">Design enthusiast</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Newsletter -->
        <section class="section container" aria-labelledby="news-title">
            <div class="newsletter" id="newsletter">
                <div class="content">
                    <h3 id="news-title"><em class="fas fa-sun" style="margin-right:8px;"></em> Glow Up Your Inbox</h3>
                    <p>Subscribe for exclusive offers, early access & style inspiration</p>
                    <form id="newsletterForm" class="form-wrap">
                        <input id="newsletterEmail" type="email" placeholder="Enter your email" aria-label="Email address" required>
                        <button class="btn-dark" id="subscribeBtn">Subscribe <em class="fas fa-arrow-right"></em></button>
                    </form>
                    <div id="newsletterMsg"></div>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container">
            <div style="display:flex; flex-wrap:wrap; gap:40px; justify-content:space-between;">
                <div style="max-width:340px;">
                    <div class="brand-foot">
                        <em class="fas fa-sun" style="margin-right:6px; -webkit-text-fill-color:var(--accent-gold);"></em>
                        KiranLux
                    </div>
                    <p class="muted" style="margin-top:8px; line-height:1.7;">Where light meets style — a modern e‑commerce destination crafted with passion.</p>
                    <div class="social-links">
                        <a href="#" title="Facebook"><em class="fab fa-facebook-f"></em></a>
                        <a href="#" title="Twitter"><em class="fab fa-twitter"></em></a>
                        <a href="#" title="Instagram"><em class="fab fa-instagram"></em></a>
                        <a href="#" title="YouTube"><em class="fab fa-youtube"></em></a>
                    </div>
                </div>

                <div style="display:flex; gap:48px; flex-wrap:wrap;">
                    <div class="links">
                        <h4>Company</h4>
                        <ul>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Careers</a></li>
                            <li><a href="#">Press</a></li>
                            <li><a href="#">Blog</a></li>
                        </ul>
                    </div>
                    <div class="links">
                        <h4>Support</h4>
                        <ul>
                            <li><a href="#">Help Center</a></li>
                            <li><a href="#">Shipping &amp; Returns</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">FAQs</a></li>
                        </ul>
                    </div>
                    <div class="links">
                        <h4>Legal</h4>
                        <ul>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Terms of Service</a></li>
                            <li><a href="#">Cookie Policy</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                © <span id="year"></span> KiranLux. All rights reserved. <span style="color:var(--text-muted);">✦</span> Made with <em class="fas fa-heart" style="color:var(--accent-pink);"></em>
            </div>
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

        const PRODUCTS = [{
            id: 1,
            title: 'iPhone 14 Pro Max',
            price: 1099,
            oldPrice: 1199,
            rating: 5,
            reviews: 128,
            badge: 'New',
            img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
            category: 'phones'
        }, {
            id: 2,
            title: 'MacBook Pro 14"',
            price: 1999,
            rating: 4,
            reviews: 86,
            img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
            category: 'laptops'
        }, {
            id: 3,
            title: 'Apple Watch Series 8',
            price: 349,
            oldPrice: 399,
            rating: 5,
            reviews: 214,
            badge: '-25%',
            img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
            category: 'accessories'
        }, {
            id: 4,
            title: 'Nike Air Max 270',
            price: 150,
            rating: 4,
            reviews: 53,
            img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
            category: 'footwear'
        }, {
            id: 5,
            title: 'Sony A7 IV Camera',
            price: 2499,
            rating: 5,
            reviews: 42,
            img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
            category: 'gadgets'
        }, {
            id: 6,
            title: 'Chanel No. 5 Eau',
            price: 120,
            rating: 5,
            reviews: 189,
            img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
            category: 'accessories'
        }, {
            id: 7,
            title: 'Travel Backpack Pro',
            price: 79,
            oldPrice: 99,
            rating: 4,
            reviews: 67,
            img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
            category: 'accessories'
        }, {
            id: 8,
            title: 'Sony WH-1000XM5',
            price: 399,
            rating: 5,
            reviews: 156,
            img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
            category: 'gadgets'
        }];

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
                        <div class="muted" style="font-size:13px; margin-top:6px;">Explore →</div>
                    `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    document.getElementById('products').scrollIntoView({ behavior: 'smooth',
                    block: 'start' });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            if (list.length === 0) {
                productsGrid.innerHTML =
                    `<div style="grid-column:1/-1; text-align:center; padding:40px; color:var(--text-muted);"><em class="fas fa-search" style="font-size:32px; display:block; margin-bottom:12px;"></em> No products found. Try a different search.</div>`;
                return;
            }
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product';
                const badgeClass = p.badge && p.badge.startsWith('-') ? 'sale' : '';
                el.innerHTML = `
                        <div class="img-wrap">
                            ${p.badge ? `<span class="badge-top ${badgeClass}">${p.badge}</span>` : ''}
                            <img src="${p.img}" alt="${p.title}" loading="lazy">
                        </div>
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
            // subtle animation on cart icon
            const cartIcon = document.querySelector('.cart .fa-shopping-cart');
            if (cartIcon) {
                cartIcon.style.transform = 'scale(1.3)';
                setTimeout(() => cartIcon.style.transform = 'scale(1)', 300);
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
            const isOpen = mobileMenu.style.display === 'block';
            mobileMenu.style.display = isOpen ? 'none' : 'block';
            mobileToggle.innerHTML = isOpen ? '<em class="fas fa-bars"></em>' : '<em class="fas fa-times"></em>';
        });

        // Close mobile menu on link click
        mobileMenu.querySelectorAll('a').forEach(link => {
            link.addEventListener('click', () => {
                mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<em class="fas fa-bars"></em>';
            });
        });

        // --- Newsletter ---
        newsletterForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const email = newsletterEmail.value.trim();
            if (!email || !email.includes('@')) {
                newsletterMsg.style.display = 'block';
                newsletterMsg.textContent = '⚠️ Please enter a valid email address.';
                newsletterMsg.style.color = '#2d1b1b';
                return;
            }
            newsletterMsg.style.display = 'block';
            newsletterMsg.textContent = '✨ You\'re in! Welcome to the KiranLux glow.';
            newsletterMsg.style.color = '#0b0e14';
            newsletterEmail.value = '';
            setTimeout(() => {
                newsletterMsg.style.display = 'none';
            }, 3500);
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
            const btn = document.getElementById('buyDeal');
            const orig = btn.innerHTML;
            btn.innerHTML = 'Added ✓';
            btn.disabled = true;
            setTimeout(() => {
                btn.innerHTML = orig;
                btn.disabled = false;
            }, 1200);
        });

        // --- Wishlist toggle (demo) ---
        document.addEventListener('click', (e) => {
            const wishBtn = e.target.closest('.wish-btn');
            if (wishBtn) {
                const icon = wishBtn.querySelector('em');
                if (icon) {
                    icon.classList.toggle('far');
                    icon.classList.toggle('fas');
                    icon.style.color = icon.classList.contains('fas') ? 'var(--accent-pink)' : '';
                }
            }
        });

        // --- Init ---
        renderCategories();
        renderProducts(PRODUCTS);
        document.getElementById('year').textContent = new Date().getFullYear();

        // --- Close mobile menu on resize ---
        window.addEventListener('resize', () => {
            if (window.innerWidth > 820) {
                mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<em class="fas fa-bars"></em>';
            }
        });

        console.log('✨ KiranLux — Illuminate Your Style ✨');
    </script>
</body>
</html>
