project_id = "kubernetes-test-456013"

region = "asia-south1"

vpc_network_name = "guptaji-tech-allianz-vpc"

subnetwork_name = "guptaji-tech-allianz-subnet"

subnetwork_cidr = "10.0.0.0/16"

subnet_pod_secondary_range = "192.168.0.0/16"

subet_service_secondary_range = "172.16.0.0/16"

cluster_name = "guptaji-tech-allianz-cluster"

primary_cluster_zone = "asia-south1-a"

cluster_initial_node_count = 1

cluster_node_pool_name = "guptaji-tech-allianz-node-pool"

cluster_primary_node_pool_locations = "asia-south1-a,asia-south1-b"

cluster_node_count = 2

cluster_min_nodes = 1

cluster_max_nodes = 3

cluster_machine_type = "e2-medium"

cluster_disk_type = "pd-standard"

cluster_disk_size = 12

cloud_router_name = "guptaji-tech-allianz-router"

cloud_nat_name = "guptaji-tech-allianz-nat"
