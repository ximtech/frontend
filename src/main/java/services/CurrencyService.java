package services;

import dto.CurrencyResponse;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

@Component
public interface CurrencyService {

    void postCurrencyCode(String code, String clientIP);

    CurrencyResponse getCurrencyDataFromResponse();

    void populateModelParamsFromResponse(Model model, CurrencyResponse response);

}
