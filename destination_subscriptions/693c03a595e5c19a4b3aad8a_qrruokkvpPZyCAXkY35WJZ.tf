import {
  to = segment_destination_subscription.id-693c03a595e5c19a4b3aad8a_qrruokkvpPZyCAXkY35WJZ
  id = "693c03a595e5c19a4b3aad8a:qrruokkvpPZyCAXkY35WJZ"
}

resource "segment_destination_subscription" "id-693c03a595e5c19a4b3aad8a_qrruokkvpPZyCAXkY35WJZ" {
  action_id      = "dmxYnywNgdWzgRuyazhi6C"
  destination_id = "693c03a595e5c19a4b3aad8a"
  enabled        = true
  model_id       = "kuCKxr8q4DmEogGF8NfJ1p"
  name           = "Entity subscription"
  reverse_etl_schedule = {
    config   = null
    strategy = "MANUAL"
  }
  settings = jsonencode({})
  trigger  = "event = \"new\" or event = \"updated\" or event = \"deleted\""
}