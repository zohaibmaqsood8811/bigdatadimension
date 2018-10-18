connection: "snowflake_metadata"

# include all the views
include: "*.view"

datagroup: bidatadiemnsion_looker_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bidatadiemnsion_looker_default_datagroup

explore: si_quieries {}
