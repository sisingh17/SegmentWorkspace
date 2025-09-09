import {
  to = segment_destination.id-68bffefa68b24cd67420fa24
  id = "68bffefa68b24cd67420fa24"
}

resource "segment_destination" "id-68bffefa68b24cd67420fa24" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "60f9d0d048950c356be2e4da"
    partner_owned     = false
    region_endpoints  = ["US", "EU"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Braze Cloud Mode (Actions)"
  settings = jsonencode({
    api_key = "••••••••••29c6"
    app_id  = "82385319-73a5-422b-8efe-7201782e29c6"
    dynamicAuthSettings = {
      configId = "68bffefa68b24cd67420fa24"
      oauth = {
        type = "noAuth"
      }
    }
    endpoint = "https://rest.iad-03.braze.com"
  })
  source_id = "mGfJH44XzwfN7eHA3NdiDf"
}