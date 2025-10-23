import {
  to = segment_transformation.id-329BGLn6vpj3LkpsBYeuc3ollXq
  id = "329BGLn6vpj3LkpsBYeuc3ollXq"
}

resource "segment_transformation" "id-329BGLn6vpj3LkpsBYeuc3ollXq" {
  destination_metadata_id = null
  enabled                 = false
  fql_defined_properties = [
  ]
  if             = "event = 'Example Event V1'"
  name           = "Name of the new transformation"
  new_event_name = "new-event-name"
  property_renames = [
    {
      new_name = "another-name-new"
      old_name = "another-name-old"
    },
    {
      new_name = "new-name"
      old_name = "old-name"
    },
  ]
  property_value_transformations = [
    {
      property_paths = ["context.some-property", "properties.some-property"]
      property_value = "some property value"
    },
  ]
  source_id = "8MT9TFAJzDfUxTat4GhnxC"
}