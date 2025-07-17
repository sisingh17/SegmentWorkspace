import {
  to = segment_reverse_etl_model.id-ePkoA94ymKQEu7K3XFkVsT
  id = "ePkoA94ymKQEu7K3XFkVsT"
}

resource "segment_reverse_etl_model" "id-ePkoA94ymKQEu7K3XFkVsT" {
  description             = "Automatically Created, Do not Edit"
  enabled                 = true
  name                    = "enrichments-model-Recipients"
  query                   = "SELECT * FROM SISINGH_SANDBOX.LINKED_WORKSHOP.RECIPIENTS"
  query_identifier_column = "RECIPIENT_ID"
  source_id               = "wrC9EnoSptjZocoobcY5dW"
}