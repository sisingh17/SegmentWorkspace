import {
  to = segment_tracking_plan.id-tp_3296fSGTurRcagXJ5foO7ltumPM
  id = "tp_3296fSGTurRcagXJ5foO7ltumPM"
}

resource "segment_tracking_plan" "id-tp_3296fSGTurRcagXJ5foO7ltumPM" {
  description = null
  name        = "New TP"
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
  ]
  type = "LIVE"
}