import csv
import os
import shutil
import platform

# === Configurable Constants ===
CURRENT_WITHDRAWAL_TOTAL = 169938176
NCL_AMOUNT = 350000000

# === Paths ===
base_dir = os.path.dirname(os.path.abspath(__file__))
data_dir = os.path.join(base_dir, "data")
template_dir = os.path.abspath(os.path.join(base_dir, "..", "templates"))
csv_file = os.path.join(data_dir, "tw_batch1.csv")

template_md = os.path.join(template_dir, "tw-rationale.md")
template_jsonld = os.path.join(template_dir, "tw-rationale.jsonld")

# === Read CSV and process each row ===
with open(csv_file, newline='', encoding='utf-8') as f:
  reader = csv.DictReader(f)
  for row in reader:
      ga_number = row["ga_number"].strip()
      ga_id = row["ga_id"].strip()
      ga_name = row["ga_name"].strip()
      ga_amount = int(row["ga_amount"].strip())

      e_amount = CURRENT_WITHDRAWAL_TOTAL + ga_amount
      f_amount = NCL_AMOUNT - e_amount

      folder_name = f"ga{ga_number}"
      folder_path = os.path.abspath(os.path.join(base_dir, "..", folder_name))
      os.makedirs(folder_path, exist_ok=True)

      target_md = os.path.join(folder_path, f"ga{ga_number}-rationale.md")
      target_jsonld = os.path.join(folder_path, f"ga{ga_number}-rationale.jsonld")

      for template, target in [(template_md, target_md), (template_jsonld, target_jsonld)]:
          shutil.copyfile(template, target)

          # Replace placeholders in the copied file
          with open(target, "r", encoding="utf-8") as file:
              content = file.read()

          content = content.replace("ga_id", ga_id)
          content = content.replace("ga_name", ga_name)
          content = content.replace("ga_amount", str(ga_amount))
          content = content.replace("e_amount", str(e_amount))
          content = content.replace("f_amount", str(f_amount))

          with open(target, "w", encoding="utf-8") as file:
              file.write(content)

      print(f"Generated files for ga{ga_number}")
