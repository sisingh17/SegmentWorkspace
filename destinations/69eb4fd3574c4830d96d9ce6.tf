import {
  to = segment_destination.id-69eb4fd3574c4830d96d9ce6
  id = "69eb4fd3574c4830d96d9ce6"
}

resource "segment_destination" "id-69eb4fd3574c4830d96d9ce6" {
  enabled = true
  metadata = {
    contacts = [
      {
      },
    ]
    id                = "60b6a5b69fec493efbd3c64c"
    partner_owned     = true
    region_endpoints  = null
    supported_regions = null
  }
  name = "Journey-HTTP_API-1Signal"
  settings = jsonencode({
    apiKey = "••••••••••i7fq"
    appId  = "b1af2d84-6dfd-4fd3-af8c-646b4773900c"
  })
  source_id = "gjHQojXZuvNcjowHgjnqNn"
}