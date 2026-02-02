resource "local_file" "personas" {
    content = "Lista de personas que conozco dede hace mas de 5 años"
    filename = "personas.txt"
}