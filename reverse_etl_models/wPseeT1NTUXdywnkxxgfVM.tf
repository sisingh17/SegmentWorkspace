import {
  to = segment_reverse_etl_model.id-wPseeT1NTUXdywnkxxgfVM
  id = "wPseeT1NTUXdywnkxxgfVM"
}

resource "segment_reverse_etl_model" "id-wPseeT1NTUXdywnkxxgfVM" {
  description             = " "
  enabled                 = true
  name                    = "Product_Added_All"
  query                   = "SELECT * FROM  PRISTINE_ECOM.WEB.CHECKOUT_STARTED WHERE ORDER_ID IS NOT NULL"
  query_identifier_column = "ORDER_ID"
  source_id               = "6PMPY3rtmgizcWXYW7im4g"
}