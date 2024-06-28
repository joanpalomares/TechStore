using TechStoreService as service from '../../srv/admin-service';
annotate service.Customers with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Name}',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Value : orders.product.name,
                Label : '{i18n>Product}',
            },
            {
                $Type : 'UI.DataField',
                Value : orders.quantity,
                Label : '{i18n>Quantity}',
            },
            {
                $Type : 'UI.DataField',
                Value : orders.product.price,
                Label : '{i18n>Price}',
            },
            {
                $Type : 'UI.DataField',
                Value : orders.product.descr,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Name}',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Email}',
            Value : email,
        },
        {
            $Type : 'UI.DataField',
            Value : orders.product.name,
            Label : '{i18n>Product}',
        },
        {
            $Type : 'UI.DataField',
            Value : orders.quantity,
            Label : '{i18n>Quantity}',
        },
    ],
);

annotate service.Customers with @(
    UI.SelectionFields : [
        name,
        email,
    ]
);
annotate service.Customers with {
    email @Common.Label : '{i18n>Email}'
};
annotate service.Customers with {
    name @Common.Label : '{i18n>Name}'
};
annotate service.Orders with {
    customer @Common.Label : 'orders/customer_ID'
};
annotate service.Customers with {
    address @Common.Label : '{i18n>Address}'
};
annotate service.Customers with @(
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>ContactDetails}',
            ID : 'CustomerDetails',
            Target : '@UI.FieldGroup#CustomerDetails',
        },
    ],
    UI.FieldGroup #CustomerDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : name,
            },{
                $Type : 'UI.DataField',
                Value : email,
            },{
                $Type : 'UI.DataField',
                Value : address,
            },],
    }
);
annotate service.Customers with @(
    UI.HeaderInfo : {
        TypeName : '{i18n>Customer}',
        TypeNamePlural : '{i18n>Customers}',
        Title : {
            $Type : 'UI.DataField',
            Value : name,
        },
    }
);
