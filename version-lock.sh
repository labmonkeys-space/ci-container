#!/usr/bin/env bash
set -u -o pipefail

VCS_SOURCE="$(git remote get-url --push origin)"
VCS_REVISION="$(git describe --always)"
DATE="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
export VCS_SOURCE
export VCS_REVISION
export DATE
export BASE_IMAGE="cimg/base:2022.06-22.04"
export SHELLCHECK_VERSION="0.8.0-2"
export HADOLINT_VERSION="2.10.0"
export GETTEXT_VERSION="0.21-4ubuntu4"

