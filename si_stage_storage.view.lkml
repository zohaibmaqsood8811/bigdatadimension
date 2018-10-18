view: si_stage_storage {
  sql_table_name: ANALYTICS.SI_STAGE_STORAGE ;;

  dimension: average_bytes {
    type: string
    sql: ${TABLE}."AVERAGE_BYTES" ;;
  }

  dimension_group: usage {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."USAGE_DATE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
