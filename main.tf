module "apiserver" {
  owner         = "michaelma"
  source        = "./modules/api-server"
  instance_type = "t2.micro"
  instance_name = "test1"
}
