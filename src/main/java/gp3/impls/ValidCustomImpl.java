package gp3.impls;

import gp3.validators.VaildCustom;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class ValidCustomImpl implements ConstraintValidator<VaildCustom,String> {

    private  int min ;
    @Override
    public void initialize(VaildCustom constraintAnnotation) {
        min = constraintAnnotation.min();
    }

    @Override
    public boolean isValid(String s, ConstraintValidatorContext constraintValidatorContext) {
        return s.length()>= min;
    }
}
