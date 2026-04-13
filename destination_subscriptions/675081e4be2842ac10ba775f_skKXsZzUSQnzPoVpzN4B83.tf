import {
  to = segment_destination_subscription.id-675081e4be2842ac10ba775f_skKXsZzUSQnzPoVpzN4B83
  id = "675081e4be2842ac10ba775f:skKXsZzUSQnzPoVpzN4B83"
}

resource "segment_destination_subscription" "id-675081e4be2842ac10ba775f_skKXsZzUSQnzPoVpzN4B83" {
  action_id            = "7SEWxzhedEAS9y5joDwrub"
  destination_id       = "675081e4be2842ac10ba775f"
  enabled              = true
  model_id             = null
  name                 = "Snap Browser Plugin"
  reverse_etl_schedule = null
  settings             = jsonencode({})
  trigger              = "type = \"track\" or type = \"identify\" or type = \"group\" or type = \"page\" or type = \"alias\""
}