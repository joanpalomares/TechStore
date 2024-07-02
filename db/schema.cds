using {
  Currency,
  cuid,
  managed,
  sap.common.CodeList as CodeList
} from '@sap/cds/common';

using from '@sap/cds-common-content';

namespace techStore;

entity Products : CodeList {
  key ID       : String;

      @Semantics.amount.currencyCode: 'currency'
      price    : Decimal(9, 2);
      currency : Currency;
      orders   : Association to many Orders
                   on orders.product = $self;
}

entity Customers : cuid {
  name    : String;
  email   : String;
  address : String;
  orders  : Association to many Orders
              on orders.customer = $self;
}

entity Orders : cuid, managed {
  customer : Association to Customers;
  product  : Association to Products;
  quantity : Integer;
}
