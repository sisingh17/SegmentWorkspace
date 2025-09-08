import {
  to = segment_source.id-toMuunXPwvbTgDRsvF5a3
  id = "toMuunXPwvbTgDRsvF5a3"
}

resource "segment_source" "id-toMuunXPwvbTgDRsvF5a3" {
  enabled = true
  labels  = null
  metadata = {
    id = "BQp3zGUgjV"
  }
  name = "Entity Group: snowflake in spa_wFmD5b8Q3tRc7XWBvMM2ud"
  settings = jsonencode({
    account   = "ecb63470.prod3.us-west-2"
    database  = "SISING_SANDBOX"
    username  = "SISING"
    warehouse = "SEGMENT_WAREHOUSE"
  })
  slug = "entity-group-snowflake-spa_wfmd5b8q3trc7xwbvmm2ud"
}