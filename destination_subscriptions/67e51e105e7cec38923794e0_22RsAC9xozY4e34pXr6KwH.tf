import {
  to = segment_destination_subscription.id-67e51e105e7cec38923794e0_22RsAC9xozY4e34pXr6KwH
  id = "67e51e105e7cec38923794e0:22RsAC9xozY4e34pXr6KwH"
}

resource "segment_destination_subscription" "id-67e51e105e7cec38923794e0_22RsAC9xozY4e34pXr6KwH" {
  action_id            = "2P24zUSAL8BUpyGYNGmD7M"
  destination_id       = "67e51e105e7cec38923794e0"
  enabled              = true
  model_id             = null
  name                 = "Identify Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    _update_existing_only = false
    batch_size            = 75
    braze_id = {
      "@path" = "$.properties.braze_id"
    }
    country = {
      "@path" = "$.context.location.country"
    }
    current_location = {
      latitude = {
        "@path" = "$.context.location.latitude"
      }
      longitude = {
        "@path" = "$.context.location.longitude"
      }
    }
    custom_attributes = {
      "@path" = "$.traits"
    }
    email = {
      "@path" = "$.traits.email"
    }
    enable_batching = true
    external_id = {
      "@path" = "$.userId"
    }
    first_name = {
      "@path" = "$.traits.firstName"
    }
    gender = {
      "@path" = "$.traits.gender"
    }
    home_city = {
      "@path" = "$.traits.address.city"
    }
    image_url = {
      "@path" = "$.traits.avatar"
    }
    last_name = {
      "@path" = "$.traits.lastName"
    }
    phone = {
      "@path" = "$.traits.phone"
    }
  })
  trigger = "type = \"identify\""
}