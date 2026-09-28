#!/bin/bash
# Point the cask at a published fluidSubtitles release.
# Usage: ./update-cask.sh 1.6.12 /path/to/SHA256SUMS
set -euo pipefail

VERSION="${1:-}"
SUMS="${2:-}"
ROOT="$(cd "$(dirname "$0")" && pwd)"
CASK="${ROOT}/Casks/fluidsubtitles.rb"

if [[ -z "${VERSION}" || -z "${SUMS}" || ! -f "${SUMS}" ]]; then
  echo "Usage: ./update-cask.sh VERSION /path/to/SHA256SUMS" >&2
  exit 1
fi

SHA="$(awk -v name="fluidsubtitles-${VERSION}.zip" '$2 == name { print $1 }' "${SUMS}")"
if [[ -z "${SHA}" ]]; then
  echo "No sha256 for fluidsubtitles-${VERSION}.zip in ${SUMS}" >&2
  exit 1
fi

perl -i -pe "s/version \".*\"/version \"${VERSION}\"/" "${CASK}"
perl -i -pe "s/sha256 \".*\"/sha256 \"${SHA}\"/" "${CASK}"
echo "Cask now points at ${VERSION} ${SHA}"
