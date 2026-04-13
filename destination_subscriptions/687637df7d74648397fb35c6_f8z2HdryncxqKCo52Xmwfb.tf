import {
  to = segment_destination_subscription.id-687637df7d74648397fb35c6_f8z2HdryncxqKCo52Xmwfb
  id = "687637df7d74648397fb35c6:f8z2HdryncxqKCo52Xmwfb"
}

resource "segment_destination_subscription" "id-687637df7d74648397fb35c6_f8z2HdryncxqKCo52Xmwfb" {
  action_id            = "tLbwUgCeC2qVhPm8ia7adn"
  destination_id       = "687637df7d74648397fb35c6"
  enabled              = true
  model_id             = null
  name                 = "Create or Update Object"
  reverse_etl_schedule = null
  settings = jsonencode({
    anonymous_id = {
      "@path" = "$.anonymousId"
    }
    convert_timestamp = true
    created_at = {
      "@if" = {
        else = {
          "@path" = "$.traits.createdAt"
        }
        exists = {
          "@path" = "$.traits.created_at"
        }
        then = {
          "@path" = "$.traits.created_at"
        }
      }
    }
    custom_attributes = {
      "@path" = "$.traits.objectAttributes"
    }
    id = {
      "@path" = "$.groupId"
    }
    object_type_id = {
      "@if" = {
        else = {
          "@path" = "$.traits.objectTypeId"
        }
        exists = {
          "@path" = "$.traits.object_type_id"
        }
        then = {
          "@path" = "$.traits.object_type_id"
        }
      }
    }
    relationship_attributes = {
      "@path" = "$.traits.relationshipAttributes"
    }
    user_id = {
      "@path" = "$.userId"
    }
  })
  trigger = "type = \"group\""
}