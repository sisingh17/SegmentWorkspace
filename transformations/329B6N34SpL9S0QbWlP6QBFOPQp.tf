import {
  to = segment_transformation.id-329B6N34SpL9S0QbWlP6QBFOPQp
  id = "329B6N34SpL9S0QbWlP6QBFOPQp"
}

resource "segment_transformation" "id-329B6N34SpL9S0QbWlP6QBFOPQp" {
  destination_metadata_id = null
  enabled                 = false
  fql_defined_properties = [
  ]
  if             = "event=\"Example Event\""
  name           = "Test Transformation"
  new_event_name = "New Example Event"
  property_renames = [
  ]
  property_value_transformations = [
  ]
  source_id = "8MT9TFAJzDfUxTat4GhnxC"
}