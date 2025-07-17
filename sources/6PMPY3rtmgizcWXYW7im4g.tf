import {
  to = segment_source.id-6PMPY3rtmgizcWXYW7im4g
  id = "6PMPY3rtmgizcWXYW7im4g"
}

resource "segment_source" "id-6PMPY3rtmgizcWXYW7im4g" {
  enabled = true
  labels  = null
  metadata = {
    id = "BQp3zGUgjV"
  }
  name = "Snowflake"
  settings = jsonencode({
    account   = "ecb63470.prod3.us-west-2"
    database  = "SISINGH_SANDBOX"
    username  = "SISINGH"
    warehouse = "SEGMENT_WAREHOUSE"
  })
  slug = "snowflake"
}