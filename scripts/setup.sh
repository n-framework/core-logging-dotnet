#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
source "${REPO_ROOT}/packages/acore-scripts/src/logger.sh"

cd "$REPO_ROOT"

acore_log_section "🚀 Setting up development environment..."

# Initialize git submodules
if [ -f ".gitmodules" ]; then
    acore_log_info "Initializing git submodules..."
    git submodule update --init --recursive
fi

# Restore NuGet packages
acore_log_info "Restoring NuGet packages..."
dotnet restore

# Verify .NET SDK
acore_log_info "Verifying .NET SDK..."
dotnet --version

acore_log_success "✅ Setup complete!"
