import {
  to = segment_destination_subscription.id-687637df7d74648397fb35c6_t73VVRqZkt4XPDtPDcRPGW
  id = "687637df7d74648397fb35c6:t73VVRqZkt4XPDtPDcRPGW"
}

resource "segment_destination_subscription" "id-687637df7d74648397fb35c6_t73VVRqZkt4XPDtPDcRPGW" {
  action_id            = "k4Xb8oym74V59L3n6YmkQe"
  destination_id       = "687637df7d74648397fb35c6"
  enabled              = true
  model_id             = null
  name                 = "Create or Update Person"
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
      "@path" = "$.traits"
    }
    email = {
      "@template" = "{{traits.email}}"
    }
    group_id = {
      "@path" = "$.traits.objectId"
    }
    id = {
      "@if" = {
        else = {
          "@path" = "$.traits.email"
        }
        exists = {
          "@path" = "$.userId"
        }
        then = {
          "@path" = "$.userId"
        }
      }
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
  })
  trigger = "type = \"identify\""
}