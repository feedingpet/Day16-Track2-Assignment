output "load_balancer_ip" {
  description = "External IP address of the Load Balancer (API endpoint)"
  value       = google_compute_global_forwarding_rule.vllm_fwd.ip_address
}

output "api_endpoint" {
  description = "vLLM API endpoint URL"
  value       = "http://${google_compute_global_forwarding_rule.vllm_fwd.ip_address}/v1"
}

output "cpu_node_name" {
  description = "Name of the CPU Compute Engine instance"
  value       = google_compute_instance.cpu_node.name
}

output "cpu_node_zone" {
  description = "Zone of the CPU instance"
  value       = google_compute_instance.cpu_node.zone
}

output "iap_ssh_command" {
  description = "Command to SSH into the CPU node via IAP"
  value       = "gcloud compute ssh ${google_compute_instance.cpu_node.name} --zone=${google_compute_instance.cpu_node.zone} --tunnel-through-iap"
}
