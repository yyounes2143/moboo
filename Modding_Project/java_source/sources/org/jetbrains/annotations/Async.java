package org.jetbrains.annotations;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class Async {

    /* compiled from: Proguard */
    @Target({ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.PARAMETER})
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes7.dex */
    public @interface Execute {
    }

    /* compiled from: Proguard */
    @Target({ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.PARAMETER})
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes7.dex */
    public @interface Schedule {
    }

    public Async() {
        throw new AssertionError("Async should not be instantiated");
    }
}
