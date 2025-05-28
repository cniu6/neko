#!/bin/bash

# 这个脚本启动Google Chrome并最大程度地减少UI元素
# 你可以根据需要注释掉不需要的参数

# 启动Chrome，并隐藏所有UI元素
exec google-chrome \
  --app=https://search.ee.st \      # 以应用模式启动，不显示标签栏和地址栏
  --disable-features=TranslateUI,ImprovedCookieControls,LazyFrameLoading,GlobalMediaControls,DestroyProfileOnBrowserClose,MediaRouter,DialMediaRouteProvider,AcceptCHFrame,AutoupgradeMixedContent,IsolateOrigins,SameSiteByDefaultCookies,CookiesWithoutSameSiteMustBeSecure,SameSiteDefaultCheckCookies,TabHoverCardImages,TabHoverCards,TabGroups,WebUIDarkMode,MuteNotificationBlockquotes,HomepagePromoCard,NewTabPageModules,ProcessPerSiteUpToMainFrameThreshold,PullToRefresh \
                                    # 禁用各种功能特性
  --disable-component-update \      # 禁用组件更新
  --disable-domain-reliability \    # 禁用域名可靠性监控
  --disable-breakpad \              # 禁用崩溃报告
  --disable-client-side-phishing-detection \ # 禁用客户端钓鱼检测
  --disable-default-apps \          # 禁用默认应用
  --disable-device-discovery-notifications \ # 禁用设备发现通知
  --disable-dinosaur-easter-egg \   # 禁用恐龙小游戏
  --disable-hang-monitor \          # 禁用挂起监控
  --disable-help-bubbles \          # 禁用帮助气泡
  --disable-infobars \              # 禁用信息栏
  --disable-notifications \         # 禁用通知
  --disable-offer-store-unmasked-wallet-cards \ # 禁用存储钱包卡片选项
  --disable-offer-upload-credit-cards \ # 禁用上传信用卡选项
  --disable-office-editing-component \ # 禁用Office编辑组件
  --disable-password-generation \   # 禁用密码生成
  --disable-popup-blocking \        # 禁用弹窗阻止
  --disable-print-preview \         # 禁用打印预览
  --disable-prompt-on-repost \      # 禁用重新提交表单时的提示
  --disable-speech-api \            # 禁用语音API
  --disable-sync \                  # 禁用同步
  --disable-tab-for-desktop-share \ # 禁用桌面共享标签
  --disable-tab-switcher \          # 禁用标签切换器
  --disable-translate \             # 禁用翻译
  --disable-voice-input \           # 禁用语音输入
  --disable-wake-on-wifi \          # 禁用WiFi唤醒
  --disable-web-security \          # 禁用Web安全策略
  --disable-webgl \                 # 禁用WebGL
  --hide-scrollbars \               # 隐藏滚动条
  --ignore-gpu-blacklist \          # 忽略GPU黑名单
  --in-process-gpu \                # GPU在进程内运行
  --kiosk \                         # 全屏展示模式，无界面元素
  --metrics-recording-only \        # 仅记录指标
  --mute-audio \                    # 默认静音
  --no-crash-upload \               # 不上传崩溃报告
  --no-default-browser-check \      # 不检查默认浏览器
  --no-experiments \                # 不运行实验
  --no-first-run \                  # 不显示首次运行对话框
  --no-network-profile-warning \    # 不显示网络配置文件警告
  --no-pings \                      # 禁用ping请求
  --no-proxy-server \               # 不使用代理服务器
  --no-referrers \                  # 不发送引用来源
  --no-report-upload \              # 不上传报告
  --no-sandbox \                    # 不使用沙盒模式（注意：降低安全性）
  --no-service-autorun \            # 服务不自动运行
  --noerrdialogs \                  # 不显示错误对话框
  --password-store=basic \          # 使用基本密码存储
  --process-per-site \              # 每个站点一个进程
  --reduce-security-for-testing \   # 为测试降低安全级别（注意：降低安全性）
  --safebrowsing-disable-auto-update \ # 禁用安全浏览自动更新
  --silent-debugger-extension-api \ # 静默调试器扩展API
  --simulate-outdated-no-au='Tue, 31 Dec 2099 23:59:59 GMT' \ # 模拟过期无自动更新
  --single-process \                # 单进程模式
  --start-maximized \               # 启动时最大化
  --touch-events=disabled \         # 禁用触摸事件
  --ui-disable-partial-swap \       # 禁用UI部分交换
  --use-mobile-user-agent \         # 使用移动用户代理
  --window-position=0,0 \           # 窗口位置
  --window-size=1920,1080 \         # 窗口大小
  --enable-features=OverlayScrollbar \ # 启用叠加滚动条
  --force-dark-mode \               # 强制暗色模式
  --disable-extensions \            # 禁用所有扩展（可选，如果你想要使用uBlock等扩展，请注释此行）
  --autoplay-policy=user-gesture-required # 要求用户手势才能自动播放媒体

# 提示：你可以根据需要启用或禁用上述任何选项
# 如果某些功能你想保留，只需在对应行前添加 # 注释即可 