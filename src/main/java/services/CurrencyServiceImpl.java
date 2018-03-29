package services;

import java.text.SimpleDateFormat;
import java.util.Date;

import dto.CurrencyRequest;
import dto.CurrencyResponse;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.client.RestTemplate;

@Service
public class CurrencyServiceImpl implements CurrencyService {
    private static final Logger LOGGER = Logger.getLogger(CurrencyServiceImpl.class);

    private static final String REST_SERVICE_URI = "http://localhost:8090/number";
    private static final String COMMENT_START = "MESSAGE_COMMENT_START";
    private static final String COMMENT_END = "MESSAGE_COMMENT_END";
    private static final String SUCCESS = "Success";

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
            model.addAttribute("currencyCode", response.getCurrencyCode());
            model.addAttribute("currencyNum", response.getCurrencyNum());
            model.addAttribute("currencyE", response.getCurrencyE());
            model.addAttribute("currencyFullName", response.getCurrencyFullName());
            model.addAttribute("requestDateAndTime", response.getRequestDateAndTime());
            model.addAttribute("clientIP", response.getClientIP());
            model.addAttribute("errorMessage", response.getErrorMessage());

            if (response.getErrorMessage().equals(SUCCESS)) {
                model.addAttribute(COMMENT_START, "<!--");
                model.addAttribute(COMMENT_END, "-->");
            } else {
                model.addAttribute(COMMENT_START, "");
                model.addAttribute(COMMENT_END, "");
            }
        }
    }
}
