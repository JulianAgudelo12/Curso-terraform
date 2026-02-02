resource "local_file" "personas" {
  count    = 4
  content  = "Lista de personas que conozco dede hace mas de 5 años"
  filename = "personas-${random_string.sufijo[count.index].result}.txt"
}

