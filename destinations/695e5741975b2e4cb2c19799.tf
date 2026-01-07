import {
  to = segment_destination.id-695e5741975b2e4cb2c19799
  id = "695e5741975b2e4cb2c19799"
}

resource "segment_destination" "id-695e5741975b2e4cb2c19799" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "614a3c7d791c91c41bae7599"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Testing One trust Consent"
  settings = jsonencode({
    dynamicAuthSettings = {
      configId = "66a0c9753fc5c8ba760f2ec1"
      oauth = {
        type = "noAuth"
      }
    }
    sharedSecret = ""
  })
  source_id = "jz1i5rFYwgcZkGTVshd8Ex"
}