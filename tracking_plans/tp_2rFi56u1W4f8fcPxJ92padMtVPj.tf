import {
  to = segment_tracking_plan.id-tp_2rFi56u1W4f8fcPxJ92padMtVPj
  id = "tp_2rFi56u1W4f8fcPxJ92padMtVPj"
}

resource "segment_tracking_plan" "id-tp_2rFi56u1W4f8fcPxJ92padMtVPj" {
  description = "description"
  name        = "Test JSON Schema"
  rules = [
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {
            properties = {
              userAgent = {
                not = {
                  pattern = "(bot|crawl|spider|tiktokbot|tiktokcrawler|tiktokapi|slurp|mediapartners|robot|archive|facebook|googlebot|bingbot|slack|curl|wget|yahoo|yandex|baidu|duckduckbot|msnbot|ia_archiver|fastbot|applebot|sogou|exabot|crawler|rss|http|pingdom|seznambot|botify|searchmetrics|bot|bark|amazonbot|zyborg)"
                }
                type = "string"
              }
            }
            required = ["userAgent"]
            type     = "object"
          }
          properties = {}
          traits     = {}
        }
        required = ["context"]
        type     = "object"
      })
      key     = null
      type    = "COMMON"
      version = 1
    },
    {
      json_schema = jsonencode({
        "$schema" = "http://json-schema.org/draft-07/schema#"
        properties = {
          context = {}
          properties = {
            properties = {
              brand = {
                type = ["string"]
              }
              category = {
                type = ["string"]
              }
              image_url = {
                type = ["string"]
              }
              is_new_product = {
                type = ["boolean"]
              }
              is_sale_product = {
                type = ["boolean"]
              }
              name = {
                type = ["string"]
              }
              order_id = {
                type = ["string"]
              }
              platform = {
                type = ["string"]
              }
              price = {
                type = ["string"]
              }
              product_id = {
                type = ["integer"]
              }
              sku = {
                type = ["string"]
              }
              type = {
                type = ["string"]
              }
            }
            type = "object"
          }
          traits = {}
        }
        type = "object"
      })
      key     = "Product Added"
      type    = "TRACK"
      version = 1
    },
  ]
  type = "LIVE"
}