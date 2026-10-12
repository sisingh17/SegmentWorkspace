import {
  to = segment_reverse_etl_model.id-a1qXwxEtyoc4gmmFcAfupz
  id = "a1qXwxEtyoc4gmmFcAfupz"
}

resource "segment_reverse_etl_model" "id-a1qXwxEtyoc4gmmFcAfupz" {
  description             = "Programatically generated rETL model that is associated with an Engage rETL audience"
  enabled                 = true
  name                    = "Linked Audience rETL Model"
  query                   = "WITH ID_GRAPH AS (\n\tSELECT \n\t\t\"CANONICAL_SEGMENT_ID\", \n\t\t\"SEGMENT_ID\"\n\tFROM \"SISINGH_SANDBOX\".\"SIMRAN_INTERNAL_UNIFY_DEMO_SPACE\".\"PROFILE_MERGES\"\n), EXTERNAL_ID_MAPPING AS (\n\tSELECT\n\t\tids.\"CANONICAL_SEGMENT_ID\" as \"CANONICAL_SEGMENT_ID\", \n\t\t\"TYPE\" as \"EXTERNAL_ID_TYPE\",\n\t\t\"VALUE\" as \"EXTERNAL_ID_VALUE\"\n\tFROM \"SISINGH_SANDBOX\".\"SIMRAN_INTERNAL_UNIFY_DEMO_SPACE\".\"USER_IDENTIFIERS\" AS ids\n\tINNER JOIN ID_GRAPH AS ig\n\t\tON ig.\"CANONICAL_SEGMENT_ID\" = ids.\"CANONICAL_SEGMENT_ID\"\n\tWHERE \"TYPE\" IN ('android.idfa','email','ios.idfa','user_id')\n), PROFILE_TRAITS AS (\n\tSELECT \n\t\tsids.\"CANONICAL_SEGMENT_ID\" AS \"CANONICAL_SEGMENT_ID\",\n\t\tMAX(tra.\"phone\") AS \"phone\"\n\tFROM EXTERNAL_ID_MAPPING sids\n\tLEFT JOIN (\n\t\tSELECT\n\t\t\ttraits.\"CANONICAL_SEGMENT_ID\" AS \"CANONICAL_SEGMENT_ID\",\n\t\t\tCASE WHEN \"NAME\" = 'phone' THEN traits.\"VALUE\" END AS \"phone\"\n\t\tFROM \"SISINGH_SANDBOX\".\"SIMRAN_INTERNAL_UNIFY_DEMO_SPACE\".\"USER_TRAITS\" AS traits\n\t\tWHERE FALSE \n\t\t\t OR (traits.\"NAME\" = 'phone' AND traits.\"VALUE\" IS NOT NULL)\n\t) tra\n\tON sids.\"CANONICAL_SEGMENT_ID\" = tra.\"CANONICAL_SEGMENT_ID\"\n\tWHERE sids.\"EXTERNAL_ID_TYPE\" IN ('android.idfa','email','ios.idfa','user_id')\n\tGROUP BY sids.\"CANONICAL_SEGMENT_ID\"\n), PROFILE_FILTER AS (\n\tSELECT \"CANONICAL_SEGMENT_ID\" FROM PROFILE_TRAITS PT\n\tWHERE (PT.\"phone\" IS NOT NULL)\n)\nSELECT DISTINCT * FROM (\n\tSELECT \"CANONICAL_SEGMENT_ID\" as \"MATCHID\", \"CANONICAL_SEGMENT_ID\"\n\tFROM PROFILE_FILTER\n) AS DEDUPED_PROJECTIONS"
  query_identifier_column = "matchId"
  source_id               = "wrC9EnoSptjZocoobcY5dW"
}