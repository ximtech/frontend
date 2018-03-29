package services;

import static org.mockito.Matchers.anyObject;
import static org.mockito.Matchers.anyString;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import dto.CurrencyResponse;
import org.junit.Before;
import org.junit.Test;
import org.springframework.web.client.RestTemplate;

public class CurrencyServiceImplTest {

    private CurrencyService currencyService;
    private RestTemplate restTemplate;
    private CurrencyResponse response;

    @Before
    public void setUp() throws Exception {
        restTemplate = mock(RestTemplate.class);
        response = mock(CurrencyResponse.class);
        currencyService = new CurrencyServiceImpl(restTemplate);
    }

    @Test
    public void getPhoneDataFromResponse() {
        when(restTemplate.getForObject(anyString(), anyObject())).thenReturn(response);
        verify(currencyService.getCurrencyDataFromResponse());
    }

}