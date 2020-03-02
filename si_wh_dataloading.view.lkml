view: si_wh_dataloading {
  sql_table_name: ANALYTICS.SI_WH_DATALOADING ;;

  dimension: avg_blocked {
    type: number
    sql: ${TABLE}."AVG_BLOCKED" ;;
  }

  dimension: avg_queued_load {
    type: number
    sql: ${TABLE}."AVG_QUEUED_LOAD" ;;
  }

  dimension: avg_queued_provisioning {
    type: number
    sql: ${TABLE}."AVG_QUEUED_PROVISIONING" ;;
  }

  dimension: avg_running {
    type: number
    sql: ${TABLE}."AVG_RUNNING" ;;
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

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."WAREHOUSE_NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [warehouse_name]
  }
}
