[![terraform-ci](https://github.com/kakeru-lab/terraform-local-starter/actions/workflows/ci.yml/badge.svg)](https://github.com/kakeru-lab/terraform-local-starter/actions/workflows/ci.yml)
# terraform-local-starter 
## Terraformとは

Terraform は **Infrastructure as Code (IaC)** のツールで、インフラや外部サービスの設定を **宣言的（desired state）** にコードで表現し、実環境との差分を計算して反映します。  
コードは主に **HCL（HashiCorp Configuration Language）** で書き、`plan` で変更差分、`apply` で反映、`destroy` で削除まで同じ操作体系で扱えます。

> Terraformは「手順を書くツール」ではなく、「**あるべき最終状態**を定義し、実環境との差分を解決するツール」です（宣言的）。

---

## 何ができるか

Terraformでできることは大きく3つです。

1. **リソースの作成/変更/削除を自動化**
   - 例：VM、ネットワーク、DNS、ロードバランサ、Kubernetes、SaaS設定、ローカルファイルなど
2. **環境差分の可視化（plan）**
   - 「何が」「どの順番で」「どう変わるか」を実行前に確認でき、レビューに向きます
3. **再現性のある環境構築**
   - 同じコードから同じ構成を作れる（Dev/Stg/Prodの揃えやすさ）

> Terraformはクラウド専用ではなく、Providerがあればオンプレ・SaaS・ローカルも扱えます（このリポは `local` Providerでローカル完結）。

---

## どう動くか（実行モデル）

Terraformは実行時に以下を行います。

- **Configuration（.tf）**：理想状態を記述
- **State（tfstate）**：現在の状態を記録（差分計算の基準）
- **Provider**：対象システム（AWS/GCP/K8s/Local等）と通信してCRUDするプラグイン
- **Plan**：理想と現状の差分を計算
- **Apply**：差分を順序どおりに反映

Stateは重要で、**個人利用ならローカル、チームならリモートバックエンド（例：S3/GCS等）**で安全に共有します。

---

## 得意なこと / 苦手なこと

- 得意：**インフラや外部システムの“構成”の管理**（作る/つなぐ/権限/設定）
- 苦手：**アプリの継続運用のオーケストレーション**（デプロイのたびのローリング更新等）
  - その領域はKubernetes/Argo CD/Fluxなどが得意（Terraformは“基盤を用意”する役割が多い）

---

## このリポで学べること（ローカル完結）

このリポはクラウド不要で、Terraformの基本サイクルをローカルで体験できます。

- `init → plan → apply → destroy`
- Providerの概念（`local` / `random`）
- 変数（variables）と出力（outputs）
- CIでの `fmt/validate`（PRレビューの基本）
```0
