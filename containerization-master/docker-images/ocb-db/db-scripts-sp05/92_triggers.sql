SET client_encoding TO 'UTF8';

DROP TRIGGER IF EXISTS dc_trans_delete_trigger ON dc_transactions CASCADE;
CREATE OR REPLACE FUNCTION trigger_fct_dc_trans_delete_trigger() RETURNS trigger AS $BODY$
BEGIN
		DELETE FROM DC_TransactionsDesc WHERE DCACCOUNTID = O.DCACCOUNTID 
		AND DCTransactionIndex = O.DCTransactionIndex 
		AND DataClassification = O.DataClassification;
RETURN OLD;
END
$BODY$
 LANGUAGE 'plpgsql' SECURITY DEFINER;
-- REVOKE ALL ON FUNCTION trigger_fct_dc_trans_delete_trigger() FROM PUBLIC;

CREATE TRIGGER dc_trans_delete_trigger
	AFTER DELETE ON dc_transactions FOR EACH ROW
	EXECUTE PROCEDURE trigger_fct_dc_trans_delete_trigger();

DROP TRIGGER IF EXISTS dc_trans_update_trigger ON dc_transactions CASCADE;
CREATE OR REPLACE FUNCTION trigger_fct_dc_trans_update_trigger() RETURNS trigger AS $BODY$
BEGIN
		UPDATE DC_TransactionsDesc SET DCAccountID = N.DCAccountID, DCTransactionIndex = N.DCTransactionIndex, DataClassification = N.DataClassification 
		WHERE DCAccountID = O.DCAccountID AND DCTransactionIndex = O.DCTransactionIndex AND DataClassification = O.DataClassification;
RETURN NEW;
END
$BODY$
 LANGUAGE 'plpgsql' SECURITY DEFINER;
-- REVOKE ALL ON FUNCTION trigger_fct_dc_trans_update_trigger() FROM PUBLIC;

CREATE TRIGGER dc_trans_update_trigger 
	after update OF DCAccountID, DCTransactionIndex, DataClassification  on dc_transactions 
	for each row 
	WHEN (New.DCAccountID != Old.DCAccountID OR New.DCTransactionIndex != Old.DCTransactionIndex OR New.DataClassification != Old.DataClassification)
	EXECUTE PROCEDURE trigger_fct_dc_trans_update_trigger();

DROP TRIGGER IF EXISTS dnf_nm_id_trigger ON dnf_notification_message CASCADE;
CREATE OR REPLACE FUNCTION trigger_fct_dnf_nm_id_trigger() RETURNS trigger AS $BODY$
BEGIN
  NEW.NOTIFICATION_MESSAGE_ROW_ID := nextval('dnf_nm_id_sequence');
RETURN NEW;
END
$BODY$
 LANGUAGE 'plpgsql' SECURITY DEFINER;
-- REVOKE ALL ON FUNCTION trigger_fct_dnf_nm_id_trigger() FROM PUBLIC;

CREATE TRIGGER dnf_nm_id_trigger
	BEFORE INSERT ON dnf_notification_message FOR EACH ROW
	EXECUTE PROCEDURE trigger_fct_dnf_nm_id_trigger();

DROP TRIGGER IF EXISTS td_dcaccthistory ON dc_accounthistory CASCADE;
CREATE OR REPLACE FUNCTION trigger_fct_td_dcaccthistory() RETURNS trigger AS $BODY$
BEGIN
		DELETE FROM DC_ExtendABeanXML ex WHERE ex.DCExtendABeanID = oldEntry.ExtendABeanXMLID;
RETURN OLD;
END
$BODY$
 LANGUAGE 'plpgsql' SECURITY DEFINER;
-- REVOKE ALL ON FUNCTION trigger_fct_td_dcaccthistory() FROM PUBLIC;

CREATE TRIGGER td_dcaccthistory 
	after delete on dc_accounthistory 
	for each row 
	WHEN (Old.ExtendABeanXMLID != 0)
	EXECUTE PROCEDURE trigger_fct_td_dcaccthistory();

DROP TRIGGER IF EXISTS td_dcacctsumry ON dc_accountsummary CASCADE;
CREATE OR REPLACE FUNCTION trigger_fct_td_dcacctsumry() RETURNS trigger AS $BODY$
BEGIN
		DELETE FROM DC_ExtendABeanXML ex WHERE ex.DCExtendABeanID = oldEntry.ExtendABeanXMLID;
RETURN OLD;
END
$BODY$
 LANGUAGE 'plpgsql' SECURITY DEFINER;
-- REVOKE ALL ON FUNCTION trigger_fct_td_dcacctsumry() FROM PUBLIC;

CREATE TRIGGER td_dcacctsumry 
	after delete on dc_accountsummary 
	for each row 
	WHEN (Old.ExtendABeanXMLID != 0)
	EXECUTE PROCEDURE trigger_fct_td_dcacctsumry();

DROP TRIGGER IF EXISTS td_dcccacctsumry ON dc_ccacctsummary CASCADE;
CREATE OR REPLACE FUNCTION trigger_fct_td_dcccacctsumry() RETURNS trigger AS $BODY$
BEGIN
		DELETE FROM DC_ExtendABeanXML ex WHERE ex.DCExtendABeanID = oldEntry.ExtendABeanXMLID;
RETURN OLD;
END
$BODY$
 LANGUAGE 'plpgsql' SECURITY DEFINER;
-- REVOKE ALL ON FUNCTION trigger_fct_td_dcccacctsumry() FROM PUBLIC;

CREATE TRIGGER td_dcccacctsumry 
	after delete on dc_ccacctsummary 
	for each row 
	WHEN (Old.ExtendABeanXMLID != 0)
	EXECUTE PROCEDURE trigger_fct_td_dcccacctsumry();

DROP TRIGGER IF EXISTS td_dcdsbsumry ON dc_dsbsummary CASCADE;
CREATE OR REPLACE FUNCTION trigger_fct_td_dcdsbsumry() RETURNS trigger AS $BODY$
BEGIN
		DELETE FROM DC_ExtendABeanXML ex WHERE ex.DCExtendABeanID = oldEntry.ExtendABeanXMLID;
RETURN OLD;
END
$BODY$
 LANGUAGE 'plpgsql' SECURITY DEFINER;
-- REVOKE ALL ON FUNCTION trigger_fct_td_dcdsbsumry() FROM PUBLIC;

CREATE TRIGGER td_dcdsbsumry 
	after delete on dc_dsbsummary 
	for each row 
	WHEN (Old.ExtendABeanXMLID != 0)
	EXECUTE PROCEDURE trigger_fct_td_dcdsbsumry();

DROP TRIGGER IF EXISTS td_dcdsbtxs ON dc_dsbtransactions CASCADE;
CREATE OR REPLACE FUNCTION trigger_fct_td_dcdsbtxs() RETURNS trigger AS $BODY$
BEGIN
		DELETE FROM DC_ExtendABeanXML ex WHERE ex.DCExtendABeanID = oldEntry.ExtendABeanXMLID;
RETURN OLD;
END
$BODY$
 LANGUAGE 'plpgsql' SECURITY DEFINER;
-- REVOKE ALL ON FUNCTION trigger_fct_td_dcdsbtxs() FROM PUBLIC;

CREATE TRIGGER td_dcdsbtxs 
	after delete on dc_dsbtransactions 
	for each row 
	WHEN (Old.ExtendABeanXMLID != 0)
	EXECUTE PROCEDURE trigger_fct_td_dcdsbtxs();

DROP TRIGGER IF EXISTS td_dcextacctsumry ON dc_extacctsummary CASCADE;
CREATE OR REPLACE FUNCTION trigger_fct_td_dcextacctsumry() RETURNS trigger AS $BODY$
BEGIN
		DELETE FROM DC_ExtendABeanXML ex WHERE ex.DCExtendABeanID = oldEntry.ExtendABeanXMLID;
RETURN OLD;
END
$BODY$
 LANGUAGE 'plpgsql' SECURITY DEFINER;
-- REVOKE ALL ON FUNCTION trigger_fct_td_dcextacctsumry() FROM PUBLIC;

CREATE TRIGGER td_dcextacctsumry 
	after delete on dc_extacctsummary 
	for each row 
	WHEN (Old.ExtendABeanXMLID != 0)
	EXECUTE PROCEDURE trigger_fct_td_dcextacctsumry();

DROP TRIGGER IF EXISTS td_dcfixdepinstr ON dc_fixdepinstrment CASCADE;
CREATE OR REPLACE FUNCTION trigger_fct_td_dcfixdepinstr() RETURNS trigger AS $BODY$
BEGIN
		DELETE FROM DC_ExtendABeanXML ex WHERE ex.DCExtendABeanID = oldEntry.ExtendABeanXMLID;
RETURN OLD;
END
$BODY$
 LANGUAGE 'plpgsql' SECURITY DEFINER;
-- REVOKE ALL ON FUNCTION trigger_fct_td_dcfixdepinstr() FROM PUBLIC;

CREATE TRIGGER td_dcfixdepinstr 
	after delete on dc_fixdepinstrment 
	for each row 
	WHEN (Old.ExtendABeanXMLID != 0)
	EXECUTE PROCEDURE trigger_fct_td_dcfixdepinstr();

DROP TRIGGER IF EXISTS td_dclbcredititems ON dc_lbcredititems CASCADE;
CREATE OR REPLACE FUNCTION trigger_fct_td_dclbcredititems() RETURNS trigger AS $BODY$
BEGIN
		DELETE FROM DC_ExtendABeanXML ex WHERE ex.DCExtendABeanID = oldEntry.ExtendABeanXMLID;
RETURN OLD;
END
$BODY$
 LANGUAGE 'plpgsql' SECURITY DEFINER;
-- REVOKE ALL ON FUNCTION trigger_fct_td_dclbcredititems() FROM PUBLIC;

CREATE TRIGGER td_dclbcredititems 
	after delete on dc_lbcredititems 
	for each row 
	WHEN (Old.ExtendABeanXMLID != 0)
	EXECUTE PROCEDURE trigger_fct_td_dclbcredititems();

DROP TRIGGER IF EXISTS td_dclbsumry ON dc_lockboxsummary CASCADE;
CREATE OR REPLACE FUNCTION trigger_fct_td_dclbsumry() RETURNS trigger AS $BODY$
BEGIN
		DELETE FROM DC_ExtendABeanXML ex WHERE ex.DCExtendABeanID = oldEntry.ExtendABeanXMLID;
RETURN OLD;
END
$BODY$
 LANGUAGE 'plpgsql' SECURITY DEFINER;
-- REVOKE ALL ON FUNCTION trigger_fct_td_dclbsumry() FROM PUBLIC;

CREATE TRIGGER td_dclbsumry 
	after delete on dc_lockboxsummary 
	for each row 
	WHEN (Old.ExtendABeanXMLID != 0)
	EXECUTE PROCEDURE trigger_fct_td_dclbsumry();

DROP TRIGGER IF EXISTS td_dclbtxs ON dc_lbtransactions CASCADE;
CREATE OR REPLACE FUNCTION trigger_fct_td_dclbtxs() RETURNS trigger AS $BODY$
BEGIN
		DELETE FROM DC_ExtendABeanXML ex WHERE ex.DCExtendABeanID = oldEntry.ExtendABeanXMLID;
RETURN OLD;
END
$BODY$
 LANGUAGE 'plpgsql' SECURITY DEFINER;
-- REVOKE ALL ON FUNCTION trigger_fct_td_dclbtxs() FROM PUBLIC;

CREATE TRIGGER td_dclbtxs 
	after delete on dc_lbtransactions 
	for each row 
	WHEN (Old.ExtendABeanXMLID != 0)
	EXECUTE PROCEDURE trigger_fct_td_dclbtxs();

DROP TRIGGER IF EXISTS td_dcloanacctsumry ON dc_loanacctsummary CASCADE;
CREATE OR REPLACE FUNCTION trigger_fct_td_dcloanacctsumry() RETURNS trigger AS $BODY$
BEGIN
		DELETE FROM DC_ExtendABeanXML ex WHERE ex.DCExtendABeanID = oldEntry.ExtendABeanXMLID;
RETURN OLD;
END
$BODY$
 LANGUAGE 'plpgsql' SECURITY DEFINER;
-- REVOKE ALL ON FUNCTION trigger_fct_td_dcloanacctsumry() FROM PUBLIC;

CREATE TRIGGER td_dcloanacctsumry 
	after delete on dc_loanacctsummary 
	for each row 
	WHEN (Old.ExtendABeanXMLID != 0)
	EXECUTE PROCEDURE trigger_fct_td_dcloanacctsumry();

DROP TRIGGER IF EXISTS td_dctxns ON dc_transactions CASCADE;
CREATE OR REPLACE FUNCTION trigger_fct_td_dctxns() RETURNS trigger AS $BODY$
BEGIN
		DELETE FROM DC_ExtendABeanXML ex WHERE ex.DCExtendABeanID = oldEntry.ExtendABeanXMLID;
RETURN OLD;
END
$BODY$
 LANGUAGE 'plpgsql' SECURITY DEFINER;
-- REVOKE ALL ON FUNCTION trigger_fct_td_dctxns() FROM PUBLIC;

CREATE TRIGGER td_dctxns 
	after delete on dc_transactions 
	for each row 
	WHEN (Old.ExtendABeanXMLID != 0)
	EXECUTE PROCEDURE trigger_fct_td_dctxns();

