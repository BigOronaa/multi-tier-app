output "web_server_public_ip" {
  description = "Public IP of the web server"
  value       = module.ec2.public_ip
}
output "web_server_2_public_ip" {
  description = "Public IP of the second WordPress server"
  value       = module.ec2_wp2.public_ip
}
output "nodejs_todo_public_ip" {
  description = "Public IP of the Node.js Todo application server"
  value       = module.ec2_nodejs.public_ip
}
output "mysql_public_ip" {
  description = "Public IP of the MySQL database server"
  value       = module.mysql.public_ip
}
output "load_balancer_public_ip" {
  description = "Public IP of the Load Balancer server"
  value       = module.load_balancer.public_ip
}

