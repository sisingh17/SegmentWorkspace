import {
  to = segment_destination.id-69e9f23b89da668c668be94f
  id = "69e9f23b89da668c668be94f"
}

resource "segment_destination" "id-69e9f23b89da668c668be94f" {
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
  name = "OneSignalJourney Test"
  settings = jsonencode({
    apiKey = "••••••••••4acy"
    appId  = "b1af2d84-6dfd-4fd3-af8c-646b4773900c"
  })
  source_id = "tFVMmgJLfeddhwQYLCjGJu"
}