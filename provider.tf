provider "google" {
    project = "keyproject-362417"
    region = "us-central"
    credentials = "${file("${var.path}/secret2.json")}"
}