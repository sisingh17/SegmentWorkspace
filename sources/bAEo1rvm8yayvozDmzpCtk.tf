import {
  to = segment_source.id-bAEo1rvm8yayvozDmzpCtk
  id = "bAEo1rvm8yayvozDmzpCtk"
}

resource "segment_source" "id-bAEo1rvm8yayvozDmzpCtk" {
  enabled = true
  labels = [
    {
      key   = "environment"
      value = "demo"
    },
  ]
  metadata = {
    id = "U9mT0bPcI6"
  }
  name     = "SageBackendDemo"
  settings = jsonencode({})
  slug     = "sagebackenddemo"
}