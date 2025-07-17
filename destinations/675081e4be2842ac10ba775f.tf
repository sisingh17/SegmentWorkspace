import {
  to = segment_destination.id-675081e4be2842ac10ba775f
  id = "675081e4be2842ac10ba775f"
}

resource "segment_destination" "id-675081e4be2842ac10ba775f" {
  enabled = false
  metadata = {
    contacts = [
      {
      },
    ]
    id                = "6261a8b6cb4caa70e19116e8"
    partner_owned     = true
    region_endpoints  = null
    supported_regions = ["us-west-2", "eu-west-1"]
  }
  name = "Snapchat_Sisingh_Account"
  settings = jsonencode({
    app_id      = ""
    pixel_id    = "8735a37c-59d5-467b-9529-9ec4a4b75cd8"
    snap_app_id = ""
  })
  source_id = "8MT9TFAJzDfUxTat4GhnxC"
}