view: state_2 {
  sql_table_name: ANALYTICS.STATE_2 ;;

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

  dimension: state_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.STATE_ID ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.STATE_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [state_name, region_name, state.state_id, state.state_name, state.region_name]
  }
}
