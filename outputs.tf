output "hello_file" {
  value = local_file.hello.filename
}

output "metadata_file" {
  value = local_file.metadata.filename
}

output "run_id" {
  value = random_id.run.hex
}
