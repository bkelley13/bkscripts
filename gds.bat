%GFHOME%\glassfish\bin\asadmin create-jdbc-connection-pool --datasourceclassname oracle.jdbc.pool.OracleDataSource --restype javax.sql.XADataSource --property user=bokelle:password=x:url="jdbc\\:oracle\\:thin:@jdevqa-pc1.us.oracle.com\\:1521\\:XE" --target=server OracleDSPool 
%GFHOME%\glassfish\bin\asadmin create-jdbc-resource --connectionpoolid OracleDSPool jdbc/Connection1DS
