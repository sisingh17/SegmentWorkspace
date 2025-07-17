import {
  to = segment_destination.id-6810de6433bddf9e72ef6389
  id = "6810de6433bddf9e72ef6389"
}

resource "segment_destination" "id-6810de6433bddf9e72ef6389" {
  enabled = true
  metadata = {
    contacts          = null
    id                = "61957755c4d820be968457de"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Salesforce (Actions)"
  settings = jsonencode({
    account       = ""
    auth_password = ""
    dynamicAuthSettings = {
      configId = "6810de6433bddf9e72ef6389"
    }
    isSandbox      = false
    security_token = ""
    username       = ""
  })
  source_id = "csDfmZ7LdFdHnFMVyFWbHX"
}