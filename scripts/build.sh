#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
source "${REPO_ROOT}/packages/acore-scripts/src/logger.sh"

cd "$REPO_ROOT"

acore_log_section "🔨 Building .NET project..."

dotnet build NFramework.Logging.slnx

acore_log_success "✨ Build complete!"
