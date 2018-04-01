package frontend.springboot;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import dto.CurrencyResponse;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.ErrorController;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import services.CurrencyService;

@Controller
@Component
public class MainController implements ErrorController {
	private static final Logger LOGGER = Logger.getLogger(MainController.class);

    @Autowired
	HttpServletRequest request;

    @Autowired
    private CurrencyService currencyService;

	@GetMapping("/")
	public String startPage(Map<String, Object> model) {
	    LOGGER.info("Entering to the home page.");
		return "index";
	}

	@PostMapping("/log")
	public String result(@RequestParam("code") String code, Model model) {
	    LOGGER.info("Getting result for currency code: " + code);
        String clientIP = request.getRemoteAddr();
        currencyService.postCurrencyCode(code, clientIP);
        CurrencyResponse response = currencyService.getCurrencyDataFromResponse();
        currencyService.populateModelParamsFromResponse(model, response);
        return "log";
	}

    @RequestMapping(value = "/error")
    public String error() {
        return "error";
    }

    @Override
    public String getErrorPath() {
        return "/error";
    }
}
