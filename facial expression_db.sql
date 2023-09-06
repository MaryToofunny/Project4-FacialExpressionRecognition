DROP TABLE IF EXISTS facial_expression;

CREATE TABLE facial_expression(
        expression_number INT NOT NULL,
        picture_pixel VARCHAR(10000),
	    expressions VARCHAR(8)
);
-- SELECT expressions FROM facial_expression;
-- SELECT * FROM facial_expression WHERE expressions ='Happy';
