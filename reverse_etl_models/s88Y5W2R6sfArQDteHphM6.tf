import {
  to = segment_reverse_etl_model.id-s88Y5W2R6sfArQDteHphM6
  id = "s88Y5W2R6sfArQDteHphM6"
}

resource "segment_reverse_etl_model" "id-s88Y5W2R6sfArQDteHphM6" {
  description             = "Automatically Created, Do not Edit"
  enabled                 = true
  name                    = "enrichments-model-account"
  query                   = "SELECT * FROM SISINGH_SANDBOX.LINKED_WORKSHOP.ACCOUNTS"
  query_identifier_column = "ACCOUNT_ID"
  source_id               = "wrC9EnoSptjZocoobcY5dW"
}