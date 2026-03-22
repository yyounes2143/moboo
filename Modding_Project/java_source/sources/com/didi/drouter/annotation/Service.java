package com.didi.drouter.annotation;

import androidx.annotation.Keep;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
/* compiled from: Proguard */
@Target({ElementType.TYPE})
@Keep
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes3.dex */
public @interface Service {
    String[] alias() default {};

    int cache() default 0;

    Class<?>[] feature() default {};

    Class<?>[] function();

    int priority() default 0;
}
