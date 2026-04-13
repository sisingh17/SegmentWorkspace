import {
  to = segment_destination_subscription.id-675081e4be2842ac10ba775f_qTpUHqAsEVAT1V42Cuf5df
  id = "675081e4be2842ac10ba775f:qTpUHqAsEVAT1V42Cuf5df"
}

resource "segment_destination_subscription" "id-675081e4be2842ac10ba775f_qTpUHqAsEVAT1V42Cuf5df" {
  action_id            = "66Yrkz8i3GvgSLVFeJQvN9"
  destination_id       = "675081e4be2842ac10ba775f"
  enabled              = true
  model_id             = null
  name                 = "Start Checkout"
  reverse_etl_schedule = null
  settings = jsonencode({
    action_source = "website"
    app_data = {
      application_tracking_enabled = {
        "@path" = "$.context.device.adTrackingEnabled"
      }
      carrier = {
        "@path" = "$.context.network.carrier"
      }
      density = {
        "@path" = "$.context.screen.density"
      }
      deviceName = {
        "@path" = "$.context.device.model"
      }
      deviceTimezone = {
        "@path" = "$.context.timezone"
      }
      height = {
        "@path" = "$.context.screen.height"
      }
      locale = {
        "@path" = "$.context.locale"
      }
      longVersion = {
        "@path" = "$.context.app.version"
      }
      osVersion = {
        "@path" = "$.context.os.version"
      }
      packageName = {
        "@path" = "$.context.app.namespace"
      }
      width = {
        "@path" = "$.context.screen.width"
      }
    }
    custom_data = {
      currency = {
        "@path" = "$.properties.currency"
      }
      num_items = {
        "@path" = "$.properties.quantity"
      }
      order_id = {
        "@path" = "$.properties.order_id"
      }
      search_string = {
        "@path" = "$.properties.query"
      }
      value = {
        "@if" = {
          else = {
            "@path" = "$.properties.total"
          }
          exists = {
            "@path" = "$.properties.revenue"
          }
          then = {
            "@path" = "$.properties.revenue"
          }
        }
      }
    }
    event_id = {
      "@path" = "$.messageId"
    }
    event_name = "START_CHECKOUT"
    event_source_url = {
      "@path" = "$.context.page.url"
    }
    event_time = {
      "@path" = "$.timestamp"
    }
    products = {
      "@arrayPath" = ["$.properties.products", {
        brand = {
          "@path" = "brand"
        }
        item_category = {
          "@path" = "category"
        }
        item_id = {
          "@path" = "product_id"
        }
      }]
    }
    user_data = {
      city = {
        "@if" = {
          else = {
            "@path" = "$.properties.address.city"
          }
          exists = {
            "@path" = "$.context.traits.address.city"
          }
          then = {
            "@path" = "$.context.traits.address.city"
          }
        }
      }
      client_ip_address = {
        "@path" = "$.context.ip"
      }
      client_user_agent = {
        "@path" = "$.context.userAgent"
      }
      country = {
        "@if" = {
          else = {
            "@path" = "$.properties.address.country"
          }
          exists = {
            "@path" = "$.context.traits.address.country"
          }
          then = {
            "@path" = "$.context.traits.address.country"
          }
        }
      }
      dateOfBirth = {
        "@if" = {
          else = {
            "@path" = "$.properties.birthday"
          }
          exists = {
            "@path" = "$.context.traits.birthday"
          }
          then = {
            "@path" = "$.context.traits.birthday"
          }
        }
      }
      email = {
        "@if" = {
          else = {
            "@path" = "$.traits.email"
          }
          exists = {
            "@path" = "$.properties.email"
          }
          then = {
            "@path" = "$.properties.email"
          }
        }
      }
      externalId = {
        "@if" = {
          else = {
            "@path" = "$.anonymousId"
          }
          exists = {
            "@path" = "$.userId"
          }
          then = {
            "@path" = "$.userId"
          }
        }
      }
      firstName = {
        "@if" = {
          else = {
            "@path" = "$.properties.first_name"
          }
          exists = {
            "@path" = "$.context.traits.first_name"
          }
          then = {
            "@path" = "$.context.traits.first_name"
          }
        }
      }
      gender = {
        "@if" = {
          else = {
            "@path" = "$.properties.gender"
          }
          exists = {
            "@path" = "$.context.traits.gender"
          }
          then = {
            "@path" = "$.context.traits.gender"
          }
        }
      }
      idfv = {
        "@path" = "$.context.device.id"
      }
      lastName = {
        "@if" = {
          else = {
            "@path" = "$.properties.last_name"
          }
          exists = {
            "@path" = "$.context.traits.last_name"
          }
          then = {
            "@path" = "$.context.traits.last_name"
          }
        }
      }
      madid = {
        "@path" = "$.context.device.advertisingId"
      }
      phone = {
        "@if" = {
          else = {
            "@path" = "$.traits.phone"
          }
          exists = {
            "@path" = "$.properties.phone"
          }
          then = {
            "@path" = "$.properties.phone"
          }
        }
      }
      sc_click_id = {
        "@path" = "$.integrations.Snap Conversions Api.click_id"
      }
      sc_cookie1 = {
        "@path" = "$.integrations.Snap Conversions Api.uuid_c1"
      }
      state = {
        "@if" = {
          else = {
            "@path" = "$.properties.address.state"
          }
          exists = {
            "@path" = "$.context.traits.address.state"
          }
          then = {
            "@path" = "$.context.traits.address.state"
          }
        }
      }
      zip = {
        "@if" = {
          else = {
            "@path" = "$.properties.address.postalCode"
          }
          exists = {
            "@path" = "$.context.traits.address.postalCode"
          }
          then = {
            "@path" = "$.context.traits.address.postalCode"
          }
        }
      }
    }
  })
  trigger = "event = \"Checkout Started\""
}