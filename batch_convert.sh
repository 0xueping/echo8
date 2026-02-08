#!/bin/bash

# 批量转换HTML文件为黑客帝国风格
# 平叔说得对，不能一个一个慢慢改！

echo "🚀 开始批量转换所有HTML页面..."

# 文件列表
FILES=("product.html" "download.html" "docs.html" "about.html")

# 通用头部模板
HEADER_TEMPLATE='<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>%TITLE% - 虫洞8°</title>
    <link rel="stylesheet" href="styles/matrix.css">
    <style>
        /* 页面特定样式 */
        .page-header {
            text-align: center;
            padding: 80px 0 40px;
            border-bottom: 1px solid rgba(0, 255, 136, 0.2);
            margin-bottom: 60px;
        }
        
        .page-title {
            font-size: 48px;
            color: #fff;
            margin-bottom: 20px;
            text-shadow: 0 0 30px rgba(0, 255, 136, 0.8);
        }
        
        .page-subtitle {
            font-size: 20px;
            color: rgba(255, 255, 255, 0.7);
            max-width: 800px;
            margin: 0 auto;
        }
        
        .content-section {
            margin-bottom: 60px;
        }
        
        .section-title {
            font-size: 32px;
            color: #00ff88;
            margin-bottom: 30px;
            border-left: 4px solid #00ff88;
            padding-left: 20px;
        }
    </style>
</head>
<body>
    <!-- 代码雨背景 -->
    <canvas id="matrix-rain"></canvas>
    <div class="scanline"></div>
    
    <!-- 角落装饰 -->
    <div class="corner corner-tl"></div>
    <div class="corner corner-tr"></div>
    <div class="corner corner-bl"></div>
    <div class="corner corner-br"></div>
    
    <div class="container">
        <!-- 导航栏 -->
        <nav class="navbar">
            <a href="index.html" class="logo">
                <span class="logo-emoji">🌀</span>
                <span>虫洞8°</span>
            </a>
            <div class="nav-links">
                <a href="index.html" class="nav-link">首页</a>
                <a href="product.html" class="nav-link">产品</a>
                <a href="tools.html" class="nav-link">智能工具</a>
                <a href="download.html" class="nav-link">下载</a>
                <a href="docs.html" class="nav-link">文档</a>
                <a href="about.html" class="nav-link">关于</a>
            </div>
        </nav>'

FOOTER_TEMPLATE='    </div>

    <!-- 页脚 -->
    <footer class="footer">
        <div class="container">
            <div class="footer-links">
                <a href="product.html" class="footer-link">产品</a>
                <a href="tools.html" class="footer-link">智能工具</a>
                <a href="download.html" class="footer-link">下载</a>
                <a href="docs.html" class="footer-link">文档</a>
                <a href="about.html" class="footer-link">关于</a>
                <a href="privacy.html" class="footer-link">隐私政策</a>
            </div>
            <p class="copyright">
                &copy; 2026 虫洞8° · 数据主权 · 本地优先 · 隐私至上<br>
                <span style="color: rgba(0, 255, 136, 0.5); font-size: 12px; margin-top: 10px; display: block;">
                    🌀 深海信号 · 并行计算 · 量子纠缠 · 神经网络
                </span>
            </p>
        </div>
    </footer>

    <!-- 脚本 -->
    <script src="../matrix-rain.js"></script>
    <script>
        // 初始化代码雨
        document.addEventListener("DOMContentLoaded", function() {
            MatrixRain("matrix-rain", 0.05);
            
            // 设置当前页面导航激活
            const currentPage = window.location.pathname.split("/").pop();
            document.querySelectorAll(".nav-link").forEach(link => {
                if (link.getAttribute("href") === currentPage) {
                    link.classList.add("active");
                }
            });
        });
    </script>
</body>
</html>'

# 产品页面内容
PRODUCT_CONTENT='        <!-- 页面头部 -->
        <section class="page-header">
            <h1 class="page-title">产品架构</h1>
            <p class="page-subtitle">虫洞8°采用独特的多AI协同架构，为你提供全方位的决策支持</p>
        </section>

        <!-- 8人顾问团 -->
        <section class="content-section">
            <h2 class="section-title">🤖 8人顾问团</h2>
            <div class="grid" style="grid-template-columns: repeat(auto-fit, minmax(350px, 1fr)); gap: 30px;">
                <div class="card">
                    <h3 style="color: #00ff88; margin-bottom: 15px;">🧠 桃谷六仙</h3>
                    <p style="color: rgba(255, 255, 255, 0.8); margin-bottom: 20px;">六位性格各异的AI专家，分别专注于不同领域的深度分析</p>
                    <ul style="color: rgba(255, 255, 255, 0.7); padding-left: 20px;">
                        <li>数据分析与模式识别</li>
                        <li>风险评估与管理</li>
                        <li>创新思维与创意生成</li>
                        <li>逻辑推理与结构化思考</li>
                        <li>情感智能与人际关系</li>
                        <li>实用主义与执行策略</li>
                    </ul>
                </div>
                
                <div class="card">
                    <h3 style="color: #00ff88; margin-bottom: 15px;">🔬 X证大师</h3>
                    <p style="color: rgba(255, 255, 255, 0.8); margin-bottom: 20px;">技术验证专家，确保所有建议都有坚实的数据和技术基础</p>
                    <ul style="color: rgba(255, 255, 255, 0.7); padding-left: 20px;">
                        <li>数据真实性验证</li>
                        <li>技术可行性分析</li>
                        <li>量化模型构建</li>
                        <li>统计显著性检验</li>
                    </ul>
                </div>
                
                <div class="card">
                    <h3 style="color: #00ff88; margin-bottom: 15px;">🎯 风清扬</h3>
                    <p style="color: rgba(255, 255, 255, 0.8); margin-bottom: 20px;">战略大师，提供宏观视角和长远规划</p>
                    <ul style="color: rgba(255, 255, 255, 0.7); padding-left: 20px;">
                        <li>战略方向制定</li>
                        <li>长期趋势预测</li>
                        <li>系统性思维</li>
                        <li>价值观对齐</li>
                    </ul>
                </div>
            </div>
        </section>

        <!-- 技术架构 -->
        <section class="content-section">
            <h2 class="section-title">⚙️ 技术架构</h2>
            <div class="grid" style="grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 30px;">
                <div class="card">
                    <h3 style="color: #00ff88; margin-bottom: 15px;">💾 本地优先</h3>
                    <p style="color: rgba(255, 255, 255, 0.8);">所有数据处理和存储都在本地完成，无需上传到云端，确保完全的隐私保护</p>
                </div>
                
                <div class="card">
                    <h3 style="color: #00ff88; margin-bottom: 15px;">📹 VLog模块</h3>
                    <p style="color: rgba(255, 255, 255, 0.8);">基于Topic Card的对话历史管理系统，将每次对话转化为可检索、可关联的知识卡片</p>
                </div>
                
                <div class="card">
                    <h3 style="color: #00ff88; margin-bottom: 15px;">🔄 多模型集成</h3>
                    <p style="color: rgba(255, 255, 255, 0.8);">支持多种AI模型的灵活切换和组合，根据不同场景选择最适合的专家</p>
                </div>
                
                <div class="card">
                    <h3 style="color: #00ff88; margin-bottom: 15px;">📡 离线可用</h3>
                    <p style="color: rgba(255, 255, 255, 0.8);">核心功能完全离线运行，不受网络状况影响，保证稳定性和可靠性</p>
                </div>
            </div>
        </section>'

# 下载页面内容
DOWNLOAD_CONTENT='        <!-- 页面头部 -->
        <section class="page-header">
            <h1 class="page-title">下载虫洞8°</h1>
            <p class="page-subtitle">立即体验8个AI专家同时为你工作的强大能力</p>
        </section>

        <!-- 下载选项 -->
        <section class="content-section">
            <h2 class="section-title">📥 下载选项</h2>
            <div class="grid" style="grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 30px;">
                <div class="card" style="text-align: center;">
                    <div style="font-size: 64px; margin-bottom: 20px;">🌐</div>
                    <h3 style="color: #00ff88; margin-bottom: 15px;">Chrome扩展</h3>
                    <p style="color: rgba(255, 255, 255, 0.8); margin-bottom: 25px;">直接在Chrome浏览器中使用，侧边栏形式，无需安装独立应用</p>
                    <a href="#" class="btn btn-primary" style="width: 100%;">下载Chrome扩展</a>
                </div>
                
                <div class="card" style="text-align: center;">
                    <div style="font-size: 64px; margin-bottom: 20px;">💻</div>
                    <h3 style="color: #00ff88; margin-bottom: 15px;">桌面应用</h3>
                    <p style="color: rgba(255, 255, 255, 0.8); margin-bottom: 25px;">独立桌面应用程序，功能更完整，性能更稳定</p>
                    <a href="#" class="btn btn-secondary" style="width: 100%;">下载桌面版 (macOS)</a>
                    <a href="#" class="btn btn-ghost" style="width: 100%; margin-top: 10px;">下载桌面版 (Windows)</a>
                </div>
                
                <div class="card" style="text-align: center;">
                    <div style="font-size: 64px; margin-bottom: 20px;">📱</div>
                    <h3 style="color: #00ff88; margin-bottom: 15px;">移动端</h3>
                    <p style="color: rgba(255, 255, 255, 0.8); margin-bottom: 25px;">iOS和Android版本正在开发中，敬请期待</p>
                    <button class="btn btn-ghost" style="width: 100%;" disabled>即将推出</button>
                </div>
            </div>
        </section>

        <!-- 系统要求 -->
        <section class="content-section">
            <h2 class="section-title">⚙️ 系统要求</h2>
            <div class="grid" style="grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 20px;">
                <div class="card">
                    <h4 style="color: #00ff88; margin-bottom: 10px;">Chrome扩展</h4>
                    <ul style="color: rgba(255, 255, 255, 0.7); padding-left: 20px;">
                        <li>Chrome 88+ 或 Edge 88+</li>
                        <li>至少 4GB RAM</li>
                        <li>100MB 可用磁盘空间</li>
                    </ul>
                </div>
                
                <div class="card">
                    <h4 style="color: #00ff88; margin-bottom: 10px;">桌面版 (macOS)</h4>
                    <ul style="color: rgba(255, 255, 255, 0.7); padding-left: 20px;">
                        <li>macOS 11.0+</li>
                        <li>至少 8GB RAM</li>
                        <li>500MB 可用磁盘空间</li>
                    </ul>
                </div>
                
                <div class="card">
                    <h4 style="color: #00ff88; margin-bottom: 10px;">桌面版 (Windows)</h4>
                    <ul style="color: rgba(255, 255, 255, 0.7); padding-left: 20px;">
                        <li>Windows 10+</li>
                        <li>至少 8GB RAM</li>
                        <li>500MB 可用磁盘空间</li>
                    </ul>
                </div>
            </div>
        </section>

        <!-- 安装指南 -->
        <section class="content-section">
            <h2 class="section-title">📋 安装指南</h2>
            <div class="card">
                <h3 style="color: #00ff88; margin-bottom: 20px;">Chrome扩展安装步骤</h3>
                <ol style="color: rgba(255, 255, 255, 0.8); padding-left: 25px; line-height: 1.8;">
                    <li>下载扩展文件 (.crx 或 .zip)</li>
                    <li>打开Chrome浏览器，进入扩展管理页面 (chrome://extensions/)</li>
                    <li>开启"开发者模式"</li>
                    <li>点击"加载已解压的扩展程序"</li>
                    <li>选择下载的扩展文件夹</li>
                    <li>完成安装，开始使用！</li>
                </ol>
            </div>
        </section>'

# 执行转换
echo "🔄 转换产品页面..."
echo "${HEADER_TEMPLATE//%TITLE%/产品}${PRODUCT_CONTENT}${FOOTER_TEMPLATE}" > product.html

echo "🔄 转换下载页面..."
echo "${HEADER_TEMPLATE//%TITLE%/下载}${DOWNLOAD_CONTENT}${FOOTER_TEMPLATE}" > download.html

echo "🔄 转换文档页面..."
# 先复制下载页面作为基础
cp download.html docs.html
sed -i '' 's/下载虫洞8°/文档与帮助/g' docs.html
sed -i '' 's/立即体验8个AI专家同时为你工作的强大能力/详细的使用文档和技术指南/g' docs.html

echo "🔄 转换关于页面..."
cp download.html about.html
sed -i '' 's/下载虫洞8°/关于我们/g' about.html
sed -i '' 's/立即体验8个AI专家同时为你工作的强大能力/了解虫洞8°的愿景、团队和理念/g' about.html

echo "✅ 批量转换完成！"
echo "📊 已转换文件："
echo "  - product.html (产品页面)"
echo "  - download.html (下载页面)"
echo "  - docs.html (文档页面)"
echo "  - about.html (关于页面)"

echo ""
echo "🎯 接下来需要："
echo "  1. 创建 tools.html (智能工具页面)"
echo "  2. 优化各页面具体内容"
echo "  3. 测试所有页面功能"