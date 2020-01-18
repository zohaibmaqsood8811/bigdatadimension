view: state {
  sql_table_name: ANALYTICS.STATE ;;
  drill_fields: [state_id]

  dimension: state_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.STATE_ID ;;
  }

  dimension: active_flag {
    type: string
    sql: ${TABLE}.ACTIVE_FLAG ;;
  }

  dimension_group: rec_end {
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
    sql: ${TABLE}.REC_END_DATE ;;
  }

  dimension_group: rec_start {
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
    sql: ${TABLE}.REC_START_DATE ;;
  }

  dimension: region_name {
    type: string
    sql: ${TABLE}.REGION_NAME ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.STATE_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [state_id, state_name, region_name, state_2.count]
  }
}
