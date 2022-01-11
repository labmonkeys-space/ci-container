#!/usr/bin/env bash
set -u -o pipefail

export VCS_SOURCE="$(git remote get-url --push origin)"
export VCS_REVISION="$(git describe --always)"
export BASE_IMAGE="cimg/base:2022.01-20.04"
export SHELLCHECK_VERSION="0.7.0-2build2"
export HADOLINT_VERSION="2.8.0"
export GETTEXT_VERSION="0.19.8.1-10build1"

