sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'techstore/customer/test/integration/FirstJourney',
		'techstore/customer/test/integration/pages/CustomersList',
		'techstore/customer/test/integration/pages/CustomersObjectPage',
		'techstore/customer/test/integration/pages/OrdersObjectPage'
    ],
    function(JourneyRunner, opaJourney, CustomersList, CustomersObjectPage, OrdersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('techstore/customer') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCustomersList: CustomersList,
					onTheCustomersObjectPage: CustomersObjectPage,
					onTheOrdersObjectPage: OrdersObjectPage
                }
            },
            opaJourney.run
        );
    }
);