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
```text

## Build

```bash
make build
```text

Or directly:

```bash
dotnet build NFramework.Logging.slnx
```text

## Test

```bash
make test
```text

Or directly:

```bash
dotnet test NFramework.Logging.slnx
```text

## Format

```bash
make format
```text

## Lint

```bash
make lint
```text

## Setup

```bash
make setup
```text
