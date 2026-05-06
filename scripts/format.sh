#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
source "${REPO_ROOT}/packages/acore-scripts/src/logger.sh"

cd "$REPO_ROOT"

acore_log_section "🎨 Formatting code..."

dotnet format src/NFramework.Logging.Abstractions/NFramework.Logging.Abstractions.csproj
dotnet format src/NFramework.Logging/NFramework.Logging.csproj
dotnet format tests/unit/NFramework.Logging.Abstractions.Tests/NFramework.Logging.Abstractions.Tests.csproj
dotnet format tests/unit/NFramework.Logging.Tests/NFramework.Logging.Tests.csproj

acore_log_success "✅ Formatting complete!"
