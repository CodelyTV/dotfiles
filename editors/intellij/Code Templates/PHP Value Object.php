<?php
#parse("PHP File Header.php")

#if (${NAMESPACE})
namespace ${NAMESPACE};
#end

final class ${NAME} {
    final $VALUE_TYPE value;
    
    public function __construct($VALUE_TYPE value) {
        this->value = value;
    }
    
    public value(): $VALUE_TYPE {
        return value;
    }
}
