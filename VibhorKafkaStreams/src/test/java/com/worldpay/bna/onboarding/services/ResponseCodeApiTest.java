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
import com.worldpay.bna.onboarding.services.model.ResponseCodes;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for ResponseCodeApi
 */
@Ignore
public class ResponseCodeApiTest {

    private final ResponseCodeApi api = new ResponseCodeApi();

    
    /**
     * get Response code List.
     *
     * 
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getResponseCodeTest() throws ApiException {
        String userId = null;
        String userType = null;
        String dataRoleId = null;
        Integer roleId = null;
        String responseCode = null;
        String description = null;
        ResponseCodes response = api.getResponseCode(userId, userType, dataRoleId, roleId, responseCode, description);

        // TODO: test validations
    }
    
}
