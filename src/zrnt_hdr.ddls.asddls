@EndUserText.label : 'Rental header persistence'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
define table zrnt_hdr {
  key client : abap.clnt not null;
  key rental_uuid : sysuuid_x16 not null;
  rental_id : abap.char(12);
  requestor : abap.char(12);
  company_code : abap.char(4);
  plant : abap.char(4);
  purchasing_org : abap.char(4);
  supplier : abap.char(10);
  start_date : abap.dats;
  planned_end_date : abap.dats;
  actual_end_date : abap.dats;
  status : abap.char(20);
  currency_code : abap.cuky;
  estimated_cost : abap.dec(23,2);
  actual_cost : abap.dec(23,2);
  cost_center : abap.char(10);
  wbs_element : abap.char(24);
  purchase_requisition : abap.char(10);
  contract_number : abap.char(10);
  purchase_order : abap.char(10);
  off_contract : abap_boolean;
  business_purpose : abap.char(255);
  created_by : abp_creation_user;
  created_at : abp_creation_tstmpl;
  last_changed_by : abp_lastchange_user;
  last_changed_at : abp_lastchange_tstmpl;
  local_last_changed_at : abp_locinst_lastchange_tstmpl;
}
