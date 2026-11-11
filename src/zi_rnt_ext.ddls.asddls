@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Rental Extension Interface Entity'
define view entity ZI_RNT_EXT as select from zrnt_ext {
 key extension_uuid as ExtensionUuid, rental_uuid as RentalUuid, previous_end_date as PreviousEndDate, requested_end_date as RequestedEndDate,
 @Semantics.amount.currencyCode: 'CurrencyCode' additional_cost as AdditionalCost, currency_code as CurrencyCode, reason as Reason,
 approval_status as ApprovalStatus, created_by as CreatedBy, created_at as CreatedAt, last_changed_by as LastChangedBy,
 last_changed_at as LastChangedAt, local_last_changed_at as LocalLastChangedAt }
