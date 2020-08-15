
do
  custName = input( "\n\nEnter your name: ", "s" );
  custAddress = input( "Enter your address: ", "s" );
  amtOfPurchase = input( "Enter purchase amount: ", "s" );
  purchaseType = input( "Enter purchase type (L - Laptop, D - Desktop): ", "s");

  if( ! ( strcmp( "L", purchaseType ) || strcmp( "l", purchaseType ) || strcmp( "D", purchaseType ) || strcmp( "d", purchaseType ) ) )
    printf( "\nInvalid type of purchase, must be either L or D!\n" );
  else
    purchaseAmt = str2double( strtrim( strrep( amtOfPurchase, "$", " " ) ) );
    discountPercentage = 0;
    if( strcmp( "L", purchaseType ) || strcmp( "l", purchaseType ) )
      if( ( 251 <= purchaseAmt ) && ( 570 >= purchaseAmt ) )
        discountPercentage = 5;
      elseif( ( 571 <= purchaseAmt ) && ( 1000 >= purchaseAmt ) )
        discountPercentage = 7.5;
      elseif( ( 1001 <= purchaseAmt ) )
        discountPercentage = 10;
      endif
    elseif( strcmp( "D", purchaseType ) || strcmp( "d", purchaseType ) )
      if( ( 0 <= purchaseAmt ) && ( 250 >= purchaseAmt ) )
        discountPercentage = 5;
      elseif( ( 251 <= purchaseAmt ) && ( 570 >= purchaseAmt ) )
        discountPercentage = 7.6;
      elseif( ( 571 <= purchaseAmt ) && ( 1000 >= purchaseAmt ) )
        discountPercentage = 10;
      elseif( ( 1001 <= purchaseAmt ) )
        discountPercentage = 15;
      endif
    endif
  
    totalDiscount = ( discountPercentage / 100 ) * purchaseAmt;
    netAmount = purchaseAmt - totalDiscount;
  
    printf( "\n\nName: %s\n", custName );
    printf( "Address: %s\n", custAddress );
    printf( "Net amount: %0.2f\n", netAmount );
  endif
  
  do
    ans = input( "\nDo you wish to continue purchase (Y/N) ?", "s" );
  until( strcmp( "Y", ans ) || strcmp( "y", ans ) || strcmp( "N", ans ) || strcmp( "n", ans ) )

until( strcmp( "N", ans ) || strcmp( "n", ans ) )

printf( "\nYou have exited purchase screen.  Goodbye.\n" );

