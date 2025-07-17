import {
  to = segment_reverse_etl_model.id-nEMbtmRLEhfP5s4F7tz9DE
  id = "nEMbtmRLEhfP5s4F7tz9DE"
}

resource "segment_reverse_etl_model" "id-nEMbtmRLEhfP5s4F7tz9DE" {
  description             = "Automatically Created, Do not Edit"
  enabled                 = true
  name                    = "enrichments-model-Orders"
  query                   = "SELECT ORDER_ID,GIFT,OCCASION FROM SISINGH_SANDBOX.LINKED_WORKSHOP.ORDERS"
  query_identifier_column = "ORDER_ID"
  source_id               = "wrC9EnoSptjZocoobcY5dW"
}