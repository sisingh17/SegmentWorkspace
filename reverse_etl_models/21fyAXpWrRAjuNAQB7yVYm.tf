import {
  to = segment_reverse_etl_model.id-21fyAXpWrRAjuNAQB7yVYm
  id = "21fyAXpWrRAjuNAQB7yVYm"
}

resource "segment_reverse_etl_model" "id-21fyAXpWrRAjuNAQB7yVYm" {
  description             = "Automatically Created, Do not Edit"
  enabled                 = true
  name                    = "enrichments-model-Products"
  query                   = "SELECT * FROM SISINGH_SANDBOX.LINKED_WORKSHOP.PRODUCTS"
  query_identifier_column = "PRODUCT_ID"
  source_id               = "wrC9EnoSptjZocoobcY5dW"
}