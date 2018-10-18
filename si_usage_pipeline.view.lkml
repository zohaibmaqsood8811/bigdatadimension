view: si_usage_pipeline {
  sql_table_name: ANALYTICS.SI_USAGE_PIPELINE ;;

  dimension: bytes_inserted {
    type: number
    sql: ${TABLE}."BYTES_INSERTED" ;;
  }

  dimension: credits_used {
    type: number
    sql: ${TABLE}."CREDITS_USED" ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}."END_TIME" ;;
  }

  dimension: files_inserted {
    type: number
    sql: ${TABLE}."FILES_INSERTED" ;;
  }

  dimension: pipe_name {
    type: string
    sql: ${TABLE}."PIPE_NAME" ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}."START_TIME" ;;
  }

  measure: count {
    type: count
    drill_fields: [pipe_name]
  }
}
