CLASS lhc_Rental DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS SetDefaults FOR DETERMINE ON MODIFY IMPORTING keys FOR Rental~SetDefaults.
    METHODS ValidateDates FOR VALIDATE ON SAVE IMPORTING keys FOR Rental~ValidateDates.
    METHODS Submit FOR MODIFY IMPORTING keys FOR ACTION Rental~Submit RESULT result.
    METHODS OffRent FOR MODIFY IMPORTING keys FOR ACTION Rental~OffRent RESULT result.
ENDCLASS.

CLASS lhc_Rental IMPLEMENTATION.
  METHOD SetDefaults.
    READ ENTITIES OF ZI_RNT_RENTAL IN LOCAL MODE ENTITY Rental FIELDS ( Status CurrencyCode Requestor )
      WITH CORRESPONDING #( keys ) RESULT DATA(lt_rentals).
    MODIFY ENTITIES OF ZI_RNT_RENTAL IN LOCAL MODE ENTITY Rental UPDATE FIELDS ( Status CurrencyCode Requestor )
      WITH VALUE #( FOR r IN lt_rentals ( %tky = r-%tky
        Status = COND #( WHEN r-Status IS INITIAL THEN 'DRAFT' ELSE r-Status )
        CurrencyCode = COND #( WHEN r-CurrencyCode IS INITIAL THEN 'USD' ELSE r-CurrencyCode )
        Requestor = COND #( WHEN r-Requestor IS INITIAL THEN sy-uname ELSE r-Requestor ) ) ).
  ENDMETHOD.
  METHOD ValidateDates.
    READ ENTITIES OF ZI_RNT_RENTAL IN LOCAL MODE ENTITY Rental FIELDS ( StartDate PlannedEndDate ActualEndDate )
      WITH CORRESPONDING #( keys ) RESULT DATA(lt_rentals).
    LOOP AT lt_rentals INTO DATA(r).
      IF r-PlannedEndDate < r-StartDate OR ( r-ActualEndDate IS NOT INITIAL AND r-ActualEndDate < r-StartDate ).
        APPEND VALUE #( %tky = r-%tky ) TO failed-rental.
        APPEND VALUE #( %tky = r-%tky %msg = new_message_with_text( severity = if_abap_behv_message=>severity-error text = 'Rental end date cannot be before start date' ) ) TO reported-rental.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.
  METHOD Submit.
    MODIFY ENTITIES OF ZI_RNT_RENTAL IN LOCAL MODE ENTITY Rental UPDATE FIELDS ( Status )
      WITH VALUE #( FOR k IN keys ( %tky = k-%tky Status = 'SUBMITTED' ) ).
    READ ENTITIES OF ZI_RNT_RENTAL IN LOCAL MODE ENTITY Rental ALL FIELDS WITH CORRESPONDING #( keys ) RESULT DATA(lt_rentals).
    result = VALUE #( FOR r IN lt_rentals ( %tky = r-%tky %param = r ) ).
  ENDMETHOD.
  METHOD OffRent.
    MODIFY ENTITIES OF ZI_RNT_RENTAL IN LOCAL MODE ENTITY Rental UPDATE FIELDS ( Status ActualEndDate )
      WITH VALUE #( FOR k IN keys ( %tky = k-%tky Status = 'OFF_RENT' ActualEndDate = sy-datum ) ).
    READ ENTITIES OF ZI_RNT_RENTAL IN LOCAL MODE ENTITY Rental ALL FIELDS WITH CORRESPONDING #( keys ) RESULT DATA(lt_rentals).
    result = VALUE #( FOR r IN lt_rentals ( %tky = r-%tky %param = r ) ).
  ENDMETHOD.
ENDCLASS.
