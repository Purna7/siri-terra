output "master_subnet_id" {
  value = azurerm_subnet.master.id
}

output "worker_subnet_id" {
  value = azurerm_subnet.worker.id
}
