import {
  to = segment_function.id-dfn_6a3b9fa84096face0430f6ed
  id = "dfn_6a3b9fa84096face0430f6ed"
}

resource "segment_function" "id-dfn_6a3b9fa84096face0430f6ed" {
  code          = "/**\n * Segment Destination Function: Support Journeys & Audiences\n */\nasync function onTrack(event, settings) {\n\tconst appId = settings.oneSignalAppId;\n\tconst endpoint = `https://api.onesignal.com/apps/$${appId}/users`;\n\n\tconst externalId = event.properties?.objectid;\n\tconst userEmail = event.properties?.email || event.context?.traits?.email;\n\n\t// 2. Build the payload\n\tconst payload = {\n\t\tproperties: {\n\t\t\ttags: {\n\t\t\t\tjourney_name: event.properties?.journey_metadata?.journey_name,\n\t\t\t\taudience_key: event.properties?.audience_key,\n\t\t\t\t// Include the dynamic audience boolean (e.g., nasser_live: true)\n\t\t\t\t...(event.properties?.audience_key\n\t\t\t\t\t? {\n\t\t\t\t\t\t\t[event.properties.audience_key]:\n\t\t\t\t\t\t\t\tevent.properties[event.properties.audience_key]\n\t\t\t\t\t\t}\n\t\t\t\t\t: {}),\n\t\t\t\t...event.properties\n\t\t\t},\n\t\t\tlanguage: event.context?.locale || 'en'\n\t\t},\n\t\tidentity: {\n\t\t\texternal_id: externalId\n\t\t}\n\t};\n\n\t// 3. Add Email if it exists\n\tif (userEmail) {\n\t\tpayload.subscriptions = [\n\t\t\t{ type: 'Email', token: userEmail, enabled: true }\n\t\t];\n\t}\n\n\tconst response = await fetch(endpoint, {\n\t\tmethod: 'POST',\n\t\theaders: {\n\t\t\t'Content-Type': 'application/json',\n\t\t\tAuthorization: `Basic $${settings.oneSignalRestApiKey}`\n\t\t},\n\t\tbody: JSON.stringify(payload)\n\t});\n\n\tif (!response.ok) {\n\t\tthrow new Error(\n\t\t\t`OneSignal Error: $${response.status} - $${await response.text()}`\n\t\t);\n\t}\n\n\treturn await response.json();\n}\n"
  description   = null
  display_name  = null
  logo_url      = "https://cdn-devcenter.segment.com/2e87e186-3bca-4d55-b93b-97705deb2a73.svg"
  resource_type = "DESTINATION"
  settings = [
    {
      description = ""
      label       = "Use as:"
      name        = "useAs"
      required    = false
      sensitive   = false
      type        = "ARRAY"
    },
    {
      description = ""
      label       = "oneSignalAppId"
      name        = "oneSignalAppId"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
    {
      description = ""
      label       = "oneSignalRestApiKey"
      name        = "oneSignalRestApiKey"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
  ]
}