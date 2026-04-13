import {
  to = segment_destination.id-68bffbf89e7a3e912e1dede8
  id = "68bffbf89e7a3e912e1dede8"
}

resource "segment_destination" "id-68bffbf89e7a3e912e1dede8" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "614a3c7d791c91c41bae7599"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Webhooks (Actions)"
  settings = jsonencode({
    dynamicAuthSettings = {
      configId = "68bffbf89e7a3e912e1dede8"
      oauth = {
        type = "noAuth"
      }
    }
    sharedSecret = ""
  })
  source_id = "mGfJH44XzwfN7eHA3NdiDf"
}