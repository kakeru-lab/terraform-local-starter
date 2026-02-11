locals {
  out_dir = "${path.module}/build"
}

resource "random_id" "run" {
  byte_length = 4
}

resource "local_file" "hello" {
  filename = "${local.out_dir}/hello.txt"
  content  = <<-EOT
${var.message}
owner: ${var.owner}
run_id: ${random_id.run.hex}
created_at: ${timestamp()}
EOT
}

resource "local_file" "metadata" {
  filename = "${local.out_dir}/metadata.json"
  content = jsonencode({
    owner      = var.owner
    run_id     = random_id.run.hex
    created_at = timestamp()
    note       = "This file is created locally via Terraform (no cloud needed)."
  })
}
