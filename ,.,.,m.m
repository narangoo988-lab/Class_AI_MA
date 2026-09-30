<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>혜택온 | 편의점 구독 서비스</title>
    <style>
        /* 기본 스타일 및 초기화 */
        :root {
            --navy: #001f3f;
            --accent: #ff4757;
            --light-bg: #f8f9fa;
            --text-dark: #2f3542;
            --text-light: #ffffff;
        }

        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { 
            font-family: 'Pretendard', -apple-system, sans-serif; 
            line-height: 1.6; 
            color: var(--text-dark); 
            background-color: var(--light-bg);
            word-break: keep-all;
        }

        /* 공통 섹션 */
        section { padding: 60px 20px; max-width: 1200px; margin: 0 auto; }
        .container { width: 100%; }
        .section-title { text-align: center; font-size: 1.8rem; margin-bottom: 40px; color: var(--navy); }

        /* 1. 상단 소개 (Hero Section) */
        header {
            background-color: var(--navy);
            color: var(--text-light);
            padding: 80px 20px;
            text-align: center;
        }
        header h1 { font-size: 2.5rem; margin-bottom: 15px; }
        header p { font-size: 1.1rem; opacity: 0.9; }

        /* 2. 특징 3칸 (Features) */
        .features { display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 20px; }
        .feature-card {
            background: white;
            padding: 30px;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0 4px 15px rgba(0,0,0,0.05);
        }
        .feature-icon { font-size: 3rem; margin-bottom: 15px; display: block; }
        .feature-card h3 { margin-bottom: 10px; font-size: 1.3rem; }

        /* 3. 요금표 (Pricing) */
        .pricing { background-color: #fff; }
        .pricing-grid { 
            display: grid; 
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); 
            gap: 25px; 
        }
        .price-card {
            border: 2px solid #eee;
            padding: 40px 20px;
            border-radius: 20px;
            text-align: center;
            position: relative;
            transition: transform 0.3s;
        }
        .price-card.recommended {
            border-color: var(--accent);
            transform: scale(1.05);
            background-color: #fffafb;
        }
        .recommended-badge {
            position: absolute;
            top: -15px;
            left: 50%;
            transform: translateX(-50%);
            background: var(--accent);
            color: white;
            padding: 5px 15px;
            border-radius: 20px;
            font-size: 0.8rem;
            font-weight: bold;
        }
        .price-card h3 { font-size: 1.5rem; margin-bottom: 15px; }
        .price-value { font-size: 2.2rem; font-weight: bold; color: var(--accent); }
        .price-details { margin: 20px 0; font-size: 0.9rem; color: #666; }

        /* 4. FAQ (Accordion) */
        .faq { max-width: 700px; }
        .faq-item {
            background: white;
            margin-bottom: 10px;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 2px 5px rgba(0,0,0,0.05);
        }
        .faq-question {
            width: 100%;
            padding: 20px;
            text-align: left;
            background: none;
            border: none;
            font-size: 1rem;
            font-weight: bold;
            cursor: pointer;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .faq-answer {
            padding: 0 20px;
            max-height: 0;
            overflow: hidden;
            transition: max-height 0.3s ease, padding 0.3s ease;
            color: #666;
            font-size: 0.95rem;
        }
        .faq-item.active .faq-answer {
            max-height: 200px;
            padding-bottom: 20px;
        }
        .faq-item.active .faq-question span { transform: rotate(180deg); }

        /* 5. 신청 버튼 (CTA Section) */
        .cta-section { text-align: center; padding: 80px 20px; }
        .btn-main {
            display: inline-block;
            background-color: var(--accent);
            color: white;
            padding: 20px 50px;
            border-radius: 50px;
            font-size: 1.4rem;
            font-weight: bold;
            text-decoration: none;
            transition: transform 0.2s;
            cursor: pointer;
            border: none;
        }
        .btn-main:active { transform: scale(0.95); }

        /* 모바일 최적화 */
        @media (max-width: 768px) {
            header h1 { font-size: 2rem; }
            .price-card.recommended { transform: none; margin: 20px 0; }
            .section-title { font-size: 1.5rem; }
        }
    </style>
</head>
<body>

    <!-- 1. 상단 소개 -->
    <header>
        <div class="container">
            <h1>혜택온</h1>
            <p>[원고의 상단 소개 문구를 여기에 입력하세요]</p>
        </div>
    </header>

    <!-- 2. 특징 3칸 -->
    <section id="features">
        <h2 class="section-title">주요 특징</h2>
        <div class="features">
            <div class="feature-card">
                <span class="feature-icon">🎁</span>
                <h3>[특징 1 제목]</h3>
                <p>[특징 1 내용]</p>
            </div>
            <div class="feature-card">
                <span class="feature-icon">⚡</span>
                <h3>[특징 2 제목]</h3>
                <p>[특징 2 내용]</p>
            </div>
            <div class="feature-card">
                <span class="feature-icon">📱</span>
                <h3>[특징 3 제목]</h3>
                <p>[특징 3 내용]</p>
            </div>
        </div>
    </section>

    <!-- 3. 요금표 -->
    <section id="pricing" class="pricing">
        <h2 class="section-title">요금 안내</h2>
        <div class="pricing-grid">
            <div class="price-card">
                <h3>[플랜 A]</h3>
                <div class="price-value">[가격]</div>
                <div class="price-details">[플랜 A 상세 내용]</div>
            </div>
            <div class="price-card recommended">
                <div class="recommended-badge">추천 플랜</div>
                <h3>[플랜 B]</h3>
                <div class="price-value">[가격]</div>
                <div class="price-details">[플랜 B 상세 내용]</div>
            </div>
            <div class="price-card">
                <h3>[플랜 C]</h3>
                <div class="price-value">[가격]</div>
                <div class="price-details">[플랜 C 상세 내용]</div>
            </div>
        </div>
    </section>

    <!-- 4. FAQ -->
    <section id="faq" class="faq">
        <h2 class="section-title">자주 묻는 질문</h2>
        <div class="faq-item">
            <button class="faq-question" onclick="toggleFaq(this)">
                [질문 1] <span>▼</span>
            </button>
            <div class="faq-answer">
                [답변 1]
            </div>
        </div>
        <div class="faq-item">
            <button class="faq-question" onclick="toggleFaq(this)">
                [질문 2] <span>▼</span>
            </button>
            <div class="faq-answer">
                [답변 2]
            </div>
        </div>
    </section>

    <!-- 5. 신청 버튼 -->
    <section class="cta-section">
        <button class="btn-main" onclick="showDemo()">무료체험 신청하기</button>
    </section>

    <script>
        // FAQ 아코디언 기능
        function toggleFaq(element) {
            const item = element.parentElement;
            item.classList.toggle('active');
        }

        // 신청 접수 안내 알림
        function showDemo() {
            alert("신청접수(데모) 안내\n\n현재는 데모 페이지입니다.\n실제 서비스 신청 프로세스로 연결됩니다.");
        }
    </script>

</body>
</html>
