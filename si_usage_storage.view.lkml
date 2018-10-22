view: si_usage_storage {
  sql_table_name: ANALYTICS.SI_USAGE_STORAGE ;;

  dimension: failsafe_bytes {
    type: number
    sql: ${TABLE}."FAILSAFE_BYTES" ;;
  }

  measure: MB_Failsafe_Storage {
    type: sum
    sql: ${TABLE}."FAILSAFE_BYTES"/1000000 ;;
  }



  dimension: stage_bytes {
    type: number
    sql: ${TABLE}."STAGE_BYTES" ;;
  }

  measure: MB_Stage_Storage {
    type: sum
    sql: ${TABLE}."STAGE_BYTES"/1000000 ;;
  }


  dimension: storage_bytes {
    type: number
    sql: ${TABLE}."STORAGE_BYTES" ;;
  }

  measure: MBStorage {
    type: sum
    sql: ${TABLE}."STORAGE_BYTES" /1000000;;
  }

  dimension_group: usage {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."USAGE_DATE" ;;
  }

  parameter:  Region{
    type: string
    allowed_value: { value: "AWS-US" }
    allowed_value: { value: "AWS-ASIA" }
    allowed_value: { value: "AWS-EU(Frankfurt)" }
    allowed_value: { value: "AWS-EU (Dublin)"}
    allowed_value: { value: "AWS-AZURE East(US-2)"}
        }




  measure: Region_Values {
    label_from_parameter: Region
    sql:
       CASE
         WHEN {% parameter Region %} = 'AWS-US' THEN  ${MBStorage}*23
         WHEN {% parameter Region %} = 'AWS-ASIA' THEN ${MBStorage}*25
         WHEN {% parameter Region %} = 'AWS-EU(Frankfurt)' THEN  ${MBStorage}*24.50
         WHEN {% parameter Region %} = 'AWS-EU (Dublin)' THEN   ${MBStorage}*23
         WHEN {% parameter Region %} = 'AWS-AZURE East(US-2)' THEN   ${MBStorage}*23
         ELSE
           NULL
       END ;;
  }





  measure: count {
    type: count
    drill_fields: []
  }
}
