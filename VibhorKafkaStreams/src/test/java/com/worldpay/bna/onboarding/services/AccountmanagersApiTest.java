/*
 * Swagger Onboarding
 * This API provides REST end points for Boarding of customer into system.
 *
 * OpenAPI spec version: 8.1.0
 * Contact: DL-WPT-Lords-Of-Code@worldpay.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.worldpay.bna.onboarding.services;

import com.worldpay.bna.onboarding.services.invoker.ApiException;
import com.worldpay.bna.onboarding.services.model.AccountManagers;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for AccountmanagersApi
 */
@Ignore
public class AccountmanagersApiTest {

    private final AccountmanagersApi api = new AccountmanagersApi();

    
    /**
     * Find Account Manager
     *
     * Returns Account Managers
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getAccountmanagerTest() throws ApiException {
        String userId = null;
        String userType = null;
        String dataRoleId = null;
        Integer roleId = null;
        AccountManagers response = api.getAccountmanager(userId, userType, dataRoleId, roleId);

        // TODO: test validations
    }
    
}
