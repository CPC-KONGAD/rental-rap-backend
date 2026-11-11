@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Rental Invoice Exception Interface Entity'
define view entity ZI_RNT_INVEXC as select from zrnt_invexc {
 key exception_uuid as ExceptionUuid, rental_uuid as RentalUuid, supplier_invoice as SupplierInvoice, fiscal_year as FiscalYear,
 exception_type as ExceptionType, expected_quantity as ExpectedQuantity, invoiced_quantity as InvoicedQuantity, expected_rate as ExpectedRate,
 invoiced_rate as InvoicedRate, expected_duration as ExpectedDuration, invoiced_duration as InvoicedDuration,
 @Semantics.amount.currencyCode: 'CurrencyCode' variance_amount as VarianceAmount, currency_code as CurrencyCode,
 resolution_status as ResolutionStatus, resolution_text as ResolutionText, created_by as CreatedBy, created_at as CreatedAt,
 last_changed_by as LastChangedBy, last_changed_at as LastChangedAt, local_last_changed_at as LocalLastChangedAt }
