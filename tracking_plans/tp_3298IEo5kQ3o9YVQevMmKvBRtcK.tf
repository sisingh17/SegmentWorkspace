import {
  to = segment_tracking_plan.id-tp_3298IEo5kQ3o9YVQevMmKvBRtcK
  id = "tp_3298IEo5kQ3o9YVQevMmKvBRtcK"
}

resource "segment_tracking_plan" "id-tp_3298IEo5kQ3o9YVQevMmKvBRtcK" {
  description = "description"
  name        = "DemoTrackingPlan"
  rules = [
    {
      json_schema = jsonencode({
        "$schema"   = "http://json-schema.org/draft-07/schema#"
        description = "DO NOT EDIT. Event generated to store end users consent preferences for Unify and Twilio Engage."
        properties = {
          context = {
            type = "object"
          }
          properties = {
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Segment Consent Preference Updated"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              build = {
                description = ""
                id          = "/properties/properties/properties/build"
                properties  = {}
                type        = "integer"
              }
              platform = {
                description = ""
                id          = "/properties/properties/properties/platform"
                properties  = {}
                type        = "string"
              }
              version = {
                description = ""
                id          = "/properties/properties/properties/version"
                properties  = {}
                type        = "string"
              }
            }
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Application Installed"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              build = {
                description = ""
                id          = "/properties/properties/properties/build"
                properties  = {}
                type        = "integer"
              }
              platform = {
                description = ""
                id          = "/properties/properties/properties/platform"
                properties  = {}
                type        = "string"
              }
              version = {
                description = ""
                id          = "/properties/properties/properties/version"
                properties  = {}
                type        = "string"
              }
            }
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Application Opened"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              build = {
                description = ""
                id          = "/properties/properties/properties/build"
                properties  = {}
                type        = "integer"
              }
              platform = {
                description = ""
                id          = "/properties/properties/properties/platform"
                properties  = {}
                type        = "string"
              }
              version = {
                description = ""
                id          = "/properties/properties/properties/version"
                properties  = {}
                type        = "string"
              }
            }
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Application Uninstalled"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              campaign_id = {
                description = ""
                id          = "/properties/properties/properties/campaign_id"
                properties  = {}
                type        = "string"
              }
              email_subject = {
                description = ""
                id          = "/properties/properties/properties/email_subject"
                properties  = {}
                type        = "string"
              }
              link_id = {
                description = ""
                id          = "/properties/properties/properties/link_id"
                properties  = {}
                type        = "string"
              }
            }
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Email Opened"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              order_id = {
                description = ""
                id          = "/properties/properties/properties/order_id"
                properties  = {}
                type        = "string"
              }
              platform = {
                description = ""
                id          = "/properties/properties/properties/platform"
                properties  = {}
                type        = "string"
              }
              products = {
                description = ""
                id          = "/properties/properties/properties/products"
                items = {
                  description = ""
                  id          = "/properties/properties/properties/products/items"
                  properties = {
                    brand = {
                      description = ""
                      id          = "/properties/properties/properties/products/items/properties/brand"
                      properties  = {}
                      type        = "string"
                    }
                    category = {
                      description = ""
                      id          = "/properties/properties/properties/products/items/properties/category"
                      properties  = {}
                      type        = "string"
                    }
                    image_url = {
                      description = ""
                      id          = "/properties/properties/properties/products/items/properties/image_url"
                      properties  = {}
                      type        = "string"
                    }
                    is_new_product = {
                      description = ""
                      id          = "/properties/properties/properties/products/items/properties/is_new_product"
                      properties  = {}
                      type        = "boolean"
                    }
                    is_sale_product = {
                      description = ""
                      id          = "/properties/properties/properties/products/items/properties/is_sale_product"
                      properties  = {}
                      type        = "boolean"
                    }
                    name = {
                      description = ""
                      id          = "/properties/properties/properties/products/items/properties/name"
                      properties  = {}
                      type        = "string"
                    }
                    price = {
                      description = ""
                      id          = "/properties/properties/properties/products/items/properties/price"
                      properties  = {}
                      type        = "string"
                    }
                    product_id = {
                      description = ""
                      id          = "/properties/properties/properties/products/items/properties/product_id"
                      properties  = {}
                      type        = "integer"
                    }
                    sku = {
                      description = ""
                      id          = "/properties/properties/properties/products/items/properties/sku"
                      properties  = {}
                      type        = "integer"
                    }
                    type = {
                      description = ""
                      id          = "/properties/properties/properties/products/items/properties/type"
                      properties  = {}
                      type        = "string"
                    }
                  }
                  type = "object"
                }
                properties = {}
                type       = "array"
              }
            }
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Checkout Started"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              order_id = {
                description = ""
                id          = "/properties/properties/properties/order_id"
                properties  = {}
                type        = "string"
              }
              title = {
                description = ""
                id          = "/properties/properties/properties/title"
                properties  = {}
                type        = "string"
              }
            }
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Header Navigation Link Clicked\n"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            type = "object"
          }
          traits = {
            type = "object"
          }
        }
        type = "object"
      })
      key     = "Cart Viewed"
      type    = "TRACK"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "Example Event"
      type    = "TRACK"
      version = 1
    },
  ]
  type = "LIVE"
}