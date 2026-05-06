import {
  to = segment_destination_subscription.id-68bffefa68b24cd67420fa24_sD4YjHwJW6kHMJkZisRcuy
  id = "68bffefa68b24cd67420fa24:sD4YjHwJW6kHMJkZisRcuy"
}

resource "segment_destination_subscription" "id-68bffefa68b24cd67420fa24_sD4YjHwJW6kHMJkZisRcuy" {
  action_id            = "7AvNbas7GJwR2fus1QuZ2S"
  destination_id       = "68bffefa68b24cd67420fa24"
  enabled              = false
  model_id             = null
  name                 = "Order Placed (beta)"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_size = 75
    braze_id = {
      "@if" = {
        else = {
          "@path" = "$.properties.braze_id"
        }
        exists = {
          "@path" = "$.context.traits.braze_id"
        }
        then = {
          "@path" = "$.context.traits.braze_id"
        }
      }
    }
    cancel_reason = {
      "@template" = "{{properties.reason}}"
    }
    cart_id = {
      "@template" = "{{properties.cart_id}}"
    }
    checkout_id = {
      "@template" = "{{properties.checkout_id}}"
    }
    currency = {
      "@template" = "{{properties.currency}}"
    }
    discounts = {
      "@arrayPath" = [{
        "@template" = "{{properties.discount_items}}"
        }, {
        amount = {
          "@template" = "{{amount}}"
        }
        code = {
          "@template" = "{{code}}"
        }
      }]
    }
    email = {
      "@if" = {
        else = {
          "@path" = "$.properties.email"
        }
        exists = {
          "@path" = "$.context.traits.email"
        }
        then = {
          "@path" = "$.context.traits.email"
        }
      }
    }
    enable_batching = true
    external_id = {
      "@template" = "{{userId}}"
    }
    metadata = {
      order_status_url = {
        "@template" = "{{properties.order_status_url}}"
      }
    }
    name = "ecommerce.order_placed"
    order_id = {
      "@template" = "{{properties.order_id}}"
    }
    phone = {
      "@if" = {
        else = {
          "@path" = "$.properties.phone"
        }
        exists = {
          "@path" = "$.context.traits.phone"
        }
        then = {
          "@path" = "$.context.traits.phone"
        }
      }
    }
    products = {
      "@arrayPath" = [{
        "@template" = "{{properties.products}}"
        }, {
        image_url = {
          "@template" = "{{image_url}}"
        }
        price = {
          "@template" = "{{price}}"
        }
        product_id = {
          "@template" = "{{product_id}}"
        }
        product_name = {
          "@template" = "{{name}}"
        }
        product_url = {
          "@template" = "{{url}}"
        }
        quantity = {
          "@template" = "{{quantity}}"
        }
        variant_id = {
          "@template" = "{{variant}}"
        }
      }]
    }
    source = {
      "@template" = "{{properties.source}}"
    }
    time = {
      "@template" = "{{timestamp}}"
    }
    total_discounts = {
      "@template" = "{{properties.discount}}"
    }
    total_value = {
      "@template" = "{{properties.total}}"
    }
  })
  trigger = "event = \"Order Completed\""
}