<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Modern E‑Commerce</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&family=Playfair+Display:ital,wght@0,700;1,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ========== ROOT VARIABLES ========== */
        :root {
            --bg: #f7f6f3;
            --bg-alt: #efece6;
            --bg-card: #ffffff;
            --primary: #16162a;
            --primary-light: #26263f;
            --accent: #ff6b4a;
            --accent-2: #ff9d6c;
            --accent-dark: #e34d2c;
            --accent-light: #ffe4db;
            --gold: #d4a853;
            --muted: #6e6e82;
            --muted-light: #a5a5b8;
            --surface: #f2f0eb;
            --surface-2: #e9e6df;
            --success: #1f9d8f;
            --warning: #f0b429;
            --radius: 22px;
            --radius-sm: 14px;
            --radius-xs: 10px;
            --shadow-sm: 0 2px 8px rgba(22, 22, 42, 0.05);
            --shadow: 0 8px 30px rgba(22, 22, 42, 0.07);
            --shadow-lg: 0 20px 60px rgba(22, 22, 42, 0.12);
            --shadow-accent: 0 12px 32px rgba(255, 107, 74, 0.28);
            --transition: 0.35s cubic-bezier(0.34, 1.4, 0.64, 1);
            --transition-fast: 0.2s ease;
            --container: 1260px;
        }

        /* ========== RESET & BASE ========== */
        *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }
        html { scroll-behavior: smooth; }
        body {
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            background: var(--bg);
            color: var(--primary);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            overflow-x: hidden;
        }
        a { color: inherit; text-decoration: none; }
        img { display: block; max-width: 100%; }
        button { cursor: pointer; font-family: inherit; border: none; background: none; color: inherit; }
        input { font-family: inherit; }
        ::selection { background: var(--accent); color: #fff; }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 28px;
        }

        /* ========== UTILITIES ========== */
        .muted { color: var(--muted); }
        .text-center { text-align: center; }
        .sr-only {
            position: absolute; width: 1px; height: 1px; padding: 0; margin: -1px;
            overflow: hidden; clip: rect(0,0,0,0); border: 0;
        }

        /* ========== BUTTONS ========== */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 9px;
            padding: 14px 30px;
            border-radius: 999px;
            font-weight: 700;
            font-size: 15px;
            letter-spacing: -0.1px;
            transition: var(--transition);
            border: 2px solid transparent;
            position: relative;
            overflow: hidden;
        }
        .btn i { transition: transform var(--transition-fast); }
        .btn:hover i.fa-arrow-right { transform: translateX(4px); }

        .btn-primary {
            background: linear-gradient(135deg, var(--accent) 0%, var(--accent-2) 100%);
            color: #fff;
            border-color: transparent;
            box-shadow: var(--shadow-accent);
        }
        .btn-primary::after {
            content: '';
            position: absolute;
            inset: 0;
            background: linear-gradient(135deg, var(--accent-dark) 0%, var(--accent) 100%);
            opacity: 0;
            transition: opacity var(--transition-fast);
            z-index: 0;
        }
        .btn-primary > * { position: relative; z-index: 1; }
        .btn-primary:hover { transform: translateY(-3px); box-shadow: 0 16px 40px rgba(255,107,74,0.38); }
        .btn-primary:hover::after { opacity: 1; }

        .btn-secondary {
            background: var(--primary);
            color: #fff;
            border-color: var(--primary);
        }
        .btn-secondary:hover {
            background: var(--primary-light);
            border-color: var(--primary-light);
            transform: translateY(-3px);
            box-shadow: 0 16px 40px rgba(22,22,42,0.24);
        }

        .btn-ghost {
            background: rgba(255,255,255,0.10);
            color: #fff;
            border-color: rgba(255,255,255,0.28);
            backdrop-filter: blur(8px);
            -webkit-backdrop-filter: blur(8px);
        }
        .btn-ghost:hover {
            background: rgba(255,255,255,0.22);
            border-color: rgba(255,255,255,0.5);
            transform: translateY(-3px);
        }

        .btn-outline {
            background: transparent;
            color: var(--primary);
            border-color: rgba(22,22,42,0.14);
        }
        .btn-outline:hover {
            background: var(--primary);
            color: #fff;
            border-color: var(--primary);
            transform: translateY(-3px);
        }

        .btn-sm { padding: 9px 20px; font-size: 13px; }

        /* ========== HEADER ========== */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(247, 246, 243, 0.82);
            backdrop-filter: blur(20px) saturate(180%);
            -webkit-backdrop-filter: blur(20px) saturate(180%);
            border-bottom: 1px solid rgba(22,22,42,0.06);
            transition: box-shadow var(--transition-fast);
        }
        header.scrolled { box-shadow: 0 4px 30px rgba(22,22,42,0.06); }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            padding: 14px 0;
            min-height: 76px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-weight: 900;
            font-size: 23px;
            letter-spacing: -0.8px;
            color: var(--primary);
            flex-shrink: 0;
        }
        .brand .logo-mark {
            width: 38px;
            height: 38px;
            border-radius: 12px;
            background: linear-gradient(135deg, var(--accent) 0%, var(--accent-2) 100%);
            display: grid;
            place-items: center;
            color: #fff;
            font-size: 17px;
            box-shadow: 0 6px 16px rgba(255,107,74,0.32);
            transition: transform var(--transition);
        }
        .brand:hover .logo-mark { transform: rotate(-8deg) scale(1.05); }
        .brand .accent {
            background: linear-gradient(135deg, var(--accent) 0%, var(--accent-2) 100%);
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        nav.main-nav ul {
            display: flex;
            gap: 4px;
            list-style: none;
            align-items: center;
            background: rgba(255,255,255,0.6);
            padding: 5px;
            border-radius: 999px;
            border: 1px solid rgba(22,22,42,0.05);
        }
        nav.main-nav li a {
            display: flex;
            align-items: center;
            gap: 7px;
            padding: 9px 17px;
            border-radius: 999px;
            font-weight: 600;
            font-size: 14px;
            color: var(--muted);
            transition: var(--transition-fast);
        }
        nav.main-nav li a:hover { color: var(--primary); background: rgba(255,255,255,0.9); }
        nav.main-nav li a.active {
            background: var(--primary);
            color: #fff;
            box-shadow: 0 4px 14px rgba(22,22,42,0.18);
        }
        nav.main-nav li a i { font-size: 13px; opacity: 0.85; }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 4px;
            flex-shrink: 0;
        }
        .header-actions .icon-btn {
            width: 44px;
            height: 44px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            font-size: 17px;
            color: var(--muted);
            transition: var(--transition-fast);
            position: relative;
        }
        .header-actions .icon-btn:hover {
            background: var(--surface-2);
            color: var(--primary);
            transform: translateY(-1px);
        }

        .cart-wrap { position: relative; }
        .cart-count {
            position: absolute;
            top: 0;
            right: 0;
            background: linear-gradient(135deg, var(--accent) 0%, var(--accent-2) 100%);
            color: #fff;
            font-size: 10.5px;
            font-weight: 800;
            min-width: 20px;
            height: 20px;
            padding: 0 5px;
            border-radius: 999px;
            display: grid;
            place-items: center;
            border: 2px solid var(--bg);
            transition: transform var(--transition-fast);
        }

        .search-wrap {
            display: flex;
            align-items: center;
            background: rgba(255,255,255,0.75);
            border-radius: 999px;
            padding: 0 8px 0 18px;
            transition: var(--transition-fast);
            border: 1.5px solid rgba(22,22,42,0.07);
            min-width: 240px;
        }
        .search-wrap:focus-within {
            border-color: var(--accent);
            background: #fff;
            box-shadow: 0 0 0 4px rgba(255,107,74,0.10);
        }
        .search-wrap input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            padding: 10px 0;
            font-size: 14px;
            color: var(--primary);
        }
        .search-wrap input::placeholder { color: var(--muted-light); }
        .search-wrap button {
            width: 34px;
            height: 34px;
            border-radius: 50%;
            background: var(--primary);
            color: #fff;
            font-size: 13px;
            display: grid;
            place-items: center;
            transition: var(--transition-fast);
        }
        .search-wrap button:hover { background: var(--accent); transform: scale(1.06); }

        .mobile-toggle {
            display: none;
            width: 44px;
            height: 44px;
            border-radius: 50%;
            font-size: 19px;
            background: var(--surface-2);
            color: var(--primary);
            transition: var(--transition-fast);
        }
        .mobile-toggle:hover { background: var(--accent-light); }

        #mobileMenu {
            display: none;
            background: #fff;
            border-top: 1px solid rgba(22,22,42,0.05);
            padding: 12px 0 20px;
            animation: slideDown 0.3s ease;
        }
        @keyframes slideDown {
            from { opacity: 0; transform: translateY(-8px); }
            to { opacity: 1; transform: translateY(0); }
        }
        #mobileMenu ul { list-style: none; display: flex; flex-direction: column; gap: 3px; }
        #mobileMenu ul li a {
            display: flex;
            align-items: center;
            gap: 14px;
            padding: 13px 16px;
            border-radius: var(--radius-sm);
            font-weight: 600;
            color: var(--primary);
            transition: var(--transition-fast);
        }
        #mobileMenu ul li a:hover { background: var(--surface); }
        #mobileMenu ul li a i { width: 22px; color: var(--accent); text-align: center; }

        /* ========== HERO ========== */
        .hero {
            position: relative;
            display: flex;
            align-items: center;
            min-height: 560px;
            padding: 70px 0;
            border-radius: 32px;
            overflow: hidden;
            margin: 24px 28px 0;
            background: linear-gradient(135deg, #16162a 0%, #26263f 55%, #3a2a3f 100%);
            isolation: isolate;
        }
        .hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat;
            opacity: 0.22;
            z-index: -1;
        }
        .hero::after {
            content: '';
            position: absolute;
            top: -30%;
            right: -10%;
            width: 620px;
            height: 620px;
            background: radial-gradient(circle, rgba(255,107,74,0.38) 0%, transparent 62%);
            z-index: -1;
            animation: floatGlow 9s ease-in-out infinite;
        }
        @keyframes floatGlow {
            0%, 100% { transform: translate(0, 0) scale(1); opacity: 0.7; }
            50% { transform: translate(-30px, 30px) scale(1.1); opacity: 1; }
        }

        .hero .container { position: relative; z-index: 2; }
        .hero .badge {
            display: inline-flex;
            align-items: center;
            gap: 7px;
            background: rgba(255,107,74,0.14);
            color: #ffb59f;
            padding: 7px 18px;
            border-radius: 999px;
            font-weight: 700;
            font-size: 12.5px;
            letter-spacing: 0.6px;
            text-transform: uppercase;
            margin-bottom: 22px;
            border: 1px solid rgba(255,107,74,0.28);
            backdrop-filter: blur(6px);
        }
        .hero .badge i { color: var(--accent-2); }
        .hero h1 {
            font-family: 'Playfair Display', serif;
            font-size: clamp(34px, 5vw, 62px);
            font-weight: 700;
            color: #fff;
            line-height: 1.08;
            max-width: 680px;
            margin-bottom: 20px;
            letter-spacing: -1.5px;
        }
        .hero h1 .grad {
            background: linear-gradient(120deg, var(--accent-2) 0%, var(--accent) 50%, #ffb59f 100%);
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
            font-style: italic;
        }
        .hero p {
            color: rgba(255,255,255,0.75);
            font-size: 17px;
            max-width: 500px;
            margin-bottom: 32px;
            line-height: 1.65;
        }
        .hero .actions { display: flex; gap: 14px; flex-wrap: wrap; }

        .hero-stats {
            display: flex;
            gap: 40px;
            margin-top: 48px;
            flex-wrap: wrap;
        }
        .hero-stats .stat .num {
            font-size: 28px;
            font-weight: 800;
            color: #fff;
            letter-spacing: -1px;
        }
        .hero-stats .stat .lbl {
            font-size: 12.5px;
            color: rgba(255,255,255,0.55);
            text-transform: uppercase;
            letter-spacing: 0.8px;
            margin-top: 2px;
        }
        .hero-stats .stat .num .grad {
            background: linear-gradient(120deg, var(--accent-2), var(--accent));
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        /* ========== SECTION ========== */
        .section { padding: 64px 0; }
        .section-header {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            gap: 16px;
            margin-bottom: 36px;
            flex-wrap: wrap;
        }
        .section-header .title-group .eyebrow {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            font-size: 12px;
            font-weight: 700;
            letter-spacing: 1.2px;
            text-transform: uppercase;
            color: var(--accent);
            margin-bottom: 8px;
        }
        .section-header .title-group .eyebrow::before {
            content: '';
            width: 22px;
            height: 2px;
            background: var(--accent);
            border-radius: 2px;
        }
        .section-header .title-group h2 {
            font-family: 'Playfair Display', serif;
            font-size: 34px;
            font-weight: 700;
            letter-spacing: -0.8px;
            line-height: 1.15;
        }
        .section-header .title-group p {
            color: var(--muted);
            margin-top: 6px;
            font-size: 15px;
        }
        .section-header .view-all {
            font-weight: 700;
            color: var(--primary);
            display: inline-flex;
            align-items: center;
            gap: 8px;
            font-size: 14px;
            padding: 11px 22px;
            border-radius: 999px;
            border: 1.5px solid rgba(22,22,42,0.12);
            transition: var(--transition-fast);
            white-space: nowrap;
            background: rgba(255,255,255,0.6);
        }
        .section-header .view-all:hover {
            background: var(--primary);
            color: #fff;
            border-color: var(--primary);
            gap: 12px;
        }

        /* ========== CATEGORIES ========== */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
        }
        .cat-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            padding: 26px 16px 22px;
            text-align: center;
            box-shadow: var(--shadow-sm);
            transition: var(--transition);
            cursor: pointer;
            border: 1.5px solid rgba(22,22,42,0.05);
            position: relative;
            overflow: hidden;
        }
        .cat-card::before {
            content: '';
            position: absolute;
            inset: 0;
            background: linear-gradient(180deg, transparent 55%, rgba(255,107,74,0.06) 100%);
            opacity: 0;
            transition: opacity var(--transition-fast);
        }
        .cat-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-lg);
            border-color: rgba(255,107,74,0.25);
        }
        .cat-card:hover::before { opacity: 1; }
        .cat-card .icon-wrap {
            width: 62px;
            height: 62px;
            border-radius: 20px;
            background: linear-gradient(135deg, var(--accent-light) 0%, #fff0eb 100%);
            display: grid;
            place-items: center;
            margin: 0 auto 14px;
            font-size: 25px;
            color: var(--accent);
            transition: var(--transition);
            position: relative;
            z-index: 1;
        }
        .cat-card:hover .icon-wrap {
            background: linear-gradient(135deg, var(--accent) 0%, var(--accent-2) 100%);
            color: #fff;
            transform: scale(1.08) rotate(-6deg);
            box-shadow: var(--shadow-accent);
        }
        .cat-card h4 { font-size: 14.5px; font-weight: 700; position: relative; z-index: 1; }
        .cat-card .count {
            font-size: 12.5px;
            color: var(--muted-light);
            margin-top: 3px;
            position: relative;
            z-index: 1;
        }

        /* ========== PRODUCTS ========== */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 24px;
        }
        .product-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow-sm);
            transition: var(--transition);
            display: flex;
            flex-direction: column;
            border: 1.5px solid rgba(22,22,42,0.05);
            position: relative;
        }
        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-lg);
            border-color: rgba(255,107,74,0.2);
        }
        .product-card .img-wrap {
            position: relative;
            overflow: hidden;
            background: var(--surface);
            aspect-ratio: 1 / 1;
        }
        .product-card .img-wrap::after {
            content: '';
            position: absolute;
            inset: 0;
            background: linear-gradient(180deg, transparent 65%, rgba(22,22,42,0.06) 100%);
            pointer-events: none;
        }
        .product-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.6s cubic-bezier(0.34, 1.2, 0.64, 1);
        }
        .product-card:hover .img-wrap img { transform: scale(1.07); }

        .product-card .badge {
            position: absolute;
            top: 14px;
            left: 14px;
            background: linear-gradient(135deg, var(--accent) 0%, var(--accent-2) 100%);
            color: #fff;
            padding: 5px 13px;
            border-radius: 999px;
            font-size: 10.5px;
            font-weight: 800;
            letter-spacing: 0.6px;
            text-transform: uppercase;
            z-index: 2;
            box-shadow: 0 4px 12px rgba(255,107,74,0.35);
        }
        .product-card .badge.sale {
            background: linear-gradient(135deg, var(--warning) 0%, #f7c948 100%);
            color: var(--primary);
            box-shadow: 0 4px 12px rgba(240,180,41,0.35);
        }
        .product-card .wish-btn {
            position: absolute;
            top: 14px;
            right: 14px;
            width: 38px;
            height: 38px;
            border-radius: 50%;
            background: rgba(255,255,255,0.92);
            display: grid;
            place-items: center;
            font-size: 15px;
            color: var(--muted);
            transition: var(--transition-fast);
            backdrop-filter: blur(6px);
            z-index: 2;
            box-shadow: var(--shadow-sm);
        }
        .product-card .wish-btn:hover {
            background: var(--accent);
            color: #fff;
            transform: scale(1.12);
        }
        .product-card .body {
            padding: 18px 20px 12px;
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 7px;
        }
        .product-card .body .category-tag {
            font-size: 10.5px;
            color: var(--accent);
            text-transform: uppercase;
            letter-spacing: 1px;
            font-weight: 800;
        }
        .product-card .body h5 {
            font-size: 15.5px;
            font-weight: 700;
            line-height: 1.35;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
            letter-spacing: -0.2px;
        }
        .product-card .body .price-row {
            display: flex;
            align-items: baseline;
            gap: 10px;
            margin-top: 2px;
        }
        .product-card .body .price {
            font-weight: 800;
            font-size: 19px;
            color: var(--primary);
            letter-spacing: -0.5px;
        }
        .product-card .body .old-price {
            color: var(--muted-light);
            text-decoration: line-through;
            font-size: 13.5px;
            font-weight: 500;
        }
        .product-card .body .rating {
            display: flex;
            align-items: center;
            gap: 5px;
            font-size: 12.5px;
            color: #f5a623;
            margin-top: 1px;
        }
        .product-card .body .rating span { color: var(--muted-light); font-weight: 500; }
        .product-card .footer { padding: 0 20px 20px; }
        .product-card .footer .add-btn {
            width: 100%;
            padding: 12px;
            border-radius: var(--radius-sm);
            background: var(--primary);
            color: #fff;
            font-weight: 700;
            font-size: 14px;
            transition: var(--transition-fast);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 9px;
        }
        .product-card .footer .add-btn:hover {
            background: linear-gradient(135deg, var(--accent) 0%, var(--accent-2) 100%);
            transform: translateY(-1px);
            box-shadow: var(--shadow-accent);
        }
        .product-card .footer .add-btn.added { background: var(--success); }

        /* ========== DEAL ========== */
        .deal-wrap {
            display: flex;
            gap: 0;
            background: linear-gradient(135deg, #16162a 0%, #26263f 100%);
            border-radius: 28px;
            overflow: hidden;
            box-shadow: var(--shadow-lg);
            position: relative;
            isolation: isolate;
        }
        .deal-wrap::before {
            content: '';
            position: absolute;
            bottom: -40%;
            left: 25%;
            width: 520px;
            height: 520px;
            background: radial-gradient(circle, rgba(255,107,74,0.28) 0%, transparent 65%);
            z-index: -1;
        }
        .deal-wrap .deal-img {
            flex: 0 0 46%;
            background: var(--surface);
            min-height: 340px;
            position: relative;
            overflow: hidden;
        }
        .deal-wrap .deal-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.7s cubic-bezier(0.34, 1.2, 0.64, 1);
        }
        .deal-wrap:hover .deal-img img { transform: scale(1.04); }
        .deal-wrap .deal-content {
            flex: 1;
            padding: 44px 48px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            color: #fff;
        }
        .deal-wrap .deal-content .tag {
            display: inline-flex;
            align-items: center;
            gap: 7px;
            background: linear-gradient(135deg, var(--accent) 0%, var(--accent-2) 100%);
            color: #fff;
            padding: 6px 16px;
            border-radius: 999px;
            font-size: 11px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 0.8px;
            align-self: flex-start;
            margin-bottom: 16px;
            box-shadow: var(--shadow-accent);
        }
        .deal-wrap .deal-content h3 {
            font-family: 'Playfair Display', serif;
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 8px;
            letter-spacing: -0.6px;
        }
        .deal-wrap .deal-content .desc {
            color: rgba(255,255,255,0.65);
            margin-bottom: 18px;
            font-size: 15px;
            line-height: 1.6;
            max-width: 400px;
        }
        .deal-wrap .deal-content .price-big {
            font-size: 36px;
            font-weight: 800;
            letter-spacing: -1.5px;
            background: linear-gradient(120deg, #fff 0%, #ffb59f 100%);
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        .deal-wrap .deal-content .price-big .old {
            font-size: 19px;
            font-weight: 500;
            color: rgba(255,255,255,0.4);
            text-decoration: line-through;
            margin-left: 12px;
            -webkit-text-fill-color: rgba(255,255,255,0.4);
        }
        .deal-wrap .deal-content .stock {
            font-size: 13.5px;
            color: rgba(255,255,255,0.65);
            margin: 6px 0 18px;
        }
        .deal-wrap .deal-content .stock strong { color: var(--accent-2); font-weight: 800; }

        .timer-grid {
            display: flex;
            gap: 12px;
            margin: 8px 0 24px;
        }
        .timer-box {
            background: rgba(255,255,255,0.07);
            border: 1px solid rgba(255,255,255,0.12);
            color: #fff;
            padding: 12px 16px;
            border-radius: var(--radius-sm);
            min-width: 74px;
            text-align: center;
            backdrop-filter: blur(8px);
            transition: var(--transition-fast);
        }
        .timer-box:hover { background: rgba(255,107,74,0.18); border-color: rgba(255,107,74,0.35); }
        .timer-box .num {
            font-size: 27px;
            font-weight: 800;
            line-height: 1.15;
            font-variant-numeric: tabular-nums;
            letter-spacing: -0.5px;
        }
        .timer-box .label {
            font-size: 10px;
            opacity: 0.6;
            text-transform: uppercase;
            letter-spacing: 1px;
            font-weight: 600;
        }
        .deal-wrap .deal-content .btn { align-self: flex-start; }

        /* ========== TESTIMONIALS ========== */
        .testimonials-scroll {
            display: flex;
            gap: 20px;
            overflow-x: auto;
            padding: 8px 4px 20px;
            scroll-snap-type: x mandatory;
            -webkit-overflow-scrolling: touch;
        }
        .testimonials-scroll::-webkit-scrollbar { height: 5px; }
        .testimonials-scroll::-webkit-scrollbar-track { background: transparent; }
        .testimonials-scroll::-webkit-scrollbar-thumb {
            background: linear-gradient(90deg, var(--accent-light), var(--accent));
            border-radius: 999px;
        }
        .testimonial-card {
            flex: 0 0 360px;
            background: var(--bg-card);
            border-radius: var(--radius);
            padding: 28px 30px;
            box-shadow: var(--shadow-sm);
            scroll-snap-align: start;
            transition: var(--transition);
            border: 1.5px solid rgba(22,22,42,0.05);
            position: relative;
        }
        .testimonial-card::before {
            content: '\201C';
            position: absolute;
            top: 10px;
            right: 26px;
            font-family: 'Playfair Display', serif;
            font-size: 72px;
            line-height: 1;
            color: var(--accent-light);
            opacity: 0.7;
            pointer-events: none;
        }
        .testimonial-card:hover {
            box-shadow: var(--shadow-lg);
            transform: translateY(-4px);
            border-color: rgba(255,107,74,0.18);
        }
        .testimonial-card .stars {
            color: var(--warning);
            font-size: 15px;
            letter-spacing: 2.5px;
            margin-bottom: 14px;
        }
        .testimonial-card blockquote {
            font-size: 15px;
            line-height: 1.65;
            color: var(--primary);
            margin-bottom: 20px;
            font-style: italic;
            position: relative;
            z-index: 1;
        }
        .testimonial-card .author { display: flex; align-items: center; gap: 13px; }
        .testimonial-card .author .avatar {
            width: 46px;
            height: 46px;
            border-radius: 50%;
            object-fit: cover;
            background: var(--surface);
            border
