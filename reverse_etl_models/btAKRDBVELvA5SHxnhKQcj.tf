import {
  to = segment_reverse_etl_model.id-btAKRDBVELvA5SHxnhKQcj
  id = "btAKRDBVELvA5SHxnhKQcj"
}

resource "segment_reverse_etl_model" "id-btAKRDBVELvA5SHxnhKQcj" {
  description             = "Automatically Created, Do not Edit"
  enabled                 = true
  name                    = "enrichments-model-Occasions"
  query                   = "SELECT * FROM SISINGH_SANDBOX.LINKED_WORKSHOP.NEXT_OCCASION_DATE"
  query_identifier_column = "OCCASION_ID"
  source_id               = "wrC9EnoSptjZocoobcY5dW"
}