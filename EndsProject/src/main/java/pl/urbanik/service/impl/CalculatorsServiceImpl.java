package pl.urbanik.service.impl;

import org.springframework.stereotype.Service;
import pl.urbanik.service.CalculatorService;
import pl.urbanik.model.Calculator;

import java.util.ArrayList;
import java.util.List;
@Service
public class CalculatorsServiceImpl implements CalculatorService {

    @Override
    public List<String> lengthOfSlantingPipe(Calculator calculator) {

        double k1, k2, c, aA, bB, l;
        k1 = 1 / Math.tan(calculator.getA() * Math.PI / 180);
        k2 = 1 / Math.sin(calculator.getA() * Math.PI / 180);
        c = 2 * calculator.getR() * Math.tan(calculator.getA() * Math.PI / 360);
        aA = k1 * calculator.getH();
        bB = k1 * calculator.getH() + c;
        l = k2 * calculator.getH() - c;

        List<String> list = new ArrayList<>();
        list.add("A = " + aA);
        list.add("B = " + bB);
        list.add("L = " + l);

        return list;
    }
}
