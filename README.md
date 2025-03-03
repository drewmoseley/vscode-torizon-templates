# VS Code Torizon Templates

This repository maintains the templates used in conjunction with the [VS Code Torizon Integrated Development Environment Extension](https://developer.toradex.com/torizon/application-development/ide-extension/). Focusing in the VS Code for automation between the development environment for remote debug, remote deploy of containerized applications for Toradex TorizonCore easy-to-use Industrial Linux Software Platform.

## Toradex Supported Templates

> ℹ️ **Toradex Supported Templates** are templates with development stacks commonly used by customers of the Torizon platform and are maintained by the Torizon team at Toradex.

> ⚠️ Support for **x86-64** architectures are experimental.

| TEMPLATE | DESCRIPTION | RUNTIME | LANGUAGE | HW ARCH | FOLDER |
| -------- | ----------- | ------- | -------- | ------- | ------ |
| ![](https://raw.githubusercontent.com/toradex/vscode-torizon-templates-documentation/refs/heads/main/thumbnails/cppconsole.png?raw=true) | C++ Makefile Console Application | libc | C++ | <img src="assets/img/arm32.png" width=70 /> <img src="assets/img/arm64.png" width=70 />  | [cppConsole](./cppConsole) |
| ![](https://raw.githubusercontent.com/toradex/vscode-torizon-templates-documentation/refs/heads/main/thumbnails/cmakeconsole.png?raw=true) | C++ CMake Console Application | libc | C++ | <img src="assets/img/arm32.png" width=70 /> <img src="assets/img/arm64.png" width=70 /> | [cmakeConsole](./cmakeConsole) |
| ![](https://raw.githubusercontent.com/toradex/vscode-torizon-templates-documentation/refs/heads/main/thumbnails/qt6qml.png?raw=true) | C++ Qt 6 QML Application | Qt 6 | C++ / QML | <img src="assets/img/arm32.png" width=70 /> <img src="assets/img/arm64.png" width=70 />   | [cppQML](./cppQML) |
| ![](https://raw.githubusercontent.com/toradex/vscode-torizon-templates-documentation/refs/heads/main/thumbnails/dotnetconsole.png?raw=true) | .NET 8 C# Console Application | .NET 8.0 | C# | <img src="assets/img/arm32.png" width=70 /> <img src="assets/img/arm64.png" width=70 />   | [dotnetConsole](./dotnetConsole) |
| ![](https://raw.githubusercontent.com/toradex/vscode-torizon-templates-documentation/refs/heads/main/thumbnails/aspnetblazor.png?raw=true) | ASP.NET 8 Blazor Application | ASP.NET 8.0 | C# | <img src="assets/img/arm32.png" width=70 /> <img src="assets/img/arm64.png" width=70 />   | [aspnetBlazor](./aspnetBlazor) |
| ![](https://raw.githubusercontent.com/toradex/vscode-torizon-templates-documentation/refs/heads/main/thumbnails/python3console.png?raw=true) | Python 3 Console Application | Python 3 | Python 3 | <img src="assets/img/arm32.png" width=70 /> <img src="assets/img/arm64.png" width=70 /> | [python3Console](./python3Console) |
| ![](https://raw.githubusercontent.com/toradex/vscode-torizon-templates-documentation/refs/heads/main/thumbnails/avaloniagtk.png?raw=true) | .NET 8 C# Avalonia GTK MVVM | .NET 8.0 | C# | <img src="assets/img/arm32.png" width=70 /> <img src="assets/img/arm64.png" width=70 /> <img src="assets/img/x8664.png" width=70 /> | [dotnetAvalonia](./dotnetAvalonia) |
| ![](https://raw.githubusercontent.com/toradex/vscode-torizon-templates-documentation/refs/heads/main/thumbnails/avaloniafbdrm.png?raw=true) | .NET 8 C# Avalonia Frame Buffer DRM | .NET 8.0 | C# | <img src="assets/img/arm32.png" width=70 /> <img src="assets/img/arm64.png" width=70 /> <img src="assets/img/x8664.png" width=70 /> | [dotnetAvaloniaFrameBuffer](./dotnetAvaloniaFrameBuffer) |
| ![](https://raw.githubusercontent.com/toradex/vscode-torizon-templates-documentation/refs/heads/main/thumbnails/genericTemplate.png?raw=true) | Generic Template (Without Language) | None | None | <img src="assets/img/arm32.png" width=70 /> <img src="assets/img/arm64.png" width=70 /> <img src="assets/img/x8664.png" width=70 /> | [genericTemplate](./genericTemplate) |

# Partner Templates

Partner templates are contributions that come from [Toradex partner network](https://www.toradex.com/support/partner-network) associates:

| TEMPLATE | DESCRIPTION | RUNTIME | LANGUAGE | HW ARCH | FOLDER |
| -------- | ----------- | ------- | -------- | ------- | ------ |
| ![](https://raw.githubusercontent.com/toradex/vscode-torizon-templates-documentation/refs/heads/main/thumbnails/slint-cpp.png?raw=true) | C++ Slint Application | Slint 1.0 | C++ | <img src="assets/img/arm32.png" width=70 /></br><img src="assets/img/arm64.png" width=70 /></br> <img src="assets/img/x8664.png" width=70 /> | [cppSlint](./cppSlint) |
| ![](https://raw.githubusercontent.com/toradex/vscode-torizon-templates-documentation/refs/heads/main/thumbnails/slint-rust.png?raw=true) | Rust Slint Application | Slint 1.0 | Rust | <img src="assets/img/arm32.png" width=70 /></br><img src="assets/img/arm64.png" width=70 /></br><img src="assets/img/x8664.png" width=70 /> | [rustSlint](./rustSlint) |
| ![](https://github.com/toradex/vscode-torizon-templates-documentation/blob/main/thumbnails/lvgl.png?raw=true) | C LVGL Application | cmake | C | <img src="assets/img/arm32.png" width=70 /></br><img src="assets/img/arm64.png" width=70 /></br><img src="assets/img/x8664.png" width=70 /> | [cLvgl](./cLvgl) |

# Contributing

We encourage you to also contribute templates. The community supported templates can also be used in the [VS Code Torizon Integrated Development Environment Extension](https://developer.toradex.com/torizon/application-development/ide-extension/):

* [Code of Conduct](./CODE_OF_CONDUCT.md)
* [How to Contribute](./CONTRIBUTING.md)

## Community Supported Templates

> ⚠️ **Community Supported Templates** are templates with emerging development stacks or unstable technology stacks and are maintained by the Torizon community.

| TEMPLATE | DESCRIPTION | RUNTIME | LANGUAGE | HW ARCH | FOLDER | CONTRIBUTOR |
| -------- | ----------- | ------- | -------- | ------- | ------ | ----------- |
| ![](https://raw.githubusercontent.com/toradex/vscode-torizon-templates-documentation/refs/heads/main/thumbnails/zig-console.png?raw=true) | Zig Console Application | no-libc | Zig | <img src="assets/img/arm32.png" width=70 /> <img src="assets/img/arm64.png" width=70 /> | [zigConsole](./zigConsole) | ![](https://avatars.githubusercontent.com/u/6756180?v=4&s=64) [@kassane](https://www.github.com/kassane) |
| ![](https://raw.githubusercontent.com/toradex/vscode-torizon-templates-documentation/refs/heads/main/thumbnails/nodejsts.png?raw=true) | Node.js TypeScript Application | Node.js | TypeScript | <img src="assets/img/arm32.png" width=70 /> <img src="assets/img/arm64.png" width=70 /> <img src="assets/img/x8664.png" width=70 />| [nodeJSTypeScript](./nodeJSTypeScript) | ![](https://avatars.githubusercontent.com/u/142019321?v=4&s=64) [@torizon](https://www.github.com/torizon) |
| ![](https://raw.githubusercontent.com/toradex/vscode-torizon-templates-documentation/refs/heads/main/thumbnails/gtk3.png?raw=true) | CMake C++ GTK 3 | GTK 3 | C++ | ![](assets/img/arm32.png?raw=true&id=2) ![](assets/img/arm64.png?raw=true&id=2) | [cmakeGTK3](./cmakeGTK3) | ![](https://avatars.githubusercontent.com/u/142019321?v=4&s=64) [@torizon](https://www.github.com/torizon) |
| ![](https://raw.githubusercontent.com/toradex/vscode-torizon-templates-documentation/refs/heads/main/thumbnails/gtk3.png?raw=true) | CMake C++ GTK 4 | GTK 4 | C++ | ![](assets/img/arm32.png?raw=true&id=2) ![](assets/img/arm64.png?raw=true&id=2) | [cmakeGTK4](./cmakeGTK4) | ![](https://avatars.githubusercontent.com/u/142019321?v=4&s=64) [@torizon](https://www.github.com/torizon) |


## Templates Status

It's possible to check the current status of a template at the [templates.json](./templates.json) file, in the status property of the respective template.
There, the status can be:

- `ok`: Which means the template is ready to be used on any of SoM, without any major known issues (but not necessarily tested on every SoM). There may still be some minor issue on the template, which can be found in the [issues part of the repository](https://github.com/torizon/vscode-torizon-templates/issues).

- `incomplete`: Which means that the template may have a known issue that affects it's usability for some SoMs. A summarized description of the issue can be found in the `customMessage` property of the template, but also a more detailed description will be at the [issues part of the repository](https://github.com/torizon/vscode-torizon-templates/issues).

- `notok`:  Which means that the template may have an issue that affects it's usability for most or all SoMs, and therefore should not be used or updated to yet. A summarized description of the issue can be found in the `customMessage` property of the template, but also a more detailed description will be at the [issues part of the repository](https://github.com/torizon/vscode-torizon-templates/issues).

Also, the template can be deprecated. In this case, it will be at the [deprecatedTemplates.json](./deprecatedTemplates.json) file, and it's status will be `deprecated`.


# List of Deprecated templates


For list of deprecated templates, with the reason of deprecation and how to proceed with the update of this template, please check the [DEPRECATED.md](./DEPRECATED.md) file.
