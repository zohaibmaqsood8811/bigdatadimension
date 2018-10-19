view: si_quieries {
  sql_table_name: ANALYTICS.SI_QUIERIES ;;

  dimension: compilation_time {
    type: number
    sql: ${TABLE}."COMPILATION_TIME" ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
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

  dimension: error_code {
    type: number
    sql: ${TABLE}."ERROR_CODE" ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}."ERROR_MESSAGE" ;;
  }

  dimension: execution_status {
    type: string
    sql: ${TABLE}."EXECUTION_STATUS" ;;
  }

  dimension: execution_time {
    type: number
    sql: ${TABLE}."EXECUTION_TIME" ;;
  }

  dimension: outbound_data_transfer_bytes {
    type: number
    sql: ${TABLE}."OUTBOUND_DATA_TRANSFER_BYTES" ;;
  }

  dimension: outbound_data_transfer_cloud {
    type: string
    sql: ${TABLE}."OUTBOUND_DATA_TRANSFER_CLOUD" ;;
  }

  dimension: outbound_data_transfer_region {
    type: string
    sql: ${TABLE}."OUTBOUND_DATA_TRANSFER_REGION" ;;
  }

  dimension: query_id {
    type: string
    sql: ${TABLE}.query_id ;;
      }

 measure: query_count {
  type:  count_distinct
  sql: ${TABLE}.query_id ;;
   }



  dimension: query_tag {
    type: string
    sql: ${TABLE}."QUERY_TAG" ;;
  }

  dimension: query_text {
    type: string
    sql: ${TABLE}."QUERY_TEXT" ;;
  }

  dimension: query_type {
    type: string
    sql: ${TABLE}."QUERY_TYPE" ;;
  }

  dimension: queued_overload_time {
    type: number
    sql: ${TABLE}."QUEUED_OVERLOAD_TIME" ;;
  }

  dimension: queued_provisioning_time {
    type: number
    sql: ${TABLE}."QUEUED_PROVISIONING_TIME" ;;
  }

  dimension: queued_repair_time {
    type: number
    sql: ${TABLE}."QUEUED_REPAIR_TIME" ;;
  }

  dimension: role_name {
    type: string
    sql: ${TABLE}."ROLE_NAME" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }

  dimension: session_id {
    type: number
    sql: ${TABLE}."SESSION_ID" ;;
  }


   measure: No_of_Sessions{
    type: count_distinct
    sql: ${TABLE}."SESSION_ID" ;;
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

  dimension: total_elapsed_time {
    type: number
    sql: ${TABLE}."TOTAL_ELAPSED_TIME" ;;
  }




  dimension: transaction_blocked_time {
    type: number
    sql: ${TABLE}."TRANSACTION_BLOCKED_TIME" ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}."USER_NAME" ;;
  }


  dimension: looker_image {
    type: string
    sql: ${TABLE}."USER_NAME";;
    html: <img src="https://s3.amazonaws.com/lookerpoc/User_Images+/{{value}}.png" width= 50 height = 50  />;;
  }

  dimension: snowinsight_logo {
    type: string
    sql: ${TABLE}."USER_NAME";;
    html: <img src="https://s3.amazonaws.com/lookerpoc/User_Images%20/snowinsight%20Blue.png?response-content-disposition=inline&X-Amz-Security-Token=FQoGZXIvYXdzEIj%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaDA9cCT%2FiV5OPak2BaSL6ASvUM%2BP8hRpAELZeuIIb29n37XJ3llI7ASw6xNE5wedcj7FetOA7WIF7sJoOLTtN6JUrcCK14Tt1xtf8vOzIUI7ZuxcxNGTlBJdbJ8N0Qr3oFvEBR%2BnrIVhA%2By4fOgF0RdeMDeTkFEgBgywp45osMy73HvOetDERuL2SSB5MWaZ57XMhbM%2F5Nj%2BwAP34V%2BcpAtIJjERqfvjjTY1Qo12dhhdkLqwRkL1N2rm5Su6PkW5totpR6Cdetv5Th7%2B9JMqPVdPQcAzZK%2BKZ216Eb8xIaiua3u%2BDygGJtcx2IGYK27844TqsQhswcax7%2BDodU1xevksG%2FCMSxRfGTZsoh9On3gU%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20181019T143834Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIATVP2FMU2ADNCPYFB%2F20181019%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=622be26afa6b59a8f5e6e242e05406713f812debc01eec950e70c816fc70de6d" width= 200 height = 70  />;;
  }


  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."WAREHOUSE_NAME" ;;
  }

  dimension: warehouse_size {
    type: string
    sql: ${TABLE}."WAREHOUSE_SIZE" ;;
  }

  dimension: warehouse_type {
    type: string
    sql: ${TABLE}."WAREHOUSE_TYPE" ;;
  }

  measure: count {
    type: count
    drill_fields: [database_name, schema_name, user_name, role_name, warehouse_name]
  }
}
