#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
source "${REPO_ROOT}/packages/acore-scripts/src/logger.sh"

cd "$REPO_ROOT"

acore_log_section "🔨 Building .NET project..."

dotnet build src/NFramework.Logging.Abstractions/NFramework.Logging.Abstractions.csproj
dotnet build src/NFramework.Logging/NFramework.Logging.csproj
dotnet build tests/unit/NFramework.Logging.Abstractions.Tests/NFramework.Logging.Abstractions.Tests.csproj
dotnet build tests/unit/NFramework.Logging.Tests/NFramework.Logging.Tests.csproj

acore_log_success "✨ Build complete!"
