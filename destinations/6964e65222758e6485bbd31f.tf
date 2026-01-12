import {
  to = segment_destination.id-6964e65222758e6485bbd31f
  id = "6964e65222758e6485bbd31f"
}

resource "segment_destination" "id-6964e65222758e6485bbd31f" {
  enabled = false
  metadata = {
    contacts          = null
    id                = "614a3c7d791c91c41bae7599"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Test Consent Wrapper"
  settings = jsonencode({
    dynamicAuthSettings = {
      configId = "66a0c9753fc5c8ba760f2ec1"
      oauth = {
        type = "noAuth"
      }
    }
    sharedSecret = ""
  })
  source_id = "77j7xUNGpD54pACMepDzTB"
}