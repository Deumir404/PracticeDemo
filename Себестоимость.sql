SELECT o."ID", o."Buyer", o."Salesman", Sum(ps."Amount" * sp."Amount" * mt."Price"), o."Date" FROM public."Order" as o
JOIN public."Position" ps ON o."ID" = ps."OrderID"
JOIN public."Product" pr ON ps."ProductID" = pr."ID"
JOIN public."Specification" sp ON pr."ID" = sp."ProductID"
JOIN public."Material" mt ON mt."ID" = sp."MaterialID"
GROUP BY o."ID";