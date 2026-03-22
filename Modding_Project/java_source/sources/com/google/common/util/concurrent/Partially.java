package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
/* compiled from: Proguard */
@ElementTypesAreNonnullByDefault
@GwtCompatible
/* loaded from: classes5.dex */
final class Partially {

    /* compiled from: Proguard */
    @Target({ElementType.TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD})
    @Documented
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes5.dex */
    public @interface GwtIncompatible {
        String value();
    }

    private Partially() {
    }
}
