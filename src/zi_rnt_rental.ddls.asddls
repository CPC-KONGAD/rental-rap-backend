@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Rental Root Interface Entity'
define root view entity ZI_RNT_RENTAL as select from zrnt_hdr {
 key rental_uuid as RentalUuid, rental_id as RentalId, requestor as Requestor, company_code as CompanyCode, plant as Plant,
 purchasing_org as PurchasingOrganization, supplier as Supplier, start_date as StartDate, planned_end_date as PlannedEndDate, actual_end_date as ActualEndDate,
 status as Status, currency_code as CurrencyCode,
 @Semantics.amount.currencyCode: 'CurrencyCode' estimated_cost as EstimatedCost,
 @Semantics.amount.currencyCode: 'CurrencyCode' actual_cost as ActualCost, cost_center as CostCenter, wbs_element as WbsElement,
 purchase_requisition as PurchaseRequisition, contract_number as ContractNumber, purchase_order as PurchaseOrder, off_contract as OffContract,
 business_purpose as BusinessPurpose, created_by as CreatedBy, created_at as CreatedAt, last_changed_by as LastChangedBy,
 last_changed_at as LastChangedAt, local_last_changed_at as LocalLastChangedAt }
