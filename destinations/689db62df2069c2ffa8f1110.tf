import {
  to = segment_destination.id-689db62df2069c2ffa8f1110
  id = "689db62df2069c2ffa8f1110"
}

resource "segment_destination" "id-689db62df2069c2ffa8f1110" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "614a3c7d791c91c41bae7599"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Direct Connection"
  settings = jsonencode({
    dynamicAuthSettings = {
      configId = "66a0c9753fc5c8ba760f2ec1"
      oauth = {
        type = "noAuth"
      }
    }
    sharedSecret = ""
  })
  source_id = "8MT9TFAJzDfUxTat4GhnxC"
}