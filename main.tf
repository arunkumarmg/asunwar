
resource "google_app_engine_application" "testapp" {
  project        = var.project
  location_id    = "us-west1"   #contains(data.google_compute_regions.available.names, var.location_id) == true ? var.location_id : "This is not one of the available locations in GCP."
#   auth_domain    = var.auth_domain
  database_type  = var.database_type
#   serving_status = var.serving_status
#   dynamic "feature_settings" {
#     for_each = var.feature_settings[*]
#     content {
#       split_health_checks = feature_settings.value.split_health_checks
#     }
#   }
#   dynamic "iap" {
#     for_each = var.iap[*]
#     content {
#       oauth2_client_id     = iap.value.oauth2_client_id
#       oauth2_client_secret = iap.value.oauth2_client_secret
#     }
#   }
 }
# data "google_client_config" "google_client" {}

# resource "google_project_service" "firestore_api" {
#   service            = "firestore.googleapis.com"
#   disable_on_destroy = false
# }

# resource "google_project_iam_custom_role" "firestore_access" {
#   role_id     = "firestoreAccess"
#   title       = "Firestore Access ${var.name_suffix}"
#   description = "Includes permissions required for accessing firestore. See https://cloud.google.com/datastore/docs/quickstart#before-you-begin"
#   permissions = ["appengine.applications.create", "servicemanagement.services.bind"]
# }

# resource "google_project_iam_member" "firestore_access_user_groups" {
#   for_each = toset(var.user_groups)
#   project  = data.google_client_config.google_client.project
#   role     = google_project_iam_custom_role.firestore_access.id
#   member   = "group:${each.value}"
# }

# resource "google_project_iam_member" "datastore_owner_user_groups" {
#   for_each = toset(var.user_groups)
#   project  = data.google_client_config.google_client.project
#   role     = "roles/datastore.owner" # see https://cloud.google.com/datastore/docs/quickstart#before-you-begin
#   member   = "group:${each.value}"
# }