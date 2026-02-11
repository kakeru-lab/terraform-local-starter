[![terraform-ci](https://github.com/kakeru-lab/terraform-local-starter/actions/workflows/ci.yml/badge.svg)](https://github.com/kakeru-lab/terraform-local-starter/actions/workflows/ci.yml)
# terraform-local-starter 

Terraform を **クラウドアカウント不要**で学べる / 試せる / CIまで入ったスターターです。  
オンプレや自PCなど **ローカル環境だけで完結**します。

✅ `init → plan → apply → destroy` の王道フロー  
✅ 変数/出力/フォーマット/バリデーション  
✅ GitHub Actions で自動チェック（PRレビューに強い）  
✅ secrets不要・課金不要

---

## What it creates
- `./build/hello.txt` を Terraform で生成します（local provider）。
- 同時に `./build/metadata.json` も生成して “実運用っぽさ” を少し足します。

---

## Requirements
- Terraform >= 1.5
- macOS / Linux / Windows (WSL2 推奨)

Terraform が無い場合は公式の手順でインストールしてください。

---

## Quick Start (最短)
```bash
terraform init
terraform plan
terraform apply
Local-only Terraform starter (no cloud required).
