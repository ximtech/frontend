package services;

import java.util.Collections;
import java.util.List;

import dto.CurrencyRequest;
import dto.CurrencyResponse;
import dto.LogDTO;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.client.RestTemplate;

@Service
public class CurrencyServiceImpl implements CurrencyService {
    private static final Logger LOGGER = Logger.getLogger(CurrencyServiceImpl.class);

    private static final String REST_SERVICE_URI = "http://localhost:8090/number";

    private RestTemplate restTemplate;

    public CurrencyServiceImpl(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    @Override
    public void postCurrencyCode(String code, String clientIP) {
        LOGGER.info("Posting currency code to the backend: " + code);
        CurrencyRequest request = new CurrencyRequest();
        request.setCurrencyCode(code);
        request.setClientIP(clientIP);
        restTemplate.postForObject(REST_SERVICE_URI, request, CurrencyRequest.class);
    }

    @Override
    public CurrencyResponse getCurrencyDataFromResponse() {
        LOGGER.info("Receiving currency data from backend");
        return restTemplate.getForObject(REST_SERVICE_URI, CurrencyResponse.class);
    }

    @Override
    public void populateModelParamsFromResponse(Model model, CurrencyResponse response) {
        if (response != null) {
            List<LogDTO> logList = response.getLogList();
            Collections.reverse(logList);

            model.addAttribute("currencyCode", response.getCurrencyCode());
            model.addAttribute("currencyNum", response.getCurrencyNum());
            model.addAttribute("currencyE", response.getCurrencyE());
            model.addAttribute("currencyFullName", response.getCurrencyFullName());
            model.addAttribute("logList", logList);
            model.addAttribute("clientIP", response.getClientIP());
            model.addAttribute("errorMessage", response.getErrorMessage());
        }
    }
}
