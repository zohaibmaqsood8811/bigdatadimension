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

measure: Account_Storage_TB {
  type: sum
  sql: ((${storage_bytes}/1000000)+(failsafe_bytes/1000000)+(${stage_bytes}/1000000))/1000000;;
}


  measure: Account_Storage_MB {
    type: sum
    sql: ((${storage_bytes}/1000000)+(failsafe_bytes/1000000)+(${stage_bytes}/1000000));;
  }



  measure: Region_Values {
    label_from_parameter: Region
    sql:
       CASE
         WHEN {% parameter Region %} = 'AWS-US' THEN (${Account_Storage_TB})*23
         WHEN {% parameter Region %} = 'AWS-ASIA' THEN (${Account_Storage_TB})*25
         WHEN {% parameter Region %} = 'AWS-EU(Frankfurt)' THEN  (${Account_Storage_TB})*24.50
         WHEN {% parameter Region %} = 'AWS-EU (Dublin)' THEN   (${Account_Storage_TB})*23
         WHEN {% parameter Region %} = 'AWS-AZURE East(US-2)' THEN   (${Account_Storage_TB})*23
         ELSE
           NULL
       END ;;
  }


  dimension: Region_Price {
    label_from_parameter: Region
    sql:
       CASE
         WHEN {% parameter Region %} = 'AWS-US' THEN '23 per Terabyte per month for customer deployed in AWS-US'
         WHEN {% parameter Region %} = 'AWS-ASIA' THEN '25 per Terabyte per month for customer deployed in AWS-ASIA'
         WHEN {% parameter Region %} = 'AWS-EU(Frankfurt)' THEN '24.50 per Terabyte per month for customer deployed in AWS-EU(Frankfurt)'
         WHEN {% parameter Region %} = 'AWS-EU (Dublin)' THEN  '23 per Terabyte per month for customer deployed in AWS-EU (Dublin)'
         WHEN {% parameter Region %} = 'AWS-AZURE East(US-2)' THEN   '23 per Terabyte per month for customer deployed in AWS-AZURE East(US-2)'
         ELSE
           NULL
       END ;;
  }




  measure: count {
    type: count
    drill_fields: []
  }
}
