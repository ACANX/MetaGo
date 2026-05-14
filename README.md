# MetaGo

Meta Open Source Components - Go Version

[![Go Reference](https://pkg.go.dev/badge/github.com/ACANX/MetaGo.svg)](https://pkg.go.dev/github.com/ACANX/MetaGo)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

这是 [MetaOpen](https://github.com/ACANX/MetaOpen) Java 项目的 Go 语言版本实现。

## 项目结构

```
MetaGo/
├── cmd/                    # 命令行工具
├── internal/               # 内部实现（不对外暴露）
├── pkg/                    # 公共包（对外暴露）
│   ├── base/               # 基础工具包
│   ├── component/          # 组件包
│   ├── model/              # 数据模型包
│   └── sdk/                # SDK包
├── docs/                   # 文档目录
├── go.mod                  # Go模块定义
├── go.sum                  # 依赖校验文件
└── README.md               # 项目说明
```

## 模块说明

- **pkg/base** - 基础工具类和通用功能
- **pkg/component** - 可复用的组件实现
- **pkg/model** - 数据模型定义
- **pkg/sdk** - SDK接口和实现

## 环境要求

- Go 1.21+

## 安装

```bash
go get github.com/ACANX/MetaGo
```

## 开发

```bash
# 克隆仓库
git clone https://github.com/ACANX/MetaGo.git

# 进入项目目录
cd MetaGo

# 下载依赖
go mod download

# 运行测试
go test ./...
```

## Reference

- [MetaOpen (Java Version)](https://github.com/ACANX/MetaOpen)
- [Meta-Open Overview - Sonatype](https://central.sonatype.com/artifact/com.acanx.meta/meta-open/overview)

## License

Apache License 2.0
