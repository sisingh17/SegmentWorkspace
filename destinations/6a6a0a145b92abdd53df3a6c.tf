import {
  to = segment_destination.id-6a6a0a145b92abdd53df3a6c
  id = "6a6a0a145b92abdd53df3a6c"
}

resource "segment_destination" "id-6a6a0a145b92abdd53df3a6c" {
  enabled = false
  metadata = {
    contacts = [
      {
      },
      {
      },
    ]
    id                = "62f435d1d311567bd5bf0e8d"
    partner_owned     = false
    region_endpoints  = ["US"]
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "LinkedIn Audiences"
  settings = jsonencode({
    ad_account_id = "510987882"
    dynamicAuthSettings = {
      configId = "6a6a0a145b92abdd53df3a6c"
      oauth = {
        type = "noAuth"
      }
    }
    send_email                 = true
    send_google_advertising_id = true
  })
  source_id = "csDfmZ7LdFdHnFMVyFWbHX"
}