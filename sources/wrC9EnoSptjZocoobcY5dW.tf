import {
  to = segment_source.id-wrC9EnoSptjZocoobcY5dW
  id = "wrC9EnoSptjZocoobcY5dW"
}

resource "segment_source" "id-wrC9EnoSptjZocoobcY5dW" {
  enabled = true
  labels  = null
  metadata = {
    id = "BQp3zGUgjV"
  }
  name = "Entity Group: snowflake in spa_jZGBxUbja4pFDfzqo8Yau5"
  settings = jsonencode({
    account   = "ecb63470.prod3.us-west-2"
    database  = "SISINGH_SANDBOX"
    username  = "SISINGH"
    warehouse = "SEGMENT_WAREHOUSE"
  })
  slug = "entity-group-snowflake-spa_jzgbxubja4pfdfzqo8yau5"
}