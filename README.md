# Edge0 聊天 Android

一个用于在 Android 手机本地运行 Edge0 35B 的社区聊天客户端。这个版本从 Edge0 35B 的基础上整理，使用本地推理服务，不需要网络和付费。模型权重已公开（可自行下载转换）。
通过MoE混合专家模式，35B参数的语言模型激活仅3B即可在一般手机上适用。

1.0 测试版

建议配置
Android OS 14+
12GB+内存 128G+存储
1~4线程----线程过多可能导致模型回复速度过慢。
## 功能
通过内置网页进行本地推理。建议使用示例APP。
- 支持多行输入、编辑历史消息、重新生成回复和修改上下文。
- 支持流式输出、浅色和深色界面，以及本地对话管理。
- 可调整 CPU 线程和输出长度，查看首段等待时间、总耗时和启动日志。

## 安装与模型

本工程目标为 Android 14 及以上、ARM64。发布 APK 时请注明实际测试的设备和版本。安装后，在模型设置里选择兼容的 Edge0 35B 资产目录。需要时可导入到应用私有目录，导入会另外占用一份模型所需的空间。模型准备见[上游中文说明](https://github.com/Edge0-AI/Edge0/blob/main/README_zh.md)及[推理引擎文档](https://github.com/Edge0-AI/Edge0/tree/main/edge0-infer)。

[Edge0-35B-A3B-preview](https://huggingface.co/Edge0/Edge0-35B-A3B-preview)（35B MoE，最终 约 21GB GGUF）

从 Hugging Face 下载并转换为 GGUF（约 21GB），放到手机 `/sdcard/Download/edge0-assets-35b/`。<br/>转换方法参考 [edge0-infer 文档](https://github.com/Edge0-AI/Edge0/blob/main/edge0-infer/docs/getting-started.md)。
线程数按设备和负载实测。可从 2 线程开始，用相同的代码输入和输出上限比较首段等待与总耗时。（推荐四线程）

## 源码结构

| 路径 | 内容 |
| --- | --- |
| `apktool-project/assets/www/index.html` | 聊天界面、样式和交互 |
| `apktool-project/smali/` | 从 APK 重建的 Android 外壳和引擎桥，供 Apktool 构建 |
| `src/dev/edge0/chat/Edge0Engine.java` | 10.1 的引擎桥 Java 源码 |
| `scripts/build.py` | 使用本地提供的引擎 APK 重建 unsigned APK |

这是 Apktool 重建工程。原 Android 外壳保留为 Smali。仅编辑 Java 文件不会改变 APK，修改引擎桥后需用 D8 生成 DEX，再将对应的 Smali 更新到构建目录。

## 构建与发布

准备 JDK、Python 3、Apktool 2.11.1 和一个本地持有的兼容 APK。下面的脚本只从该 APK 提取 ARM64 引擎。

```sh
python3 scripts/build.py --apktool /path/to/apktool.jar \
  --engine-apk /path/to/edge0-chat.apk --output edge0-chat-unsigned.apk
```

使用 Android SDK 的 zipalign 对齐，再用 apksigner 和自己的密钥签名并验证。签名不同的 APK 无法覆盖现有安装。公开发行前请先完成真机安装、模型加载和连续多轮对话测试。发布页可上传签名后的 APK 和 SHA-256 校验值。

## 来源与授权

[Edge0 上游仓库](https://github.com/Edge0-AI/Edge0)标注 Apache-2.0，并单独列出[模型许可证](https://github.com/Edge0-AI/Edge0/tree/main/licenses/edge0-model)。这些条款不能直接推定适用于用于重建的 9.0 APK 的全部内容。公开上传前，请确认该 APK 的 Android 外壳及资源有再分发授权，确认随 APK 附带的引擎版本与出处，并按适用条款附上许可证和声明。若外壳来源无法确认，请改用上游已明确授权的 Android 工程移植界面与引擎桥。

本整理包未包含原 APK、引擎二进制、模型权重或签名私钥。当前为发布草案。
