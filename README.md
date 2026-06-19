# NFramework.Logging

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)

Logging abstractions and implementation for NFramework. Application and domain code depends only on the abstractions; concrete logging libraries stay isolated behind adapters.

## Structure

```text
src/
├── NFramework.Logging.Abstractions/    - Logging abstractions and interfaces
│   └── NFramework.Logging.Abstractions.csproj
└── NFramework.Logging/                 - Logging implementation
    └── NFramework.Logging.csproj
tests/
└── unit/
    ├── NFramework.Logging.Abstractions.Tests/    - Unit tests for abstractions
    │   └── NFramework.Logging.Abstractions.Tests.csproj
    └── NFramework.Logging.Tests/                 - Unit tests for implementation
        └── NFramework.Logging.Tests.csproj
```

## Build

```bash
make build
```

Or directly:

```bash
dotnet build NFramework.Logging.slnx
```

## Test

```bash
make test
```

Or directly:

```bash
dotnet test NFramework.Logging.slnx
```

## Format & Lint

```bash
make format
make lint
```

## Setup

```bash
make setup
```

---

## License

This project is licensed under the **Apache License 2.0** - see the [LICENSE](LICENSE) file for details.
