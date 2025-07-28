#!/bin/bash

# === Configurable Constants ===
CURRENT_WITHDRAWAL_TOTAL=1500000
NCL_AMOUNT=350000000

# File paths
DATA_FILE="./data/tw_batch1.json"
TEMPLATE_DIR="../templates"
TEMPLATE_MD="tw-rationale.md"
TEMPLATE_JSONLD="tw-rationale.jsonld"

# Cross-platform sed setup
if [[ "$OSTYPE" == "darwin"* ]]; then
  SED_INPLACE=('sed' '-i' '')
else
  SED_INPLACE=('sed' '-i')
fi

# Parse JSON using jq
jq -c '.[]' "$DATA_FILE" | while read -r row; do
  ga_number=$(echo "$row" | jq -r '.ga_number')
  ga_id=$(echo "$row" | jq -r '.ga_id')
  ga_name=$(echo "$row" | jq -r '.ga_name')
  ga_amount=$(echo "$row" | jq -r '.ga_amount')

  e_amount=$((CURRENT_WITHDRAWAL_TOTAL + ga_amount))
  f_amount=$((NCL_AMOUNT - e_amount))

  folder="../ga${ga_number}"
  mkdir -p "$folder"

  file_md="${folder}/ga${ga_number}-rationale.md"
  file_jsonld="${folder}/ga${ga_number}-rationale.jsonld"

  cp "${TEMPLATE_DIR}/${TEMPLATE_MD}" "$file_md"
  cp "${TEMPLATE_DIR}/${TEMPLATE_JSONLD}" "$file_jsonld"

  esc_ga_id=$(printf '%s' "$ga_id" | sed 's/[&|]/\\&/g')
  esc_ga_name=$(printf '%s' "$ga_name" | sed 's/[&|]/\\&/g')

  for file in "$file_md" "$file_jsonld"; do
    if [[ -f "$file" ]]; then
      echo "Updating $file"
      "${SED_INPLACE[@]}" \
        -e "s|ga_id|$esc_ga_id|g" \
        -e "s|ga_name|$esc_ga_name|g" \
        -e "s|ga_amount|$ga_amount|g" \
        -e "s|e_amount|$e_amount|g" \
        -e "s|f_amount|$f_amount|g" \
        "$file"
    fi
  done
done
