using { vegetableStoreSrv } from '../srv/service.cds';

annotate vegetableStoreSrv.Salad with @odata.draft.enabled;
annotate vegetableStoreSrv.Warehouse with @odata.draft.enabled;
annotate vegetableStoreSrv.Discount with @odata.draft.enabled;
annotate vegetableStoreSrv.Warehouse with @cds.odata.valuelist;
annotate vegetableStoreSrv.Discount with @cds.odata.valuelist;
annotate vegetableStoreSrv.Salad with @cds.odata.valuelist;
annotate vegetableStoreSrv.Product with @cds.odata.valuelist;
annotate vegetableStoreSrv.Product with @UI.HeaderInfo: { TypeName: 'Product', TypeNamePlural: 'Products', Title: { Value: productName } };
annotate vegetableStoreSrv.Product with {
  ID @Common.Text: { $value: productName, ![@UI.TextArrangement]: #TextOnly }
};
annotate vegetableStoreSrv.Product with @UI.Identification: [{ Value: productName }];
annotate vegetableStoreSrv.Product with {
  productName @title: 'Product Name';
  productDescription @title: 'Product Description';
  price @title: 'Price'
};

annotate vegetableStoreSrv.Product with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: productName },
    { $Type: 'UI.DataField', Value: productDescription },
    { $Type: 'UI.DataField', Value: price },
    { $Type: 'UI.DataField', Label: 'Salad', Value: salad_ID },
    { $Type: 'UI.DataField', Label: 'Discount', Value: discount_ID }
];

annotate vegetableStoreSrv.Product with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: productName },
    { $Type: 'UI.DataField', Value: productDescription },
    { $Type: 'UI.DataField', Value: price },
    { $Type: 'UI.DataField', Label: 'Salad', Value: salad_ID },
    { $Type: 'UI.DataField', Label: 'Discount', Value: discount_ID }
  ]
};

annotate vegetableStoreSrv.Product with {
  warehouse @Common.Text: { $value: warehouse.warehouseName, ![@UI.TextArrangement]: #TextOnly };
  salad @Common.Text: { $value: salad.saladName, ![@UI.TextArrangement]: #TextOnly };
  discount @Common.Text: { $value: discount.discountName, ![@UI.TextArrangement]: #TextOnly }
};

annotate vegetableStoreSrv.Product with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate vegetableStoreSrv.Salad with @UI.HeaderInfo: { TypeName: 'Salad', TypeNamePlural: 'Salads', Title: { Value: saladName } };
annotate vegetableStoreSrv.Salad with {
  ID @Common.Text: { $value: saladName, ![@UI.TextArrangement]: #TextOnly }
};
annotate vegetableStoreSrv.Salad with @UI.Identification: [{ Value: saladName }];
annotate vegetableStoreSrv.Salad with {
  saladName @title: 'Salad Name';
  recipe @title: 'Recipe'
};

annotate vegetableStoreSrv.Salad with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: saladName },
    { $Type: 'UI.DataField', Value: recipe }
];

annotate vegetableStoreSrv.Salad with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: saladName },
    { $Type: 'UI.DataField', Value: recipe }
  ]
};

annotate vegetableStoreSrv.Salad with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate vegetableStoreSrv.Warehouse with @UI.HeaderInfo: { TypeName: 'Warehouse', TypeNamePlural: 'Warehouses', Title: { Value: warehouseName } };
annotate vegetableStoreSrv.Warehouse with {
  ID @Common.Text: { $value: warehouseName, ![@UI.TextArrangement]: #TextOnly }
};
annotate vegetableStoreSrv.Warehouse with @UI.Identification: [{ Value: warehouseName }];
annotate vegetableStoreSrv.Warehouse with {
  warehouseName @title: 'Warehouse Name';
  stock @title: 'Stock'
};

annotate vegetableStoreSrv.Warehouse with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: warehouseName },
    { $Type: 'UI.DataField', Value: stock }
];

annotate vegetableStoreSrv.Warehouse with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: warehouseName },
    { $Type: 'UI.DataField', Value: stock }
  ]
};

annotate vegetableStoreSrv.Warehouse with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' },
  { $Type : 'UI.ReferenceFacet', ID : 'Product', Target : 'products/@UI.LineItem' }
];

annotate vegetableStoreSrv.Discount with @UI.HeaderInfo: { TypeName: 'Discount', TypeNamePlural: 'Discounts', Title: { Value: discountName } };
annotate vegetableStoreSrv.Discount with {
  ID @Common.Text: { $value: discountName, ![@UI.TextArrangement]: #TextOnly }
};
annotate vegetableStoreSrv.Discount with @UI.Identification: [{ Value: discountName }];
annotate vegetableStoreSrv.Discount with {
  discountName @title: 'Discount Name';
  discountPercentage @title: 'Discount Percentage'
};

annotate vegetableStoreSrv.Discount with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: discountName },
    { $Type: 'UI.DataField', Value: discountPercentage },
    { $Type: 'UI.DataField', Label: 'Product', Value: product_ID }
];

annotate vegetableStoreSrv.Discount with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: discountName },
    { $Type: 'UI.DataField', Value: discountPercentage },
    { $Type: 'UI.DataField', Label: 'Product', Value: product_ID }
  ]
};

annotate vegetableStoreSrv.Discount with {
  product @Common.Text: { $value: product.productName, ![@UI.TextArrangement]: #TextOnly }
};

annotate vegetableStoreSrv.Discount with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

