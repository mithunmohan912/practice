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
import com.worldpay.bna.onboarding.services.model.BnaApiResponse;
import java.io.File;
import com.worldpay.bna.onboarding.services.model.PosTerminals;
import com.worldpay.bna.onboarding.services.model.Terminal;
import com.worldpay.bna.onboarding.services.model.TerminalResponse;
import com.worldpay.bna.onboarding.services.model.Terminals;
import com.worldpay.bna.onboarding.services.model.TestTerminal;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for TerminalApi
 */
@Ignore
public class TerminalApiTest {

    private final TerminalApi api = new TerminalApi();

    
    /**
     * Create a terminal
     *
     * Create a   Terminal
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void addTerminalTest() throws ApiException {
        String userId = null;
        String userType = null;
        String dataRoleId = null;
        Integer roleId = null;
        Terminal terminal = null;
        TerminalResponse response = api.addTerminal(userId, userType, dataRoleId, roleId, terminal);

        // TODO: test validations
    }
    
    /**
     * Add Test Terminal  in system
     *
     * Returns status
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void addTestTerminalTest() throws ApiException {
        String userId = null;
        String userType = null;
        String dataRoleId = null;
        Integer roleId = null;
        TestTerminal testTerminal = null;
        BnaApiResponse response = api.addTestTerminal(userId, userType, dataRoleId, roleId, testTerminal);

        // TODO: test validations
    }
    
    /**
     * Get POS Terminals
     *
     * Returns a Terminals
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getPosTerminalsTest() throws ApiException {
        String userId = null;
        String userType = null;
        String dataRoleId = null;
        Integer roleId = null;
        String typeNumber = null;
        String typeOfUser = null;
        PosTerminals response = api.getPosTerminals(userId, userType, dataRoleId, roleId, typeNumber, typeOfUser);

        // TODO: test validations
    }
    
    /**
     * Find Terminal
     *
     * Returns a Terminal
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getTerminalTest() throws ApiException {
        String userId = null;
        String userType = null;
        String dataRoleId = null;
        Integer roleId = null;
        String terminalId = null;
        String merchantNumber = null;
        String mode = null;
        String agentNumber = null;
        String orderId = null;
        String financialAssign = null;
        String acquirerMid = null;
        Terminals response = api.getTerminal(userId, userType, dataRoleId, roleId, terminalId, merchantNumber, mode, agentNumber, orderId, financialAssign, acquirerMid);

        // TODO: test validations
    }
    
    /**
     * Find Terminals matching the Criteria
     *
     * Returns a CSV Export for List of Terminals
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getTerminalExportTest() throws ApiException {
        String userId = null;
        String userType = null;
        String dataRoleId = null;
        Integer roleId = null;
        String terminalId = null;
        String merchantNumber = null;
        String mode = null;
        String agentNumber = null;
        String orderId = null;
        String financialAssign = null;
        String acquirerMid = null;
        File response = api.getTerminalExport(userId, userType, dataRoleId, roleId, terminalId, merchantNumber, mode, agentNumber, orderId, financialAssign, acquirerMid);

        // TODO: test validations
    }
    
    /**
     * Update a Terminal
     *
     * Update  Terminal
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void updateTerminalTest() throws ApiException {
        String userId = null;
        String userType = null;
        String dataRoleId = null;
        Integer roleId = null;
        Terminal terminal = null;
        TerminalResponse response = api.updateTerminal(userId, userType, dataRoleId, roleId, terminal);

        // TODO: test validations
    }
    
}
