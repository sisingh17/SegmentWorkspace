import {
  to = segment_destination.id-66a0c7b96e57aff0eda87619
  id = "66a0c7b96e57aff0eda87619"
}

resource "segment_destination" "id-66a0c7b96e57aff0eda87619" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "5a4d24dcc5836400017188f6"
    partner_owned     = false
    region_endpoints  = null
    supported_regions = null
  }
  name = "Personas Facebook Custom Audiences"
  settings = jsonencode({
    account           = "act_794041057373779"
    specialAdCategory = ""
  })
  source_id = "csDfmZ7LdFdHnFMVyFWbHX"
}