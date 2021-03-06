control c(inout bit<32> x) {
    @name("a") action a_0() {
        x = 32w10;
    }
    @name("t") table t {
        actions = {
            a_0();
        }
        default_action = a_0();
    }
    apply {
        t.apply();
    }
}

control proto(inout bit<32> arg);
package top(proto p);
top(c()) main;

