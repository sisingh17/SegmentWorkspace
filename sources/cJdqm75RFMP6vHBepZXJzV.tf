import {
  to = segment_source.id-cJdqm75RFMP6vHBepZXJzV
  id = "cJdqm75RFMP6vHBepZXJzV"
}

resource "segment_source" "id-cJdqm75RFMP6vHBepZXJzV" {
  enabled = true
  labels  = null
  metadata = {
    id = "BQp3zGUgjV"
  }
  name = "Entity Group: snowflake in spa_jsuFeq1VcKcRJJAFxzFFxr"
  settings = jsonencode({
    account   = "ecb63470.prod3.us-west-2"
    database  = "SISING_SANDBOX"
    username  = "SISING"
    warehouse = "SEGMENT_WAREHOUSE"
  })
  slug = "entity-group-snowflake-spa_jsufeq1vckcrjjafxzffxr"
}