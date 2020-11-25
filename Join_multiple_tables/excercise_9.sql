USE sql_invoicing;

SELECT 
	invoices.invoice_id,
    invoices.invoice_date,
    clients.client_id,
    clients.name AS "Client Name",
    clients.address AS "Client Address",
	payments.amount,
    payment_methods.name AS "Payment Method"
    
FROM invoices
JOIN clients ON
	clients.client_id = invoices.invoice_id
JOIN payments ON
	payments.client_id = invoices.invoice_id
JOIN payment_methods ON
	payment_methods.payment_method_id = payments.payment_method;