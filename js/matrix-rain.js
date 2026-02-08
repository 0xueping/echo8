/**
 * Matrix代码雨背景效果
 * 用于虫洞8°官网黑客帝国风格
 */

class MatrixRain {
    constructor(canvasId) {
        this.canvas = document.getElementById(canvasId);
        if (!this.canvas) return;

        this.ctx = this.canvas.getContext('2d');
        this.characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$%^&*()_+-=[]{}|;:,.<>?';
        this.fontSize = 14;
        this.columns = 0;
        this.drops = [];

        this.init();
    }

    init() {
        // 设置canvas尺寸
        this.canvas.width = window.innerWidth;
        this.canvas.height = window.innerHeight;

        // 计算列数
        this.columns = Math.floor(this.canvas.width / this.fontSize);

        // 初始化每一列的y坐标（从随机位置开始）
        this.drops = [];
        for (let i = 0; i < this.columns; i++) {
            this.drops[i] = Math.random() * -100; // 从屏幕上方不同位置开始
        }

        // 监听窗口大小变化
        window.addEventListener('resize', () => {
            this.canvas.width = window.innerWidth;
            this.canvas.height = window.innerHeight;
            this.columns = Math.floor(this.canvas.width / this.fontSize);
            this.drops = [];
            for (let i = 0; i < this.columns; i++) {
                this.drops[i] = Math.random() * -100;
            }
        });

        // 开始动画
        this.animate();
    }

    draw() {
        // 半透明黑色背景，形成拖尾效果
        this.ctx.fillStyle = 'rgba(10, 10, 15, 0.05)';
        this.ctx.fillRect(0, 0, this.canvas.width, this.canvas.height);

        // 设置字体样式
        this.ctx.fillStyle = '#0F0'; // Matrix绿色
        this.ctx.font = this.fontSize + 'px monospace';

        // 绘制每一列的字符
        for (let i = 0; i < this.drops.length; i++) {
            // 随机字符
            const text = this.characters.charAt(Math.floor(Math.random() * this.characters.length));

            // 绘制字符
            const x = i * this.fontSize;
            const y = this.drops[i] * this.fontSize;

            // 随机亮度（部分字符更亮）
            if (Math.random() > 0.975) {
                this.ctx.fillStyle = '#FFF'; // 白色高亮
            } else if (Math.random() > 0.9) {
                this.ctx.fillStyle = '#0F0'; // 亮绿色
            } else {
                this.ctx.fillStyle = 'rgba(0, 255, 136, 0.3)'; // 暗绿色
            }

            this.ctx.fillText(text, x, y);

            // 字符下落
            if (y > this.canvas.height && Math.random() > 0.975) {
                this.drops[i] = 0;
            }

            this.drops[i]++;
        }
    }

    animate() {
        this.draw();
        requestAnimationFrame(() => this.animate());
    }
}

// 页面加载完成后初始化
document.addEventListener('DOMContentLoaded', () => {
    const matrixCanvas = document.getElementById('matrix-rain');
    if (matrixCanvas) {
        new MatrixRain('matrix-rain');
    }
});
