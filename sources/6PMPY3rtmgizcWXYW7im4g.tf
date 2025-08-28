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
    account   = "VNB64696.us-west-2"
    database  = "SEGMENT_REVERSE_ETL"
    username  = "segment_reverse_etl_user"
    warehouse = "SEGMENT_REVERSE_ETL"
  })
  slug = "snowflake"
}