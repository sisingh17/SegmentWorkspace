import {
  to = segment_destination.id-6a59dfe67d197a9caaa257e8
  id = "6a59dfe67d197a9caaa257e8"
}

resource "segment_destination" "id-6a59dfe67d197a9caaa257e8" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "60f9d0d048950c356be2e4da"
    partner_owned     = false
    region_endpoints  = ["US", "EU"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Test_ExternalId"
  settings = jsonencode({
    api_key = "••••••••••5148"
    app_id  = "82385319-73a5-422b-8efe-7201782e29c6"
    dynamicAuthSettings = {
      configId = "67e51e105e7cec38923794e0"
    }
    endpoint = "https://rest.iad-03.braze.com"
  })
  source_id = "vDJUxF73GgzoCHzNS5MdaG"
}