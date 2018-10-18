view: si_wh_creditsmetering {
  sql_table_name: ANALYTICS.SI_WH_CREDITSMETERING ;;

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
