view: si_quieries {
  sql_table_name: ANALYTICS.SI_QUIERIES ;;

  dimension: compilation_time {
    type: number
    sql: ${TABLE}.COMPILATION_TIME ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}.DATABASE_NAME ;;
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
    sql: ${TABLE}.END_TIME ;;
  }

  dimension: error_code {
    type: number
    sql: ${TABLE}.ERROR_CODE ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}.ERROR_MESSAGE ;;
  }

  dimension: execution_status {
    type: string
    sql: ${TABLE}.EXECUTION_STATUS ;;
  }

  dimension: execution_time {
    type: number
    sql: ${TABLE}.EXECUTION_TIME ;;
  }

  dimension: outbound_data_transfer_bytes {
    type: number
    sql: ${TABLE}.OUTBOUND_DATA_TRANSFER_BYTES ;;
  }

  dimension: outbound_data_transfer_cloud {
    type: string
    sql: ${TABLE}.OUTBOUND_DATA_TRANSFER_CLOUD ;;
  }

  dimension: outbound_data_transfer_region {
    type: string
    sql: ${TABLE}.OUTBOUND_DATA_TRANSFER_REGION ;;
  }

  dimension: query_id {
    type: string
    sql: ${TABLE}.QUERY_ID ;;
  }

  dimension: query_tag {
    type: string
    sql: ${TABLE}.QUERY_TAG ;;
  }

  dimension: query_text {
    type: string
    sql: ${TABLE}.QUERY_TEXT ;;
  }

  dimension: query_type {
    type: string
    sql: ${TABLE}.QUERY_TYPE ;;
  }

  dimension: queued_overload_time {
    type: number
    sql: ${TABLE}.QUEUED_OVERLOAD_TIME ;;
  }

  dimension: queued_provisioning_time {
    type: number
    sql: ${TABLE}.QUEUED_PROVISIONING_TIME ;;
  }

  dimension: queued_repair_time {
    type: number
    sql: ${TABLE}.QUEUED_REPAIR_TIME ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}.ROLE_NAME ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}.SCHEMA_NAME ;;
  }

  dimension: session_id {
    type: number
    sql: ${TABLE}.SESSION_ID ;;
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
    sql: ${TABLE}.START_TIME ;;
  }

  dimension: total_elapsed_time {
    type: number
    sql: ${TABLE}.TOTAL_ELAPSED_TIME ;;
  }

  dimension: transaction_blocked_time {
    type: number
    sql: ${TABLE}.TRANSACTION_BLOCKED_TIME ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.USER_NAME ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}.WAREHOUSE_NAME ;;
  }

  dimension: warehouse_size {
    type: string
    sql: ${TABLE}.WAREHOUSE_SIZE ;;
  }

  dimension: warehouse_type {
    type: string
    sql: ${TABLE}.WAREHOUSE_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [database_name, schema_name, user_name, role_name, warehouse_name]
  }
}
