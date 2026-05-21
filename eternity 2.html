<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ETERNITY — Investigação</title>
<style>
  :root {
    --bg: #070b14;
    --bg2: #0d1220;
    --bg3: #111827;
    --accent: #00d4ff;
    --accent2: #7c3aed;
    --accent3: #f43f5e;
    --gold: #f59e0b;
    --text: #e2e8f0;
    --text2: #94a3b8;
    --border: #1e293b;
    --card: #0f172a;
    --success: #10b981;
    --danger: #ef4444;
    --glow: 0 0 20px rgba(0,212,255,0.3);
    --glow2: 0 0 20px rgba(124,58,237,0.3);
  }
  * { margin:0; padding:0; box-sizing:border-box; }
  html { scroll-behavior: smooth; }
  body {
    font-family: 'Segoe UI', system-ui, sans-serif;
    background: var(--bg);
    color: var(--text);
    min-height: 100vh;
    overflow-x: hidden;
  }

  /* ===== PARTICLES ===== */
  #particles {
    position: fixed; top:0; left:0; width:100%; height:100%;
    pointer-events: none; z-index: 0; overflow: hidden;
  }
  .particle {
    position: absolute;
    width: 2px; height: 2px;
    background: var(--accent);
    border-radius: 50%;
    animation: floatUp linear infinite;
    opacity: 0;
  }
  @keyframes floatUp {
    0%   { transform: translateY(100vh) translateX(0); opacity:0; }
    10%  { opacity: 0.6; }
    90%  { opacity: 0.3; }
    100% { transform: translateY(-10vh) translateX(40px); opacity:0; }
  }

  /* ===== NAVBAR ===== */
  nav {
    position: fixed; top:0; width:100%; z-index:1000;
    background: rgba(7,11,20,0.92);
    backdrop-filter: blur(20px);
    border-bottom: 1px solid rgba(0,212,255,0.15);
    padding: 0 2rem;
    display: flex; align-items: center; justify-content: space-between;
    height: 64px;
    box-shadow: 0 4px 30px rgba(0,0,0,0.5);
  }
  .nav-logo {
    font-size: 1.5rem; font-weight: 900; letter-spacing: 4px;
    background: linear-gradient(135deg, var(--accent), var(--accent2));
    -webkit-background-clip: text; -webkit-text-fill-color: transparent;
    text-transform: uppercase; cursor: pointer;
    filter: drop-shadow(0 0 8px rgba(0,212,255,0.4));
  }
  .nav-links {
    display: flex; gap: 0.25rem; list-style: none;
  }
  .nav-links a {
    padding: 0.4rem 0.9rem;
    border-radius: 6px;
    color: var(--text2);
    text-decoration: none;
    font-size: 0.85rem;
    font-weight: 500;
    letter-spacing: 1px;
    text-transform: uppercase;
    transition: all 0.25s;
    border: 1px solid transparent;
  }
  .nav-links a:hover, .nav-links a.active {
    color: var(--accent);
    border-color: rgba(0,212,255,0.3);
    background: rgba(0,212,255,0.07);
    box-shadow: var(--glow);
  }
  .nav-admin-btn {
    background: linear-gradient(135deg, var(--accent2), #4c1d95);
    color: #fff !important;
    border-color: transparent !important;
    padding: 0.4rem 1rem !important;
  }
  .nav-admin-btn:hover {
    box-shadow: var(--glow2) !important;
    transform: translateY(-1px);
  }
  .hamburger {
    display: none; flex-direction: column; gap: 5px;
    background: none; border: none; cursor: pointer; padding: 4px;
  }
  .hamburger span {
    display: block; width: 24px; height: 2px;
    background: var(--accent); border-radius: 2px;
    transition: all 0.3s;
  }
  .mobile-menu {
    display: none; position: fixed; top: 64px; left: 0; right: 0;
    background: rgba(7,11,20,0.98); backdrop-filter: blur(20px);
    border-bottom: 1px solid rgba(0,212,255,0.15);
    padding: 1rem; z-index: 999; flex-direction: column; gap: 0.5rem;
  }
  .mobile-menu.open { display: flex; }
  .mobile-menu a {
    padding: 0.75rem 1rem; border-radius: 8px; color: var(--text2);
    text-decoration: none; font-size: 0.9rem; font-weight: 600;
    letter-spacing: 1px; text-transform: uppercase;
    border: 1px solid transparent; transition: all 0.2s;
  }
  .mobile-menu a:hover, .mobile-menu a.active {
    color: var(--accent); border-color: rgba(0,212,255,0.3);
    background: rgba(0,212,255,0.07);
  }
  .mobile-menu .nav-admin-btn {
    background: linear-gradient(135deg, var(--accent2), #4c1d95) !important;
    color: #fff !important; border-color: transparent !important;
  }
  @media(max-width: 860px) {
    .nav-links { display: none; }
    .hamburger { display: flex; }
  }

  /* ===== SECTIONS ===== */
  section { display: none; padding-top: 64px; min-height: 100vh; position: relative; z-index:1; }
  section.active { display: block; }

  /* ===== HERO ===== */
  #home {
    display: flex; flex-direction: column; align-items: center;
    justify-content: center; text-align: center;
    padding: 64px 2rem 4rem;
    background: radial-gradient(ellipse at 50% 0%, rgba(0,212,255,0.08) 0%, transparent 60%),
                radial-gradient(ellipse at 80% 80%, rgba(124,58,237,0.07) 0%, transparent 50%);
  }
  #home.active { display: flex; }
  .hero-badge {
    display: inline-flex; align-items: center; gap: 0.5rem;
    padding: 0.35rem 1rem;
    border: 1px solid rgba(0,212,255,0.3);
    border-radius: 999px;
    background: rgba(0,212,255,0.05);
    color: var(--accent); font-size: 0.75rem; font-weight: 600;
    letter-spacing: 3px; text-transform: uppercase;
    margin-bottom: 2rem;
    animation: pulse-border 3s ease infinite;
  }
  @keyframes pulse-border {
    0%,100% { box-shadow: 0 0 0 0 rgba(0,212,255,0.2); }
    50%      { box-shadow: 0 0 0 8px rgba(0,212,255,0); }
  }
  .hero-title {
    font-size: clamp(3rem, 8vw, 6rem);
    font-weight: 900;
    letter-spacing: 8px;
    line-height: 1;
    margin-bottom: 1.5rem;
    text-transform: uppercase;
    background: linear-gradient(135deg, #fff 0%, var(--accent) 50%, var(--accent2) 100%);
    -webkit-background-clip: text; -webkit-text-fill-color: transparent;
    filter: drop-shadow(0 0 30px rgba(0,212,255,0.3));
    animation: titleReveal 1s ease forwards;
  }
  @keyframes titleReveal {
    from { opacity:0; transform: translateY(30px); }
    to   { opacity:1; transform: translateY(0); }
  }
  .hero-sub {
    font-size: 1.1rem; color: var(--text2); max-width: 550px;
    line-height: 1.8; margin-bottom: 3rem; animation: titleReveal 1s 0.3s ease both;
  }
  .hero-stats {
    display: flex; gap: 3rem; animation: titleReveal 1s 0.5s ease both;
  }
  .stat { text-align: center; }
  .stat-num { font-size: 2rem; font-weight: 800; color: var(--accent); }
  .stat-label { font-size: 0.7rem; text-transform: uppercase; letter-spacing: 2px; color: var(--text2); }
  .hero-scan-line {
    position: absolute; top:0; left:0; width:100%; height:2px;
    background: linear-gradient(90deg, transparent, var(--accent), transparent);
    animation: scanLine 4s linear infinite; opacity: 0.5;
  }
  @keyframes scanLine {
    from { transform: translateY(0); }
    to   { transform: translateY(100vh); }
  }

  /* ===== CONTAINER ===== */
  .container { max-width: 1100px; margin: 0 auto; padding: 3rem 2rem; }
  .section-header {
    text-align: center; margin-bottom: 3rem;
  }
  .section-tag {
    display: inline-block; font-size: 0.7rem; letter-spacing: 4px;
    text-transform: uppercase; color: var(--accent); font-weight: 700;
    margin-bottom: 0.75rem;
  }
  .section-title {
    font-size: 2.5rem; font-weight: 800;
    background: linear-gradient(135deg, #fff, var(--accent));
    -webkit-background-clip: text; -webkit-text-fill-color: transparent;
    margin-bottom: 1rem;
  }
  .section-desc { color: var(--text2); max-width: 500px; margin: 0 auto; line-height: 1.7; }

  /* ===== CARDS ===== */
  .grid-3 { display: grid; grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); gap: 1.5rem; }
  .grid-2 { display: grid; grid-template-columns: repeat(auto-fill, minmax(400px, 1fr)); gap: 1.5rem; }
  .card {
    background: var(--card);
    border: 1px solid var(--border);
    border-radius: 16px;
    padding: 1.75rem;
    transition: all 0.3s;
    position: relative; overflow: hidden;
  }
  .card::before {
    content: '';
    position: absolute; top:-1px; left:20px; right:20px; height:1px;
    background: linear-gradient(90deg, transparent, var(--accent), transparent);
    opacity: 0; transition: opacity 0.3s;
  }
  .card:hover { transform: translateY(-4px); border-color: rgba(0,212,255,0.2); box-shadow: var(--glow); }
  .card:hover::before { opacity: 1; }

  /* ===== MEMBERS ===== */
  .member-avatar {
    width: 72px; height: 72px; border-radius: 50%;
    background: linear-gradient(135deg, var(--accent2), var(--accent));
    display: flex; align-items: center; justify-content: center;
    font-size: 1.5rem; font-weight: 800; color: #fff;
    margin-bottom: 1rem;
    box-shadow: 0 0 20px rgba(124,58,237,0.4);
  }
  .member-name { font-size: 1.1rem; font-weight: 700; margin-bottom: 0.25rem; }
  .member-role {
    font-size: 0.75rem; text-transform: uppercase; letter-spacing: 2px;
    color: var(--accent); font-weight: 600; margin-bottom: 0.75rem;
  }
  .member-bio { font-size: 0.9rem; color: var(--text2); line-height: 1.6; }
  .badge {
    display: inline-block; padding: 0.2rem 0.6rem; border-radius: 999px;
    font-size: 0.7rem; font-weight: 700; text-transform: uppercase; letter-spacing: 1px;
    margin-top: 0.75rem;
  }
  .badge-cyan { background: rgba(0,212,255,0.1); color: var(--accent); border: 1px solid rgba(0,212,255,0.2); }
  .badge-purple { background: rgba(124,58,237,0.1); color: #a78bfa; border: 1px solid rgba(124,58,237,0.2); }
  .badge-gold { background: rgba(245,158,11,0.1); color: var(--gold); border: 1px solid rgba(245,158,11,0.2); }
  .badge-red { background: rgba(244,63,94,0.1); color: var(--accent3); border: 1px solid rgba(244,63,94,0.2); }
  .badge-green { background: rgba(16,185,129,0.1); color: var(--success); border: 1px solid rgba(16,185,129,0.2); }

  /* ===== INVESTIGATION ===== */
  .inv-card { border-left: 3px solid var(--accent2); }
  .inv-status {
    display: flex; align-items: center; gap: 0.5rem;
    font-size: 0.75rem; text-transform: uppercase; letter-spacing: 2px;
    margin-bottom: 0.75rem;
  }
  .status-dot {
    width: 8px; height: 8px; border-radius: 50%;
    animation: blink 2s ease infinite;
  }
  @keyframes blink { 0%,100%{opacity:1} 50%{opacity:0.3} }
  .status-active .status-dot { background: var(--success); box-shadow: 0 0 8px var(--success); }
  .status-closed .status-dot { background: var(--text2); animation: none; }
  .status-pending .status-dot { background: var(--gold); box-shadow: 0 0 8px var(--gold); }
  .inv-title { font-size: 1.1rem; font-weight: 700; margin-bottom: 0.5rem; }
  .inv-desc { font-size: 0.9rem; color: var(--text2); line-height: 1.6; margin-bottom: 1rem; }
  .inv-meta { display: flex; gap: 1rem; flex-wrap: wrap; }
  .inv-meta span { font-size: 0.75rem; color: var(--text2); }
  .inv-meta span b { color: var(--text); }

  /* ===== ABOUT ===== */
  .about-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 3rem; align-items: center; }
  @media(max-width:768px){ .about-grid{grid-template-columns:1fr;} }
  .about-text h2 { font-size: 2rem; font-weight: 800; margin-bottom: 1rem;
    background: linear-gradient(135deg, #fff, var(--accent));
    -webkit-background-clip: text; -webkit-text-fill-color: transparent; }
  .about-text p { color: var(--text2); line-height: 1.8; margin-bottom: 1.25rem; }
  .about-visual {
    background: var(--card); border: 1px solid var(--border); border-radius: 20px;
    padding: 2rem; text-align: center;
    background: radial-gradient(ellipse at center, rgba(0,212,255,0.05), transparent);
  }
  .about-logo-big {
    font-size: 5rem; font-weight: 900; letter-spacing: 8px;
    background: linear-gradient(135deg, var(--accent), var(--accent2));
    -webkit-background-clip: text; -webkit-text-fill-color: transparent;
    filter: drop-shadow(0 0 20px rgba(0,212,255,0.4));
    animation: float 4s ease-in-out infinite;
  }
  @keyframes float { 0%,100%{transform:translateY(0)} 50%{transform:translateY(-12px)} }
  .values-list { list-style: none; margin-top: 1.5rem; }
  .values-list li {
    display: flex; align-items: center; gap: 0.75rem;
    padding: 0.75rem 0; border-bottom: 1px solid var(--border);
    font-size: 0.9rem;
  }
  .values-list li span.ico { color: var(--accent); font-size: 1.1rem; }

  /* ===== COMPLAINT ===== */
  .complaint-form {
    background: var(--card); border: 1px solid var(--border); border-radius: 16px;
    padding: 2.5rem; max-width: 700px; margin: 0 auto;
    position: relative; overflow: hidden;
  }
  .complaint-form::before {
    content: '';
    position: absolute; top:-1px; left:10%; right:10%; height:1px;
    background: linear-gradient(90deg, transparent, var(--accent3), transparent);
  }
  .form-group { margin-bottom: 1.5rem; }
  .form-group label {
    display: block; font-size: 0.8rem; font-weight: 600; text-transform: uppercase;
    letter-spacing: 2px; color: var(--accent); margin-bottom: 0.6rem;
  }
  .form-group input, .form-group textarea, .form-group select {
    width: 100%; background: var(--bg3); border: 1px solid var(--border);
    border-radius: 10px; padding: 0.85rem 1rem; color: var(--text);
    font-size: 0.95rem; transition: all 0.25s; outline: none;
    font-family: inherit;
  }
  .form-group input:focus, .form-group textarea:focus, .form-group select:focus {
    border-color: var(--accent3); box-shadow: 0 0 0 3px rgba(244,63,94,0.1);
  }
  .form-group textarea { resize: vertical; min-height: 140px; }
  .form-group select option { background: var(--bg3); }
  .btn {
    display: inline-flex; align-items: center; gap: 0.5rem;
    padding: 0.85rem 2rem; border-radius: 10px; border: none;
    font-size: 0.9rem; font-weight: 700; letter-spacing: 1px;
    text-transform: uppercase; cursor: pointer; transition: all 0.25s;
  }
  .btn-primary {
    background: linear-gradient(135deg, var(--accent3), #be123c);
    color: #fff; box-shadow: 0 4px 20px rgba(244,63,94,0.3);
  }
  .btn-primary:hover { transform: translateY(-2px); box-shadow: 0 6px 28px rgba(244,63,94,0.5); }
  .btn-cyan {
    background: linear-gradient(135deg, var(--accent), #0284c7);
    color: #000; box-shadow: 0 4px 20px rgba(0,212,255,0.3);
  }
  .btn-cyan:hover { transform: translateY(-2px); box-shadow: 0 6px 28px rgba(0,212,255,0.5); }
  .btn-purple {
    background: linear-gradient(135deg, var(--accent2), #4c1d95);
    color: #fff; box-shadow: 0 4px 20px rgba(124,58,237,0.3);
  }
  .btn-purple:hover { transform: translateY(-2px); box-shadow: 0 6px 28px rgba(124,58,237,0.5); }
  .btn-danger {
    background: linear-gradient(135deg, var(--danger), #991b1b);
    color: #fff;
  }
  .btn-danger:hover { transform: translateY(-2px); }
  .btn-sm { padding: 0.45rem 0.9rem; font-size: 0.75rem; }
  .btn-outline {
    background: transparent; color: var(--text2);
    border: 1px solid var(--border);
  }
  .btn-outline:hover { border-color: var(--accent); color: var(--accent); background: rgba(0,212,255,0.05); }

  .alert {
    padding: 1rem 1.25rem; border-radius: 10px; margin-top: 1rem;
    font-size: 0.9rem; display: none;
    animation: slideIn 0.3s ease;
  }
  @keyframes slideIn { from{transform:translateY(-10px);opacity:0} to{transform:translateY(0);opacity:1} }
  .alert-success { background: rgba(16,185,129,0.1); border: 1px solid rgba(16,185,129,0.3); color: var(--success); }
  .alert-error   { background: rgba(239,68,68,0.1);  border: 1px solid rgba(239,68,68,0.3);  color: var(--danger); }

  /* ===== ADMIN LOGIN ===== */
  #admin { background: radial-gradient(ellipse at center, rgba(124,58,237,0.06), transparent 60%); }
  #admin.active { display: flex; flex-direction: column; align-items: center; justify-content: center; }
  .login-box {
    width: 100%; max-width: 420px;
    background: var(--card); border: 1px solid rgba(124,58,237,0.3);
    border-radius: 20px; padding: 2.5rem;
    box-shadow: 0 0 60px rgba(124,58,237,0.15);
    animation: titleReveal 0.5s ease;
  }
  .login-icon {
    width: 64px; height: 64px; border-radius: 50%;
    background: linear-gradient(135deg, var(--accent2), #4c1d95);
    display: flex; align-items: center; justify-content: center;
    font-size: 1.5rem; margin: 0 auto 1.5rem;
    box-shadow: 0 0 30px rgba(124,58,237,0.4);
  }
  .login-title { text-align: center; font-size: 1.5rem; font-weight: 800; margin-bottom: 0.5rem; }
  .login-sub   { text-align: center; font-size: 0.85rem; color: var(--text2); margin-bottom: 2rem; }
  .login-box .form-group input:focus { border-color: var(--accent2); box-shadow: 0 0 0 3px rgba(124,58,237,0.1); }

  /* ===== ADMIN PANEL ===== */
  #adminPanel { display: none; }
  #adminPanel.active { display: block; }
  .admin-header {
    background: linear-gradient(135deg, rgba(124,58,237,0.15), rgba(0,212,255,0.07));
    border-bottom: 1px solid rgba(124,58,237,0.2);
    padding: 1.5rem 2rem;
    display: flex; align-items: center; justify-content: space-between; flex-wrap: wrap; gap: 1rem;
    margin-top: 64px;
  }
  .admin-title { font-size: 1.4rem; font-weight: 800; }
  .admin-user {
    display: flex; align-items: center; gap: 0.75rem;
    font-size: 0.85rem; color: var(--text2);
  }
  .admin-user .dot {
    width: 8px; height: 8px; border-radius: 50%; background: var(--success);
    box-shadow: 0 0 8px var(--success);
    animation: blink 2s infinite;
  }
  .admin-tabs {
    display: flex; gap: 0.5rem; padding: 1rem 2rem;
    border-bottom: 1px solid var(--border); flex-wrap: wrap;
  }
  .admin-tab {
    padding: 0.5rem 1.25rem; border-radius: 8px; border: 1px solid transparent;
    background: transparent; color: var(--text2); cursor: pointer;
    font-size: 0.85rem; font-weight: 600; transition: all 0.2s;
  }
  .admin-tab.active, .admin-tab:hover {
    background: rgba(124,58,237,0.1); border-color: rgba(124,58,237,0.3); color: #a78bfa;
  }
  .admin-content { padding: 2rem; }
  .admin-section { display: none; }
  .admin-section.active { display: block; }

  /* ===== TABLE ===== */
  .table-wrap { overflow-x: auto; border-radius: 12px; border: 1px solid var(--border); }
  table { width: 100%; border-collapse: collapse; }
  th {
    background: var(--bg3); padding: 0.85rem 1rem; text-align: left;
    font-size: 0.75rem; text-transform: uppercase; letter-spacing: 2px; color: var(--text2);
    border-bottom: 1px solid var(--border);
  }
  td {
    padding: 0.85rem 1rem; font-size: 0.9rem;
    border-bottom: 1px solid rgba(30,41,59,0.5);
  }
  tr:last-child td { border-bottom: none; }
  tr:hover td { background: rgba(255,255,255,0.02); }
  .ip-badge {
    font-family: monospace; font-size: 0.8rem;
    background: rgba(0,212,255,0.1); color: var(--accent);
    padding: 0.2rem 0.6rem; border-radius: 4px;
  }

  /* ===== STATS GRID ===== */
  .stats-grid { display: grid; grid-template-columns: repeat(auto-fill, minmax(200px, 1fr)); gap: 1rem; margin-bottom: 2rem; }
  .stat-card {
    background: var(--card); border: 1px solid var(--border); border-radius: 12px;
    padding: 1.25rem; transition: all 0.3s;
  }
  .stat-card:hover { border-color: rgba(0,212,255,0.2); box-shadow: var(--glow); }
  .stat-card .num { font-size: 2rem; font-weight: 800; color: var(--accent); }
  .stat-card .lbl { font-size: 0.75rem; text-transform: uppercase; letter-spacing: 2px; color: var(--text2); }

  /* ===== MODAL ===== */
  .modal-overlay {
    display: none; position: fixed; inset:0; z-index: 9999;
    background: rgba(0,0,0,0.8); backdrop-filter: blur(8px);
    align-items: center; justify-content: center;
  }
  .modal-overlay.open { display: flex; }
  .modal {
    background: var(--bg2); border: 1px solid rgba(124,58,237,0.3);
    border-radius: 20px; padding: 2rem; width: 100%; max-width: 480px;
    animation: modalIn 0.3s ease;
  }
  @keyframes modalIn { from{transform:scale(0.9);opacity:0} to{transform:scale(1);opacity:1} }
  .modal-header { display: flex; align-items: center; justify-content: space-between; margin-bottom: 1.5rem; }
  .modal-title { font-size: 1.2rem; font-weight: 700; }
  .modal-close { background: none; border: none; color: var(--text2); font-size: 1.5rem; cursor: pointer; }
  .modal-close:hover { color: var(--danger); }

  /* ===== GLITCH ===== */
  .glitch {
    position: relative;
  }
  .glitch::after {
    content: attr(data-text);
    position: absolute; left: 2px; top: 0;
    background: linear-gradient(135deg, var(--accent), var(--accent2));
    -webkit-background-clip: text; -webkit-text-fill-color: transparent;
    clip-path: polygon(0 0, 100% 0, 100% 45%, 0 45%);
    animation: glitch 6s infinite;
    opacity: 0.5;
  }
  @keyframes glitch {
    0%,94%,100% { transform: translate(0); }
    95% { transform: translate(-3px, 1px); }
    97% { transform: translate(3px, -1px); }
    99% { transform: translate(-1px, 2px); }
  }

  /* ===== SCROLLBAR ===== */
  ::-webkit-scrollbar { width: 6px; height: 6px; }
  ::-webkit-scrollbar-track { background: var(--bg); }
  ::-webkit-scrollbar-thumb { background: var(--border); border-radius: 3px; }
  ::-webkit-scrollbar-thumb:hover { background: rgba(0,212,255,0.3); }

  /* ===== FOOTER ===== */
  footer {
    text-align: center; padding: 2rem;
    border-top: 1px solid var(--border);
    color: var(--text2); font-size: 0.8rem;
    position: relative; z-index:1;
  }

  /* ===== RESPONSIVE ===== */
  @media(max-width:640px){
    .nav-links a { padding: 0.35rem 0.5rem; font-size: 0.75rem; letter-spacing: 0; }
    .hero-stats { gap: 1.5rem; }
    .admin-header { padding: 1rem; }
    .admin-content { padding: 1rem; }
  }

  /* ===== TYPING ===== */
  .typing::after { content: '|'; animation: cursor 1s step-end infinite; color: var(--accent); }
  @keyframes cursor { 0%,100%{opacity:1} 50%{opacity:0} }

  /* ===== TIMELINE ===== */
  .timeline { position: relative; padding-left: 2rem; }
  .timeline::before {
    content:''; position: absolute; left: 0; top:0; bottom:0;
    width:2px; background: linear-gradient(to bottom, var(--accent), var(--accent2), transparent);
  }
  .tl-item {
    position: relative; padding: 0 0 2rem 1.5rem;
  }
  .tl-item::before {
    content:''; position: absolute; left:-2rem; top:4px;
    width:12px; height:12px; border-radius:50%;
    background: var(--accent); border: 2px solid var(--bg);
    box-shadow: 0 0 10px var(--accent);
  }
  .tl-date { font-size: 0.75rem; color: var(--accent); font-weight: 600; text-transform: uppercase; letter-spacing: 2px; margin-bottom: 0.4rem; }
  .tl-title { font-weight: 700; margin-bottom: 0.4rem; }
  .tl-desc { font-size: 0.9rem; color: var(--text2); }
</style>
</head>
<body>

<!-- PARTICLES -->
<div id="particles"></div>

<!-- NAVBAR -->
<nav>
  <div class="nav-logo glitch" data-text="ETERNITY" onclick="showSection('home')">ETERNITY</div>
  <ul class="nav-links">
    <li><a href="#" onclick="showSection('home')" id="nav-home" class="active">Início</a></li>
    <li><a href="#" onclick="showSection('members')" id="nav-members">Membros</a></li>
    <li><a href="#" onclick="showSection('investigation')" id="nav-investigation">Investigações</a></li>
    <li><a href="#" onclick="showSection('about')" id="nav-about">Sobre Nós</a></li>
    <li><a href="#" onclick="showSection('complaint')" id="nav-complaint">Denúncias</a></li>
    <li><a href="#" onclick="showSection('admin')" id="nav-admin" class="nav-admin-btn">🛡️ Admin</a></li>
  </ul>
  <button class="hamburger" onclick="toggleMenu()" id="hamburgerBtn">
    <span></span><span></span><span></span>
  </button>
</nav>

<!-- MOBILE MENU -->
<div class="mobile-menu" id="mobileMenu">
  <a href="#" onclick="showSectionMobile('home')">🏠 Início</a>
  <a href="#" onclick="showSectionMobile('members')">👥 Membros</a>
  <a href="#" onclick="showSectionMobile('investigation')">🔍 Investigações</a>
  <a href="#" onclick="showSectionMobile('about')">ℹ️ Sobre Nós</a>
  <a href="#" onclick="showSectionMobile('complaint')">📋 Denúncias</a>
  <a href="#" onclick="showSectionMobile('admin')" class="nav-admin-btn">🛡️ Painel Admin</a>
</div>

<!-- ============================================================ HOME ============================================================ -->
<section id="home" class="active">
  <div class="hero-scan-line"></div>
  <div class="hero-badge">⬡ Organização de Investigação</div>
  <h1 class="hero-title typing" id="heroTitle">ETERNITY</h1>
  <p class="hero-sub">A verdade não se esconde para sempre. Somos a sombra que expõe o que outros preferem manter no escuro.</p>
  <div class="hero-stats">
    <div class="stat">
      <div class="stat-num" id="statCases">--</div>
      <div class="stat-label">Casos</div>
    </div>
    <div class="stat">
      <div class="stat-num" id="statMembers">--</div>
      <div class="stat-label">Membros</div>
    </div>
    <div class="stat">
      <div class="stat-num" id="statReports">--</div>
      <div class="stat-label">Denúncias</div>
    </div>
    <div class="stat">
      <div class="stat-num">100%</div>
      <div class="stat-label">Sigiloso</div>
    </div>
  </div>
</section>

<!-- ============================================================ MEMBERS ============================================================ -->
<section id="members">
  <div class="container">
    <div class="section-header">
      <div class="section-tag">⬡ Nossa Equipe</div>
      <h2 class="section-title">Membros da Eternity</h2>
      <p class="section-desc">Profissionais dedicados à investigação, análise e exposição da verdade.</p>
    </div>
    <div class="grid-3" id="membersGrid">
      <!-- Gerado por JS -->
    </div>
  </div>
</section>

<!-- ============================================================ INVESTIGATION ============================================================ -->
<section id="investigation">
  <div class="container">
    <div class="section-header">
      <div class="section-tag">⬡ Casos</div>
      <h2 class="section-title">Investigações</h2>
      <p class="section-desc">Acompanhe os casos ativos, encerrados e em análise pela equipe Eternity.</p>
    </div>
    <div class="grid-2" id="investigationsGrid">
      <!-- Gerado por JS -->
    </div>
  </div>
</section>

<!-- ============================================================ ABOUT ============================================================ -->
<section id="about">
  <div class="container">
    <div class="about-grid">
      <div class="about-text">
        <h2>Quem Somos</h2>
        <p>A <strong>Eternity</strong> é uma organização independente de investigação digital criada para descobrir a verdade por trás de eventos, denúncias e ocorrências que o sistema prefere ignorar.</p>
        <p>Operamos com total sigilo e profissionalismo. Cada caso é tratado com máxima seriedade, e cada denúncia recebida passa pelo nosso rigoroso processo de análise.</p>
        <p>Nossos operadores são experientes e atuam de forma coordenada para garantir que nenhuma informação se perca e nenhuma verdade fique escondida.</p>
        <ul class="values-list">
          <li><span class="ico">◈</span> Sigilo absoluto das fontes</li>
          <li><span class="ico">◈</span> Investigação baseada em evidências</li>
          <li><span class="ico">◈</span> Transparência interna</li>
          <li><span class="ico">◈</span> Justiça sem fronteiras</li>
          <li><span class="ico">◈</span> Proteção das vítimas</li>
        </ul>
      </div>
      <div class="about-visual">
        <div class="about-logo-big">ETY</div>
        <p style="color:var(--text2);margin-top:1.5rem;font-size:0.9rem;line-height:1.8">
          "A verdade é a arma mais poderosa.<br>E nós somos seus portadores."
        </p>
        <div style="margin-top:1.5rem;display:flex;gap:0.5rem;flex-wrap:wrap;justify-content:center">
          <span class="badge badge-cyan">Investigação</span>
          <span class="badge badge-purple">Análise</span>
          <span class="badge badge-gold">Exposição</span>
          <span class="badge badge-red">Vigilância</span>
        </div>
        <div style="margin-top:2rem">
          <div class="timeline">
            <div class="tl-item">
              <div class="tl-date">Fundação</div>
              <div class="tl-title">Eternity é criada</div>
              <div class="tl-desc">Início das operações de investigação digital.</div>
            </div>
            <div class="tl-item">
              <div class="tl-date">Expansão</div>
              <div class="tl-title">Equipe ampliada</div>
              <div class="tl-desc">Novos operadores e analistas se juntam à causa.</div>
            </div>
            <div class="tl-item">
              <div class="tl-date">Hoje</div>
              <div class="tl-title">Operação contínua</div>
              <div class="tl-desc">Casos ativos e denúncias em análise diariamente.</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ============================================================ COMPLAINT ============================================================ -->
<section id="complaint">
  <div class="container">
    <div class="section-header">
      <div class="section-tag">⬡ Fale Conosco</div>
      <h2 class="section-title">Enviar Denúncia</h2>
      <p class="section-desc">Todas as denúncias são tratadas com absoluto sigilo. Sua identidade está protegida.</p>
    </div>
    <div class="complaint-form">
      <div class="form-group">
        <label>Seu Nome (opcional)</label>
        <input type="text" id="cName" placeholder="Anônimo">
      </div>
      <div class="form-group">
        <label>Categoria da Denúncia</label>
        <select id="cCategory">
          <option value="">Selecione uma categoria...</option>
          <option value="Fraude">Fraude</option>
          <option value="Corrupção">Corrupção</option>
          <option value="Ameaça">Ameaça</option>
          <option value="Abuso de Poder">Abuso de Poder</option>
          <option value="Crime Digital">Crime Digital</option>
          <option value="Outros">Outros</option>
        </select>
      </div>
      <div class="form-group">
        <label>Assunto</label>
        <input type="text" id="cSubject" placeholder="Descreva brevemente o assunto...">
      </div>
      <div class="form-group">
        <label>Descrição Completa</label>
        <textarea id="cMessage" placeholder="Descreva detalhadamente o ocorrido. Inclua datas, locais e envolvidos se possível..."></textarea>
      </div>
      <div class="form-group">
        <label>Evidências (link, se houver)</label>
        <input type="text" id="cEvidence" placeholder="https://...">
      </div>
      <div style="display:flex;align-items:center;gap:0.75rem;margin-bottom:1rem">
        <input type="checkbox" id="cAnon" style="width:auto;accent-color:var(--accent3)">
        <label for="cAnon" style="font-size:0.85rem;color:var(--text2);text-transform:none;letter-spacing:0;margin:0">Quero permanecer totalmente anônimo</label>
      </div>
      <button class="btn btn-primary" onclick="submitComplaint()">🔒 Enviar Denúncia com Segurança</button>
      <div class="alert alert-success" id="complaintSuccess">
        ✅ Denúncia recebida com sucesso! Nossa equipe irá analisar em breve. ID: <strong id="complaintId"></strong>
      </div>
      <div class="alert alert-error" id="complaintError">
        ❌ Preencha os campos obrigatórios (Categoria, Assunto e Descrição).
      </div>
    </div>
  </div>
</section>

<!-- ============================================================ ADMIN LOGIN ============================================================ -->
<section id="admin">
  <div class="login-box">
    <div class="login-icon">🛡️</div>
    <h2 class="login-title">Painel Administrativo</h2>
    <p class="login-sub">Acesso restrito — Eternity Intelligence</p>
    <div class="form-group">
      <label>Usuário</label>
      <input type="text" id="adminUser" placeholder="Digite seu usuário...">
    </div>
    <div class="form-group">
      <label>Senha</label>
      <input type="password" id="adminPass" placeholder="••••••••" onkeydown="if(event.key==='Enter')doLogin()">
    </div>
    <button class="btn btn-purple" style="width:100%" onclick="doLogin()">🔐 Entrar no Painel</button>
    <div class="alert alert-error" id="loginError">❌ Credenciais inválidas. Acesso negado.</div>
  </div>
</section>

<!-- ============================================================ ADMIN PANEL ============================================================ -->
<div id="adminPanel">
  <div class="admin-header">
    <div>
      <div class="admin-title">🛡️ Painel de Controle — ETERNITY</div>
      <div style="font-size:0.8rem;color:var(--text2);margin-top:0.25rem">Sistema de Gerenciamento Interno</div>
    </div>
    <div style="display:flex;align-items:center;gap:1rem;flex-wrap:wrap">
      <div class="admin-user">
        <div class="dot"></div>
        <span>Logado como: <strong id="loggedUserName" style="color:var(--accent)"></strong></span>
        <span class="badge badge-purple" id="loggedUserRole" style="margin-left:0.5rem"></span>
      </div>
      <button class="btn btn-outline btn-sm" onclick="doLogout()">Sair</button>
    </div>
  </div>

  <div class="admin-tabs">
    <button class="admin-tab active" onclick="switchAdminTab('dashboard')">📊 Dashboard</button>
    <button class="admin-tab" onclick="switchAdminTab('complaints')">📋 Denúncias</button>
    <button class="admin-tab" id="tabUsers" onclick="switchAdminTab('users')" style="display:none">👥 Gerenciar Usuários</button>
    <button class="admin-tab" onclick="switchAdminTab('members')">🧑‍💼 Membros</button>
    <button class="admin-tab" onclick="switchAdminTab('investigations')">🔍 Investigações</button>
    <button class="admin-tab" onclick="switchAdminTab('database')">🗄️ Banco de Dados</button>
  </div>

  <div class="admin-content">

    <!-- DASHBOARD -->
    <div class="admin-section active" id="adminDashboard">
      <h3 style="margin-bottom:1.5rem;font-size:1.2rem">Visão Geral</h3>
      <div class="stats-grid">
        <div class="stat-card">
          <div class="num" id="dashReports">0</div>
          <div class="lbl">Total Denúncias</div>
        </div>
        <div class="stat-card" style="border-color:rgba(16,185,129,0.2)">
          <div class="num" style="color:var(--success)" id="dashNew">0</div>
          <div class="lbl">Novas Hoje</div>
        </div>
        <div class="stat-card" style="border-color:rgba(124,58,237,0.2)">
          <div class="num" style="color:#a78bfa" id="dashMembers">0</div>
          <div class="lbl">Membros Ativos</div>
        </div>
        <div class="stat-card" style="border-color:rgba(245,158,11,0.2)">
          <div class="num" style="color:var(--gold)" id="dashInv">0</div>
          <div class="lbl">Investigações</div>
        </div>
        <div class="stat-card" style="border-color:rgba(239,68,68,0.2)">
          <div class="num" style="color:var(--danger)" id="dashUsers">0</div>
          <div class="lbl">Admins/Operadores</div>
        </div>
      </div>
      <div class="card" style="margin-top:1rem">
        <div style="font-size:0.85rem;font-weight:700;margin-bottom:1rem;color:var(--accent)">📌 ÚLTIMAS DENÚNCIAS RECEBIDAS</div>
        <div id="recentComplaints" style="font-size:0.9rem;color:var(--text2)">Nenhuma denúncia ainda.</div>
      </div>
    </div>

    <!-- COMPLAINTS -->
    <div class="admin-section" id="adminComplaints">
      <div style="display:flex;align-items:center;justify-content:space-between;margin-bottom:1.5rem;flex-wrap:wrap;gap:1rem">
        <h3 style="font-size:1.2rem">📋 Denúncias Recebidas</h3>
        <button class="btn btn-danger btn-sm" onclick="clearComplaints()">🗑️ Limpar Todas</button>
      </div>
      <div class="table-wrap">
        <table>
          <thead>
            <tr>
              <th>ID</th>
              <th>Data/Hora</th>
              <th>Nome</th>
              <th>Categoria</th>
              <th>Assunto</th>
              <th>Endereço IP</th>
              <th>Status</th>
              <th>Ações</th>
            </tr>
          </thead>
          <tbody id="complaintsTable">
            <tr><td colspan="8" style="color:var(--text2);text-align:center;padding:2rem">Nenhuma denúncia registrada.</td></tr>
          </tbody>
        </table>
      </div>
    </div>

    <!-- USERS (só SuperAdmin) -->
    <div class="admin-section" id="adminUsers">
      <div style="display:flex;align-items:center;justify-content:space-between;margin-bottom:1.5rem;flex-wrap:wrap;gap:1rem">
        <h3 style="font-size:1.2rem">👥 Usuários do Sistema</h3>
        <button class="btn btn-purple btn-sm" onclick="openAddUserModal()">➕ Novo Usuário</button>
      </div>
      <div class="table-wrap">
        <table>
          <thead>
            <tr><th>Usuário</th><th>Cargo</th><th>Criado em</th><th>Criado por</th><th>Ações</th></tr>
          </thead>
          <tbody id="usersTable"></tbody>
        </table>
      </div>
    </div>

    <!-- MEMBERS ADMIN -->
    <div class="admin-section" id="adminMembers">
      <div style="display:flex;align-items:center;justify-content:space-between;margin-bottom:1.5rem;flex-wrap:wrap;gap:1rem">
        <h3 style="font-size:1.2rem">🧑‍💼 Gerenciar Membros</h3>
        <button class="btn btn-cyan btn-sm" onclick="openAddMemberModal()">➕ Novo Membro</button>
      </div>
      <div class="table-wrap">
        <table>
          <thead>
            <tr><th>Nome</th><th>Cargo</th><th>Especialidade</th><th>Ações</th></tr>
          </thead>
          <tbody id="adminMembersTable"></tbody>
        </table>
      </div>
    </div>

    <!-- INVESTIGATIONS ADMIN -->
    <div class="admin-section" id="adminInvestigations">
      <div style="display:flex;align-items:center;justify-content:space-between;margin-bottom:1.5rem;flex-wrap:wrap;gap:1rem">
        <h3 style="font-size:1.2rem">🔍 Gerenciar Investigações</h3>
        <button class="btn btn-cyan btn-sm" onclick="openAddInvModal()">➕ Nova Investigação</button>
      </div>
      <div class="table-wrap">
        <table>
          <thead>
            <tr><th>Código</th><th>Título</th><th>Status</th><th>Prioridade</th><th>Ações</th></tr>
          </thead>
          <tbody id="adminInvTable"></tbody>
        </table>
      </div>
    </div>

    <!-- DATABASE -->
    <div class="admin-section" id="adminDatabase">
      <h3 style="margin-bottom:1.5rem;font-size:1.2rem">🗄️ Banco de Dados — Visão Completa</h3>
      <div class="grid-2" style="margin-bottom:2rem">
        <div class="card">
          <div style="font-size:0.8rem;color:var(--accent);font-weight:700;letter-spacing:2px;text-transform:uppercase;margin-bottom:1rem">TABELA: DENÚNCIAS</div>
          <div id="dbComplaints" style="font-size:0.8rem;font-family:monospace;color:var(--text2);max-height:300px;overflow-y:auto"></div>
        </div>
        <div class="card">
          <div style="font-size:0.8rem;color:var(--accent2);font-weight:700;letter-spacing:2px;text-transform:uppercase;margin-bottom:1rem;color:#a78bfa">TABELA: USUÁRIOS</div>
          <div id="dbUsers" style="font-size:0.8rem;font-family:monospace;color:var(--text2);max-height:300px;overflow-y:auto"></div>
        </div>
        <div class="card">
          <div style="font-size:0.8rem;font-weight:700;letter-spacing:2px;text-transform:uppercase;margin-bottom:1rem;color:var(--gold)">TABELA: MEMBROS</div>
          <div id="dbMembers" style="font-size:0.8rem;font-family:monospace;color:var(--text2);max-height:300px;overflow-y:auto"></div>
        </div>
        <div class="card">
          <div style="font-size:0.8rem;font-weight:700;letter-spacing:2px;text-transform:uppercase;margin-bottom:1rem;color:var(--success)">TABELA: INVESTIGAÇÕES</div>
          <div id="dbInvestigations" style="font-size:0.8rem;font-family:monospace;color:var(--text2);max-height:300px;overflow-y:auto"></div>
        </div>
      </div>
      <div style="display:flex;gap:0.75rem;flex-wrap:wrap">
        <button class="btn btn-danger btn-sm" onclick="exportDB()">⬇️ Exportar JSON</button>
        <button class="btn btn-outline btn-sm" onclick="refreshDB()">🔄 Atualizar</button>
      </div>
    </div>

  </div><!-- end admin-content -->
</div><!-- end adminPanel -->

<!-- ============================================================ MODALS ============================================================ -->

<!-- Add User Modal -->
<div class="modal-overlay" id="modalAddUser">
  <div class="modal">
    <div class="modal-header">
      <div class="modal-title">➕ Criar Novo Usuário</div>
      <button class="modal-close" onclick="closeModal('modalAddUser')">×</button>
    </div>
    <div class="form-group">
      <label>Nome de Usuário</label>
      <input type="text" id="newUserName" placeholder="usuario123">
    </div>
    <div class="form-group">
      <label>Senha</label>
      <input type="password" id="newUserPass" placeholder="••••••••">
    </div>
    <div class="form-group">
      <label>Cargo</label>
      <select id="newUserRole">
        <option value="Operador">Operador</option>
        <option value="Admin">Admin</option>
      </select>
    </div>
    <button class="btn btn-purple" style="width:100%" onclick="createUser()">Criar Usuário</button>
    <div class="alert alert-error" id="userCreateError"></div>
    <div class="alert alert-success" id="userCreateSuccess"></div>
  </div>
</div>

<!-- Add Member Modal -->
<div class="modal-overlay" id="modalAddMember">
  <div class="modal">
    <div class="modal-header">
      <div class="modal-title">➕ Novo Membro</div>
      <button class="modal-close" onclick="closeModal('modalAddMember')">×</button>
    </div>
    <div class="form-group">
      <label>Nome</label>
      <input type="text" id="newMemberName" placeholder="Nome completo">
    </div>
    <div class="form-group">
      <label>Cargo</label>
      <input type="text" id="newMemberRole" placeholder="ex: Analista Senior">
    </div>
    <div class="form-group">
      <label>Especialidade</label>
      <input type="text" id="newMemberSpec" placeholder="ex: OSINT, Forense Digital">
    </div>
    <div class="form-group">
      <label>Bio</label>
      <textarea id="newMemberBio" placeholder="Descrição breve..." style="min-height:80px"></textarea>
    </div>
    <button class="btn btn-cyan" style="width:100%" onclick="createMember()">Adicionar Membro</button>
    <div class="alert alert-success" id="memberCreateSuccess"></div>
  </div>
</div>

<!-- Add Investigation Modal -->
<div class="modal-overlay" id="modalAddInv">
  <div class="modal">
    <div class="modal-header">
      <div class="modal-title">🔍 Nova Investigação</div>
      <button class="modal-close" onclick="closeModal('modalAddInv')">×</button>
    </div>
    <div class="form-group">
      <label>Título</label>
      <input type="text" id="newInvTitle" placeholder="Título da investigação">
    </div>
    <div class="form-group">
      <label>Descrição</label>
      <textarea id="newInvDesc" placeholder="Detalhes..." style="min-height:80px"></textarea>
    </div>
    <div class="form-group">
      <label>Status</label>
      <select id="newInvStatus">
        <option value="active">Ativo</option>
        <option value="pending">Em Análise</option>
        <option value="closed">Encerrado</option>
      </select>
    </div>
    <div class="form-group">
      <label>Prioridade</label>
      <select id="newInvPriority">
        <option value="Alta">Alta</option>
        <option value="Média">Média</option>
        <option value="Baixa">Baixa</option>
      </select>
    </div>
    <button class="btn btn-cyan" style="width:100%" onclick="createInvestigation()">Criar Investigação</button>
    <div class="alert alert-success" id="invCreateSuccess"></div>
  </div>
</div>

<!-- View Complaint Modal -->
<div class="modal-overlay" id="modalViewComplaint">
  <div class="modal" style="max-width:600px">
    <div class="modal-header">
      <div class="modal-title">📋 Detalhes da Denúncia</div>
      <button class="modal-close" onclick="closeModal('modalViewComplaint')">×</button>
    </div>
    <div id="complaintDetail" style="font-size:0.9rem;line-height:2"></div>
  </div>
</div>

<footer>
  <p style="letter-spacing:4px;font-weight:700;color:var(--accent);margin-bottom:0.5rem">ETERNITY</p>
  <p>© 2025 Eternity Intelligence — Todos os direitos reservados.</p>
  <p style="margin-top:0.5rem;font-size:0.75rem;color:rgba(148,163,184,0.4)">Operação sigilosa. Acesso monitorado.</p>
</footer>

<script>
// ================================================================
//   DATABASE (localStorage)
// ================================================================
const DB = {
  get: (key, def=[]) => { try { return JSON.parse(localStorage.getItem('ety_'+key)) || def; } catch{ return def; } },
  set: (key, val) => localStorage.setItem('ety_'+key, JSON.stringify(val)),
  push: (key, item, def=[]) => {
    const arr = DB.get(key, def); arr.push(item); DB.set(key, arr); return arr;
  }
};

// ================================================================
//   INIT DATA
// ================================================================
function initDB(){
  // Super admin
  if(!DB.get('users',[]).length){
    DB.set('users',[{
      id:'u1', username:'newox', password:'adm', role:'SuperAdmin',
      createdAt: new Date().toISOString(), createdBy:'Sistema'
    }]);
  }
  // Default members
  if(!DB.get('members',[]).length){
    DB.set('members',[
      {id:'m1',name:'Newox',role:'Diretor Geral',spec:'Estratégia & Comando',bio:'Fundador e líder máximo da organização Eternity. Supervisiona todas as operações.',color:'cyan'},
      {id:'m2',name:'Shadow',role:'Analista Sênior',spec:'OSINT & Inteligência',bio:'Especialista em coleta de informações abertas e análise de dados digitais.',color:'purple'},
      {id:'m3',name:'Cipher',role:'Investigador de Campo',spec:'Forense Digital',bio:'Especializado em análise forense e rastreamento de atividades suspeitas.',color:'gold'},
      {id:'m4',name:'Phantom',role:'Operador Técnico',spec:'Segurança Cibernética',bio:'Responsável pela infraestrutura e segurança dos sistemas internos.',color:'red'},
    ]);
  }
  // Default investigations
  if(!DB.get('investigations',[]).length){
    DB.set('investigations',[
      {id:'inv001',title:'Operação Eclipse',desc:'Investigação sobre rede de fraudes financeiras em plataformas digitais.',status:'active',priority:'Alta',date:'2025-01-10',agent:'Shadow'},
      {id:'inv002',title:'Caso Phantom Net',desc:'Análise de grupo especializado em ataques a infraestruturas críticas.',status:'active',priority:'Alta',date:'2025-02-03',agent:'Cipher'},
      {id:'inv003',title:'Projeto Silêncio',desc:'Monitoramento de operações de desinformação coordenada em redes sociais.',status:'pending',priority:'Média',date:'2025-03-15',agent:'Phantom'},
      {id:'inv004',title:'Dossiê Fantasma',desc:'Rastreamento de identidades falsas utilizadas em esquemas de golpes.',status:'closed',priority:'Baixa',date:'2024-11-22',agent:'Shadow'},
    ]);
  }
}

// ================================================================
//   NAVIGATION
// ================================================================
let currentSection = 'home';
function showSection(id){
  document.querySelectorAll('section').forEach(s=>s.classList.remove('active'));
  document.querySelectorAll('.nav-links a').forEach(a=>a.classList.remove('active'));
  document.getElementById('adminPanel').classList.remove('active');

  const el = document.getElementById(id);
  if(el){ el.classList.add('active'); }
  const nav = document.getElementById('nav-'+id);
  if(nav){ nav.classList.add('active'); }
  currentSection = id;

  if(id==='members') renderMembers();
  if(id==='investigation') renderInvestigations();
  updateStats();
}

// ================================================================
//   PARTICLES
// ================================================================
function initParticles(){
  const c = document.getElementById('particles');
  for(let i=0;i<60;i++){
    const p = document.createElement('div');
    p.className = 'particle';
    p.style.left = Math.random()*100+'%';
    p.style.animationDuration = (8+Math.random()*15)+'s';
    p.style.animationDelay = (Math.random()*15)+'s';
    p.style.width = p.style.height = (Math.random()<0.3?3:2)+'px';
    if(Math.random()>0.7) p.style.background = '#7c3aed';
    c.appendChild(p);
  }
}

// ================================================================
//   STATS
// ================================================================
function updateStats(){
  const complaints = DB.get('complaints',[]);
  const members    = DB.get('members',[]);
  const invs       = DB.get('investigations',[]);

  animateNum('statCases',   invs.length);
  animateNum('statMembers', members.length);
  animateNum('statReports', complaints.length);
}
function animateNum(id, target){
  const el = document.getElementById(id);
  if(!el) return;
  let cur=0; const step=Math.max(1,Math.floor(target/30));
  const t=setInterval(()=>{ cur=Math.min(cur+step,target); el.textContent=cur; if(cur>=target)clearInterval(t); },50);
}

// ================================================================
//   RENDER MEMBERS
// ================================================================
function renderMembers(){
  const grid = document.getElementById('membersGrid');
  const members = DB.get('members',[]);
  grid.innerHTML = members.map(m=>`
    <div class="card" style="animation:titleReveal 0.5s ease">
      <div class="member-avatar" style="background:linear-gradient(135deg,${m.color==='purple'?'#7c3aed,#4c1d95':m.color==='gold'?'#f59e0b,#b45309':m.color==='red'?'#f43f5e,#be123c':'#00d4ff,#0284c7'})">
        ${m.name[0]}
      </div>
      <div class="member-name">${m.name}</div>
      <div class="member-role">${m.role}</div>
      <div class="member-bio">${m.bio}</div>
      <span class="badge badge-${m.color||'cyan'}">${m.spec}</span>
    </div>
  `).join('') || '<p style="color:var(--text2)">Nenhum membro cadastrado.</p>';
}

// ================================================================
//   RENDER INVESTIGATIONS
// ================================================================
function renderInvestigations(){
  const grid = document.getElementById('investigationsGrid');
  const invs = DB.get('investigations',[]);
  grid.innerHTML = invs.map(inv=>`
    <div class="card inv-card" style="animation:titleReveal 0.5s ease">
      <div class="inv-status status-${inv.status}">
        <div class="status-dot"></div>
        <span style="color:var(--text2)">${inv.status==='active'?'ATIVO':inv.status==='pending'?'EM ANÁLISE':'ENCERRADO'}</span>
      </div>
      <div class="inv-title">${inv.title}</div>
      <div class="inv-desc">${inv.desc}</div>
      <div class="inv-meta">
        <span>Código: <b>${inv.id.toUpperCase()}</b></span>
        <span>Prioridade: <b style="color:${inv.priority==='Alta'?'var(--accent3)':inv.priority==='Média'?'var(--gold)':'var(--success)'}">${inv.priority}</b></span>
        <span>Agente: <b>${inv.agent||'—'}</b></span>
        <span>Data: <b>${inv.date||'—'}</b></span>
      </div>
    </div>
  `).join('') || '<p style="color:var(--text2)">Nenhuma investigação cadastrada.</p>';
}

// ================================================================
//   COMPLAINT SUBMISSION
// ================================================================
async function submitComplaint(){
  const cat   = document.getElementById('cCategory').value;
  const subj  = document.getElementById('cSubject').value.trim();
  const msg   = document.getElementById('cMessage').value.trim();
  const name  = document.getElementById('cName').value.trim() || 'Anônimo';
  const ev    = document.getElementById('cEvidence').value.trim();

  document.getElementById('complaintSuccess').style.display='none';
  document.getElementById('complaintError').style.display='none';

  if(!cat||!subj||!msg){
    document.getElementById('complaintError').style.display='block'; return;
  }

  // Capturar IP do denunciante
  let ip = 'Coletando...';
  try {
    const r = await fetch('https://api.ipify.org?format=json');
    const d = await r.json();
    ip = d.ip;
  } catch(e){ ip = 'Não disponível'; }

  const id = 'DEN-'+Date.now();
  const complaint = {
    id, name, category:cat, subject:subj, message:msg,
    evidence:ev, ip,
    timestamp: new Date().toLocaleString('pt-BR'),
    status: 'Novo',
    anon: document.getElementById('cAnon').checked
  };

  DB.push('complaints', complaint);
  document.getElementById('complaintId').textContent = id;
  document.getElementById('complaintSuccess').style.display='block';

  // Reset
  ['cName','cSubject','cMessage','cEvidence'].forEach(f=>document.getElementById(f).value='');
  document.getElementById('cCategory').value='';
  document.getElementById('cAnon').checked=false;
  updateStats();
}

// ================================================================
//   ADMIN LOGIN
// ================================================================
let currentUser = null;
function doLogin(){
  const u = document.getElementById('adminUser').value.trim();
  const p = document.getElementById('adminPass').value;
  document.getElementById('loginError').style.display='none';

  const users = DB.get('users',[]);
  const found = users.find(x=>x.username===u && x.password===p);
  if(!found){ document.getElementById('loginError').style.display='block'; return; }

  currentUser = found;
  document.getElementById('admin').classList.remove('active');
  document.getElementById('adminPanel').classList.add('active');
  document.getElementById('loggedUserName').textContent = found.username;
  document.getElementById('loggedUserRole').textContent = found.role;

  // Mostrar aba de usuários apenas para SuperAdmin
  document.getElementById('tabUsers').style.display = (found.role==='SuperAdmin'?'block':'none');

  switchAdminTab('dashboard');
  refreshDashboard();
}
function doLogout(){
  currentUser = null;
  document.getElementById('adminPanel').classList.remove('active');
  showSection('admin');
  document.getElementById('adminUser').value='';
  document.getElementById('adminPass').value='';
}

// ================================================================
//   ADMIN TABS
// ================================================================
function switchAdminTab(tab){
  document.querySelectorAll('.admin-tab').forEach(t=>t.classList.remove('active'));
  document.querySelectorAll('.admin-section').forEach(s=>s.classList.remove('active'));
  event && event.target && event.target.classList.add('active');
  document.getElementById('admin'+tab[0].toUpperCase()+tab.slice(1)).classList.add('active');
  if(tab==='complaints')    renderAdminComplaints();
  if(tab==='users')         renderAdminUsers();
  if(tab==='members')       renderAdminMembers();
  if(tab==='investigations')renderAdminInv();
  if(tab==='database')      refreshDB();
  if(tab==='dashboard')     refreshDashboard();
}

// ================================================================
//   DASHBOARD
// ================================================================
function refreshDashboard(){
  const complaints = DB.get('complaints',[]);
  const members    = DB.get('members',[]);
  const invs       = DB.get('investigations',[]);
  const users      = DB.get('users',[]);
  const today = new Date().toLocaleDateString('pt-BR');
  const todayNew = complaints.filter(c=>c.timestamp&&c.timestamp.startsWith(today));

  document.getElementById('dashReports').textContent  = complaints.length;
  document.getElementById('dashNew').textContent      = todayNew.length;
  document.getElementById('dashMembers').textContent  = members.length;
  document.getElementById('dashInv').textContent      = invs.length;
  document.getElementById('dashUsers').textContent    = users.length;

  const recent = complaints.slice(-5).reverse();
  document.getElementById('recentComplaints').innerHTML = recent.length
    ? recent.map(c=>`
      <div style="padding:0.75rem 0;border-bottom:1px solid var(--border);display:flex;gap:1rem;align-items:center;flex-wrap:wrap">
        <span class="badge badge-red">${c.id}</span>
        <span style="flex:1"><b>${c.subject}</b> — ${c.category}</span>
        <span class="ip-badge">${c.ip}</span>
        <span style="font-size:0.75rem;color:var(--text2)">${c.timestamp}</span>
      </div>`).join('')
    : '<p>Nenhuma denúncia registrada ainda.</p>';
}

// ================================================================
//   ADMIN COMPLAINTS
// ================================================================
function renderAdminComplaints(){
  const complaints = DB.get('complaints',[]);
  const tbody = document.getElementById('complaintsTable');
  if(!complaints.length){
    tbody.innerHTML='<tr><td colspan="8" style="color:var(--text2);text-align:center;padding:2rem">Nenhuma denúncia registrada.</td></tr>';
    return;
  }
  tbody.innerHTML = complaints.map((c,i)=>`
    <tr>
      <td><span class="badge badge-red">${c.id}</span></td>
      <td style="font-size:0.8rem;color:var(--text2)">${c.timestamp}</td>
      <td>${c.anon?'<i style="color:var(--text2)">Anônimo</i>':c.name}</td>
      <td><span class="badge badge-cyan">${c.category}</span></td>
      <td style="max-width:200px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap">${c.subject}</td>
      <td><span class="ip-badge">🌐 ${c.ip}</span></td>
      <td><span class="badge ${c.status==='Resolvido'?'badge-green':c.status==='Em Análise'?'badge-gold':'badge-red'}">${c.status}</span></td>
      <td style="display:flex;gap:0.4rem;flex-wrap:wrap">
        <button class="btn btn-outline btn-sm" onclick="viewComplaint(${i})">👁️</button>
        <button class="btn btn-outline btn-sm" onclick="changeStatus(${i})" style="color:var(--gold)">✏️</button>
        <button class="btn btn-danger btn-sm" onclick="deleteComplaint(${i})">🗑️</button>
      </td>
    </tr>
  `).join('');
}
function viewComplaint(i){
  const c = DB.get('complaints',[])[i];
  if(!c) return;
  document.getElementById('complaintDetail').innerHTML = `
    <div style="display:grid;gap:0.75rem">
      <div><b style="color:var(--accent)">ID:</b> ${c.id}</div>
      <div><b style="color:var(--accent)">Data/Hora:</b> ${c.timestamp}</div>
      <div><b style="color:var(--accent)">Denunciante:</b> ${c.anon?'Anônimo':c.name}</div>
      <div><b style="color:var(--accent)">Categoria:</b> ${c.category}</div>
      <div><b style="color:var(--accent)">Assunto:</b> ${c.subject}</div>
      <div><b style="color:var(--accent)">Endereço IP:</b> <span class="ip-badge">🌐 ${c.ip}</span></div>
      <div><b style="color:var(--accent)">Status:</b> ${c.status}</div>
      <div><b style="color:var(--accent)">Descrição:</b><br><span style="color:var(--text2);line-height:1.7">${c.message}</span></div>
      ${c.evidence?`<div><b style="color:var(--accent)">Evidências:</b> <a href="${c.evidence}" target="_blank" style="color:var(--accent)">${c.evidence}</a></div>`:''}
    </div>
  `;
  openModal('modalViewComplaint');
}
function changeStatus(i){
  const complaints = DB.get('complaints',[]);
  const statuses = ['Novo','Em Análise','Resolvido','Arquivado'];
  const cur = complaints[i].status;
  const next = statuses[(statuses.indexOf(cur)+1)%statuses.length];
  complaints[i].status = next;
  DB.set('complaints', complaints);
  renderAdminComplaints();
}
function deleteComplaint(i){
  if(!confirm('Excluir esta denúncia?')) return;
  const complaints = DB.get('complaints',[]);
  complaints.splice(i,1);
  DB.set('complaints', complaints);
  renderAdminComplaints();
}
function clearComplaints(){
  if(!confirm('Limpar TODAS as denúncias? Esta ação não pode ser desfeita.')) return;
  DB.set('complaints',[]);
  renderAdminComplaints();
}

// ================================================================
//   ADMIN USERS
// ================================================================
function renderAdminUsers(){
  const users = DB.get('users',[]);
  const tbody = document.getElementById('usersTable');
  tbody.innerHTML = users.map((u,i)=>`
    <tr>
      <td><b>${u.username}</b></td>
      <td><span class="badge ${u.role==='SuperAdmin'?'badge-gold':u.role==='Admin'?'badge-purple':'badge-cyan'}">${u.role}</span></td>
      <td style="font-size:0.8rem;color:var(--text2)">${new Date(u.createdAt).toLocaleDateString('pt-BR')}</td>
      <td style="font-size:0.8rem;color:var(--text2)">${u.createdBy}</td>
      <td>
        ${u.role==='SuperAdmin'?'<span style="color:var(--text2);font-size:0.8rem">Protegido</span>':`<button class="btn btn-danger btn-sm" onclick="deleteUser(${i})">🗑️ Remover</button>`}
      </td>
    </tr>
  `).join('');
}
function openAddUserModal(){ openModal('modalAddUser'); }
function createUser(){
  const name = document.getElementById('newUserName').value.trim();
  const pass = document.getElementById('newUserPass').value;
  const role = document.getElementById('newUserRole').value;
  const err  = document.getElementById('userCreateError');
  const ok   = document.getElementById('userCreateSuccess');
  err.style.display='none'; ok.style.display='none';

  if(!name||!pass){ err.textContent='Preencha todos os campos.'; err.style.display='block'; return; }
  const users = DB.get('users',[]);
  if(users.find(u=>u.username===name)){
    err.textContent='Este nome de usuário já existe.'; err.style.display='block'; return;
  }
  DB.push('users', {
    id:'u'+Date.now(), username:name, password:pass, role,
    createdAt:new Date().toISOString(), createdBy: currentUser.username
  });
  ok.textContent=`✅ Usuário "${name}" criado com sucesso como ${role}.`;
  ok.style.display='block';
  document.getElementById('newUserName').value='';
  document.getElementById('newUserPass').value='';
  renderAdminUsers();
}
function deleteUser(i){
  if(!confirm('Remover este usuário?')) return;
  const users = DB.get('users',[]);
  if(users[i].role==='SuperAdmin'){ alert('Não é possível remover o SuperAdmin.'); return; }
  users.splice(i,1);
  DB.set('users', users);
  renderAdminUsers();
}

// ================================================================
//   ADMIN MEMBERS
// ================================================================
function renderAdminMembers(){
  const members = DB.get('members',[]);
  const tbody = document.getElementById('adminMembersTable');
  tbody.innerHTML = members.map((m,i)=>`
    <tr>
      <td><b>${m.name}</b></td>
      <td>${m.role}</td>
      <td><span class="badge badge-cyan">${m.spec}</span></td>
      <td><button class="btn btn-danger btn-sm" onclick="deleteMember(${i})">🗑️</button></td>
    </tr>
  `).join('') || '<tr><td colspan="4" style="color:var(--text2);text-align:center;padding:1.5rem">Nenhum membro.</td></tr>';
}
function openAddMemberModal(){ openModal('modalAddMember'); }
function createMember(){
  const name = document.getElementById('newMemberName').value.trim();
  const role = document.getElementById('newMemberRole').value.trim();
  const spec = document.getElementById('newMemberSpec').value.trim();
  const bio  = document.getElementById('newMemberBio').value.trim();
  if(!name||!role){ return; }
  const colors=['cyan','purple','gold','red','green'];
  DB.push('members',{id:'m'+Date.now(),name,role,spec:spec||'Operador',bio:bio||'Membro da equipe Eternity.',color:colors[Math.floor(Math.random()*colors.length)]});
  document.getElementById('memberCreateSuccess').style.display='block';
  document.getElementById('memberCreateSuccess').textContent='✅ Membro adicionado!';
  ['newMemberName','newMemberRole','newMemberSpec','newMemberBio'].forEach(f=>document.getElementById(f).value='');
  renderAdminMembers();
  setTimeout(()=>document.getElementById('memberCreateSuccess').style.display='none',2000);
}
function deleteMember(i){
  if(!confirm('Remover este membro?')) return;
  const members=DB.get('members',[]); members.splice(i,1); DB.set('members',members); renderAdminMembers();
}

// ================================================================
//   ADMIN INVESTIGATIONS
// ================================================================
function renderAdminInv(){
  const invs = DB.get('investigations',[]);
  const tbody = document.getElementById('adminInvTable');
  tbody.innerHTML = invs.map((inv,i)=>`
    <tr>
      <td style="font-family:monospace;color:var(--accent)">${inv.id.toUpperCase()}</td>
      <td><b>${inv.title}</b></td>
      <td><span class="badge ${inv.status==='active'?'badge-green':inv.status==='pending'?'badge-gold':'badge-cyan'}">${inv.status==='active'?'Ativo':inv.status==='pending'?'Em Análise':'Encerrado'}</span></td>
      <td><span style="color:${inv.priority==='Alta'?'var(--accent3)':inv.priority==='Média'?'var(--gold)':'var(--success)'}">${inv.priority}</span></td>
      <td><button class="btn btn-danger btn-sm" onclick="deleteInv(${i})">🗑️</button></td>
    </tr>
  `).join('') || '<tr><td colspan="5" style="color:var(--text2);text-align:center;padding:1.5rem">Nenhuma investigação.</td></tr>';
}
function openAddInvModal(){ openModal('modalAddInv'); }
function createInvestigation(){
  const title  = document.getElementById('newInvTitle').value.trim();
  const desc   = document.getElementById('newInvDesc').value.trim();
  const status = document.getElementById('newInvStatus').value;
  const prio   = document.getElementById('newInvPriority').value;
  if(!title) return;
  DB.push('investigations',{
    id:'inv'+Date.now(), title, desc:desc||'Sem descrição.', status, priority:prio,
    date:new Date().toLocaleDateString('pt-BR'), agent:currentUser?currentUser.username:'—'
  });
  document.getElementById('invCreateSuccess').style.display='block';
  document.getElementById('invCreateSuccess').textContent='✅ Investigação criada!';
  ['newInvTitle','newInvDesc'].forEach(f=>document.getElementById(f).value='');
  renderAdminInv();
  setTimeout(()=>document.getElementById('invCreateSuccess').style.display='none',2000);
}
function deleteInv(i){
  if(!confirm('Excluir esta investigação?')) return;
  const invs=DB.get('investigations',[]); invs.splice(i,1); DB.set('investigations',invs); renderAdminInv();
}

// ================================================================
//   DATABASE VIEW
// ================================================================
function refreshDB(){
  const fmt = (data) => data.map((r,i)=>`<div style="margin-bottom:0.5rem;padding:0.5rem;background:rgba(255,255,255,0.02);border-radius:4px;border-left:2px solid var(--border)"><b style="color:var(--accent)">[${i}]</b> ${JSON.stringify(r)}</div>`).join('') || '<i>Vazio</i>';
  document.getElementById('dbComplaints').innerHTML    = fmt(DB.get('complaints',[]));
  document.getElementById('dbUsers').innerHTML         = fmt(DB.get('users',[]).map(u=>({...u,password:'[OCULTO]'})));
  document.getElementById('dbMembers').innerHTML       = fmt(DB.get('members',[]));
  document.getElementById('dbInvestigations').innerHTML= fmt(DB.get('investigations',[]));
}
function exportDB(){
  const data = {
    complaints:    DB.get('complaints',[]),
    members:       DB.get('members',[]),
    investigations:DB.get('investigations',[]),
    users:         DB.get('users',[]).map(u=>({...u,password:'[OCULTO]'})),
    exported:      new Date().toISOString()
  };
  const blob = new Blob([JSON.stringify(data,null,2)],{type:'application/json'});
  const a=document.createElement('a'); a.href=URL.createObjectURL(blob);
  a.download='eternity_db_'+Date.now()+'.json'; a.click();
}

// ================================================================
//   MODALS
// ================================================================
function openModal(id){ document.getElementById(id).classList.add('open'); }
function closeModal(id){ document.getElementById(id).classList.remove('open'); }
document.addEventListener('click',e=>{ if(e.target.classList.contains('modal-overlay'))e.target.classList.remove('open'); });

// ================================================================
//   HAMBURGER MENU
// ================================================================
function toggleMenu(){
  const m = document.getElementById('mobileMenu');
  m.classList.toggle('open');
}
function showSectionMobile(id){
  document.getElementById('mobileMenu').classList.remove('open');
  showSection(id);
}

// ================================================================
//   INIT
// ================================================================
initDB();
initParticles();
updateStats();
</script>
</body>
</html>
