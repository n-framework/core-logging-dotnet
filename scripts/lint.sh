#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
source "${REPO_ROOT}/packages/acore-scripts/src/logger.sh"

cd "$REPO_ROOT"

acore_log_section "🔍 Running linter..."

dotnet format --verify-no-changes src/NFramework.Logging.Abstractions/NFramework.Logging.Abstractions.csproj || (acore_log_error "❌ Formatting issues found in Abstractions" && exit 1)
dotnet format --verify-no-changes src/NFramework.Logging/NFramework.Logging.csproj || (acore_log_error "❌ Formatting issues found in Logging" && exit 1)
dotnet format --verify-no-changes tests/unit/NFramework.Logging.Abstractions.Tests/NFramework.Logging.Abstractions.Tests.csproj || (acore_log_error "❌ Formatting issues found in Abstractions.Tests" && exit 1)
dotnet format --verify-no-changes tests/unit/NFramework.Logging.Tests/NFramework.Logging.Tests.csproj || (acore_log_error "❌ Formatting issues found in Logging.Tests" && exit 1)

acore_log_success "✅ Linting complete!"
