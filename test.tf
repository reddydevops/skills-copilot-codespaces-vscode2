resource "azurerm_kubernetes_cluster_node_pool" "example" {
    name                  = "examplepool"
    kubernetes_cluster_id = azurerm_kubernetes_cluster.example.id
    vm_size               = "Standard_DS2_v2"
    node_count            = 1

    tags = {
        Environment = "Production"
    }
}

