import {
  to = segment_source.id-tXQ219y6HUBJxpSRshjLrA
  id = "tXQ219y6HUBJxpSRshjLrA"
}

resource "segment_source" "id-tXQ219y6HUBJxpSRshjLrA" {
  enabled = true
  labels  = null
  metadata = {
    id = "78PbvP2yv8"
  }
  name = "BigQuery"
  settings = jsonencode({
    location = "US"
  })
  slug = "bigquery"
}