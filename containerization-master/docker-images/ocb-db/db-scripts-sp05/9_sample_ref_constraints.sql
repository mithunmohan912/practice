ALTER TABLE loan_application_context ADD CONSTRAINT fk_app_id FOREIGN KEY (app_id) REFERENCES application(app_id) ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE;
ALTER TABLE user_enrollment_context ADD CONSTRAINT fk_userenrollment_app_id FOREIGN KEY (app_id) REFERENCES application(app_id) ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE;
ALTER TABLE cheque_book_request ADD CONSTRAINT fk_cbr_app_id FOREIGN KEY (app_id) REFERENCES application(app_id) ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE;
ALTER TABLE reissue_card_request ADD CONSTRAINT fk_rcr_app_id FOREIGN KEY (app_id) REFERENCES application(app_id) ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE;
ALTER TABLE credit_limit_increase_request ADD CONSTRAINT fk_crlimit_app_id FOREIGN KEY (app_id) REFERENCES application(app_id) ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE;
ALTER TABLE payment_collection_context ADD CONSTRAINT fk_pcc_app_id FOREIGN KEY (app_id) REFERENCES application(app_id) ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE;
