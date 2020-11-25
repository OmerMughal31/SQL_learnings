USE sql_invoicing;

SELECT 
	c.client_id,
    c.name AS "client name",
    inv.invoice_id,
    inv.invoice_date,
    inv.payment_total AS "amount",
    pm.name AS "payment method"
FROM clients c
LEFT OUTER JOIN invoices inv
	USING (client_id)
LEFT OUTER JOIN payments p
	USING (client_id)
LEFT OUTER JOIN payment_methods pm ON
	p.payment_method = pm.payment_method_id
ORDER BY c.client_id

-- However this information can be extracted from NATURAL JOIN statement but 
-- I have not used it because it does not give full control of join table in dtaabase
