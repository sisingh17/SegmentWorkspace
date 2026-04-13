import {
  to = segment_reverse_etl_model.id-3hhwqr7WDqi826GTWChcSv
  id = "3hhwqr7WDqi826GTWChcSv"
}

resource "segment_reverse_etl_model" "id-3hhwqr7WDqi826GTWChcSv" {
  description             = "Automatically Created, Do not Edit"
  enabled                 = true
  name                    = "enrichments-model-orders"
  query                   = "SELECT * FROM SISINGH_SANDBOX.LINKED_WORKSHOP.ORDERS"
  query_identifier_column = "ORDER_ID"
  source_id               = "wrC9EnoSptjZocoobcY5dW"
}