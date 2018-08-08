explore: digital_roster{

}

view: digital_roster {
  sql_table_name: OrgCharts.DigitalRoster ;;

  dimension: asgn_supervisor_name {
    type: string
    sql: ${TABLE}.Asgn_Supervisor_Name ;;
  }

  dimension: budgeted_org_gl_cost_center {
    type: number
    sql: ${TABLE}.Budgeted_Org_Gl_Cost_Center ;;
  }

  dimension: comments__replacement_or_new_ {
    type: string
    sql: ${TABLE}.Comments__Replacement_or_New_ ;;
  }

  dimension: fy18_budget {
    type: string
    sql: ${TABLE}.FY18_Budget ;;
  }

  dimension: job_code {
    type: number
    sql: ${TABLE}.Job_Code ;;
  }

  dimension: job_curr_grade {
    type: string
    sql: ${TABLE}.Job_Curr_Grade ;;
  }

  dimension: job_title {
    type: string
    sql: ${TABLE}.Job_Title ;;
  }

  dimension: leader {
    type: string
    sql: ${TABLE}.Leader ;;
  }

  dimension: leader_3 {
    type: string
    sql: ${TABLE}.Leader_3 ;;
  }

  dimension: leader_direct {
    type: string
    sql: ${TABLE}.Leader_Direct ;;
  }

  dimension: org_organization_name {
    type: string
    sql: ${TABLE}.Org_Organization_Name ;;
  }

  dimension: per_emp_nbr {
    type: string
    sql: ${TABLE}.Per_Emp_Nbr ;;
  }

  dimension: per_full_name {
    type: string
    sql: ${TABLE}.Per_Full_Name ;;
  }

  dimension: position_id {
    type: string
    sql: ${TABLE}.Position_ID ;;
  }

  dimension: reports_to_ {
    type: string
    sql: ${TABLE}.Reports_to_ ;;
  }

  dimension: role_type {
    type: string
    sql: ${TABLE}.Role_Type ;;
  }

  dimension: string_field_16 {
    type: string
    sql: ${TABLE}.string_field_16 ;;
  }

  dimension: string_field_17 {
    type: string
    sql: ${TABLE}.string_field_17 ;;
  }

  measure: count {
    type: count
    drill_fields: [per_full_name, org_organization_name, asgn_supervisor_name]
  }
}
