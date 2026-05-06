#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
source "${REPO_ROOT}/packages/acore-scripts/src/logger.sh"

cd "$REPO_ROOT"

acore_log_section "🧪 Running tests..."

dotnet test tests/unit/NFramework.Logging.Abstractions.Tests/NFramework.Logging.Abstractions.Tests.csproj --verbosity normal
dotnet test tests/unit/NFramework.Logging.Tests/NFramework.Logging.Tests.csproj --verbosity normal

acore_log_success "✅ All tests passed!"
