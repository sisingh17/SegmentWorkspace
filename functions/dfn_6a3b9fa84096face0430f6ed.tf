import {
  to = segment_function.id-dfn_6a3b9fa84096face0430f6ed
  id = "dfn_6a3b9fa84096face0430f6ed"
}

resource "segment_function" "id-dfn_6a3b9fa84096face0430f6ed" {
  code          = "/**\n * Segment Destination Function: Support Journeys & Audiences\n */\nasync function onTrack(event, settings) {\n\tconst appId = settings.oneSignalAppId;\n\tconst endpoint = `https://api.onesignal.com/apps/$${appId}/users`;\n\n\t// Fix: Extracting external ID directly from the root userId field\n\tconst externalId = event.userId;\n\tconst userEmail = event.properties?.email || event.context?.traits?.email;\n\n\t// 1. Check the destination type setting\n\tconst destinationType = settings.usedAsADestinationTo?.toLowerCase();\n\n\t// 2. Start with a catch-all for ALL incoming properties\n\tconst tags = {\n\t\t...event.properties\n\t};\n\t//Removing unnecessary event properties so that only explicitly configured traits are sent to One Signal\n\tdelete tags.journey_metadata;\n\tdelete tags.journey_context;\n\n\t// 3. Apply selective logic based on configuration mode OR exit gracefully\n\tif (destinationType === 'journey') {\n\t\tif (event.properties?.journey_metadata?.journey_name) {\n\t\t\ttags.journey_name = event.properties.journey_metadata.journey_name;\n\t\t\tconsole.log(tags);\n\t\t}\n\t\tdelete tags.audience_key;\n\t} else if (destinationType === 'audience') {\n\t\tif (event.properties?.audience_key) {\n\t\t\tconst audienceKey = event.properties.audience_key;\n\t\t\tif (event.properties[audienceKey] !== undefined) {\n\t\t\t\ttags[audienceKey] = event.properties[audienceKey];\n\t\t\t}\n\t\t\tdelete tags.audience_key;\n\t\t\tconsole.log(tags);\n\t\t}\n\t} else {\n\t\tconsole.log(\n\t\t\t`Skipping event. 'usedAsADestinationTo' setting must be 'audience' or 'journey'. Found: '$${settings.usedAsADestinationTo}'`\n\t\t);\n\t\treturn;\n\t}\n\n\t// 4. Build the final payload\n\tconst payload = {\n\t\tproperties: {\n\t\t\ttags: tags,\n\t\t\tlanguage: event.context?.locale || 'en'\n\t\t},\n\t\tidentity: {\n\t\t\texternal_id: externalId\n\t\t}\n\t};\n\n\t// 5. Add Email if it exists\n\tif (userEmail) {\n\t\tpayload.subscriptions = [\n\t\t\t{ type: 'Email', token: userEmail, enabled: true }\n\t\t];\n\t\t// Deletes 'email' from your tags as it is sent under subscriptions\n\t\tdelete payload.properties.tags.email;\n\t}\n\n\tconst response = await fetch(endpoint, {\n\t\tmethod: 'POST',\n\t\theaders: {\n\t\t\t'Content-Type': 'application/json',\n\t\t\tAuthorization: `Basic $${settings.oneSignalRestApiKey}`\n\t\t},\n\t\tbody: JSON.stringify(payload)\n\t});\n\n\tif (!response.ok) {\n\t\tthrow new Error(\n\t\t\t`OneSignal Error: $${response.status} - $${await response.text()}`\n\t\t);\n\t}\n\n\treturn await response.json();\n}\n"
  description   = null
  display_name  = null
  logo_url      = "https://cdn-devcenter.segment.com/2e87e186-3bca-4d55-b93b-97705deb2a73.svg"
  resource_type = "DESTINATION"
  settings = [
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
    {
      description = "Based on whether you are connecting it to an Audience or Journey, type in \"Audience\" or \"Journey\" below"
      label       = "Used as a destination to:"
      name        = "usedAsADestinationTo"
      required    = true
      sensitive   = false
      type        = "STRING"
    },
  ]
}