import {
  to = segment_destination_subscription.id-6686ae06c8dc079b6369562c_ddF3R43PEGvMpiBsQnaTmu
  id = "6686ae06c8dc079b6369562c:ddF3R43PEGvMpiBsQnaTmu"
}

resource "segment_destination_subscription" "id-6686ae06c8dc079b6369562c_ddF3R43PEGvMpiBsQnaTmu" {
  action_id            = "2P24zUSAL8BUpyGYNGmD7M"
  destination_id       = "6686ae06c8dc079b6369562c"
  enabled              = true
  model_id             = null
  name                 = "Update User Profile - Profile enters or exits"
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
  trigger = "context.personas.event_emitter_id = \"ee_3Kb0eTwn0olRf3knpzLUAlc8ze9\""
}