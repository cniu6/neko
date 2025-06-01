# Chrome 容器配置文件

这是修改过的 Chrome 容器配置文件，基于 neko 项目。

## 主要修改内容

### 1. 默认首页修改
- 将默认首页从 `http://www.google.com` 修改为 `https://search.ee.st`
- 在 `preferences.json` 中修改了 `homepage` 和 `first_run_tabs` 设置

### 2. 禁用默认浏览器提示
- 在 `preferences.json` 中添加了以下配置来禁用"设置Chrome为默认浏览器"的提示：
  - `"check_default_browser": false`
  - `"show_default_browser_prompt": false`
  - `"suppress_first_run_default_browser_prompt": true`
  - `"suppress_default_browser_prompt_for_version": "999.999.999.999"`
- 在 `distribution` 部分设置 `"make_chrome_default": false`

## 文件说明

- `Dockerfile` - 标准版本的 Docker 构建文件
- `Dockerfile.nvidia` - NVIDIA GPU 版本的 Docker 构建文件
- `preferences.json` - Chrome 浏览器偏好设置（主要修改文件）
- `policies.json` - Chrome 企业策略设置
- `supervisord.conf` - 标准版本的 supervisord 配置
- `supervisord.nvidia.conf` - NVIDIA 版本的 supervisord 配置
- `openbox.xml` - Openbox 窗口管理器配置

## 使用方法

1. 将这些文件复制到您的 neko Chrome 容器项目中
2. 构建 Docker 镜像
3. 运行容器后，Chrome 将自动使用 https://search.ee.st 作为首页，并且不会提示设置为默认浏览器

## 注意事项

- 这些配置基于 neko 项目的 Chrome 容器
- 确保您有适当的权限修改这些文件
- 构建容器前请检查所有路径和配置是否正确

---

修改时间：2025年6月1日
