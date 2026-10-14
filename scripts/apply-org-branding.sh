#!/usr/bin/env bash
# Sets Syncore-Tech org profile fields and public repo metadata. Needs `gh` with admin:org.
set -euo pipefail
ORG=Syncore-Tech

gh api -X PATCH "orgs/$ORG" \
  -f name='Syncore JSC' \
  -f description='AI integration, AI agents & legacy system modernization for the systems you already run. Innovating your legacy. 🇻🇳' \
  -f blog='https://syncore.vn' \
  -f location='Vietnam' \
  -f email='hello@syncore.vn' >/dev/null

gh repo edit "$ORG/oxto-swims" \
  --homepage 'https://syncore.vn/en?utm_source=github&utm_medium=repo&utm_campaign=oxto-swims' \
  --add-topic ai-agents --add-topic claude-code --add-topic notifications \
  --add-topic developer-tools --add-topic desktop-overlay --add-topic cli

gh repo edit "$ORG/.github" \
  --description 'Syncore org profile: AI integration, AI agents and legacy modernization. syncore.vn' \
  --homepage 'https://syncore.vn' \
  --add-topic syncore --add-topic ai-integration --add-topic ai-agents --add-topic vietnam

echo "Done. Pin repos and upload the org avatar by hand (no API for either)."
