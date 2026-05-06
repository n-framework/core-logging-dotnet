# NFramework.Logging

Logging abstractions and implementation for NFramework.

## Structure

```text
src/
├── NFramework.Logging.Abstractions/    - Logging abstractions and interfaces
│   └── NFramework.Logging.Abstractions.csproj
└── NFramework.Logging/                - Logging implementation
    └── NFramework.Logging.csproj
tests/
└── unit/
    ├── NFramework.Logging.Abstractions.Tests/    - Unit tests for abstractions
    │   └── NFramework.Logging.Abstractions.Tests.csproj
    └── NFramework.Logging.Tests/                - Unit tests for implementation
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

## Format

```bash
make format
```

## Lint

```bash
make lint
```

## Setup

```bash
make setup
```
