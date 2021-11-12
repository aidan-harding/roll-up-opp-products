Pricebook2 standardPB = [SELECT Id FROM Pricebook2 WHERE IsStandard = TRUE];

Product2 widgets = new Product2(Name = 'Widgets', IsActive = true);

insert widgets;

PricebookEntry pricebookEntry = new PricebookEntry(Product2Id = widgets.Id, Pricebook2Id = standardPB.Id, UnitPrice = 100, IsActive = true);

insert pricebookEntry;

Opportunity opportunity = new Opportunity(Name = 'Test Opportunity', CloseDate = Date.today(), StageName = 'Prospecting');

insert opportunity;

insert new OpportunityLineItem(OpportunityId = opportunity.Id, PricebookEntryId = pricebookEntry.Id, Quantity = 1, UnitPrice = pricebookEntry.UnitPrice);