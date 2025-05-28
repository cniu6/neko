# Chrome 无UI配置指南

本配置使用 preferences.json 和 policies.json 等配置文件最大程度地隐藏 Chrome 浏览器的UI元素，而不依赖于启动脚本。

## 配置文件说明

### 1. 主要配置文件

- **preferences.json** - 用户偏好设置，控制UI显示、功能启用等
- **policies.json** - 管理员策略，强制执行UI和功能限制
- **custom_styles.css** - 自定义CSS样式，进一步隐藏界面元素

### 2. 可选启动文件

- **chrome-kiosk.bat** - Windows环境下的最小参数启动脚本

## 安装方法

### Windows 环境

1. 将 `preferences.json` 复制到用户数据目录:
   ```
   %LOCALAPPDATA%\Google\Chrome\User Data\Default\Preferences
   ```

2. 将 `policies.json` 复制到策略目录:
   ```
   C:\Program Files\Google\Chrome\Application\policies\managed
   ```
   如果目录不存在，请手动创建。

3. 将 `custom_styles.css` 复制到样式目录:
   ```
   %LOCALAPPDATA%\Google\Chrome\User Data\Default\User StyleSheets\Custom.css
   ```
   如果目录不存在，请手动创建。

### Linux 环境

1. 将 `preferences.json` 复制到用户数据目录:
   ```
   ~/.config/google-chrome/Default/Preferences
   ```

2. 将 `policies.json` 复制到策略目录:
   ```
   /etc/opt/chrome/policies/managed/
   ```

3. 将 `custom_styles.css` 复制到样式目录:
   ```
   ~/.config/google-chrome/Default/User StyleSheets/Custom.css
   ```

### Docker 环境

如果在Docker容器中使用，请确保将这些文件映射到容器内的相应位置。

## 启动Chrome

大多数UI设置可以通过配置文件控制，但某些功能（如全屏模式）仍需要命令行参数。最简单的启动方式是：

```
chrome --app=https://search.ee.st --kiosk
```

这将以应用模式启动Chrome并全屏显示。

## 已禁用的功能列表

- 所有通知和提示
- 工具栏和地址栏
- 书签栏和标签栏
- 翻译功能
- 自动播放媒体
- 各种弹窗和对话框
- 安全浏览
- 新标签页的大多数元素

## 已启用的功能列表

- 表单自动填充功能
- 密码管理功能
- "请勿跟踪"设置
- 允许第三方Cookie

## 注意事项

1. 部分功能可能仍需要命令行参数
2. 更新Chrome版本后可能需要重新应用配置
3. 某些网站可能不兼容所有限制
4. 如果需要禁用某些功能，可以在配置文件中进行相应修改 