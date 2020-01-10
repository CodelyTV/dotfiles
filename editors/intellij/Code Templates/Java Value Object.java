#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME};#end
#parse("File Header.java")
public final class ${NAME} {
    private final $VALUE_TYPE value;
    
    public ${NAME}(final $VALUE_TYPE value) {
        this.value = value;
    }

    public $VALUE_TYPE value() {
        return value;
    }
}
