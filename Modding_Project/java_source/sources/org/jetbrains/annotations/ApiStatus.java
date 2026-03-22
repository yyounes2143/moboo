package org.jetbrains.annotations;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class ApiStatus {

    /* compiled from: Proguard */
    @Target({ElementType.TYPE, ElementType.ANNOTATION_TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD, ElementType.PACKAGE})
    @Documented
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes7.dex */
    public @interface AvailableSince {
    }

    /* compiled from: Proguard */
    @Target({ElementType.TYPE, ElementType.ANNOTATION_TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD, ElementType.PACKAGE})
    @Documented
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes7.dex */
    public @interface Experimental {
    }

    /* compiled from: Proguard */
    @Target({ElementType.TYPE, ElementType.ANNOTATION_TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD, ElementType.PACKAGE})
    @Documented
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes7.dex */
    public @interface Internal {
    }

    /* compiled from: Proguard */
    @Target({ElementType.TYPE, ElementType.METHOD})
    @Documented
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes7.dex */
    public @interface NonExtendable {
    }

    /* compiled from: Proguard */
    @Target({ElementType.TYPE, ElementType.METHOD})
    @Documented
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes7.dex */
    public @interface OverrideOnly {
    }

    /* JADX WARN: Method from annotation default annotation not found: inVersion */
    /* compiled from: Proguard */
    @Target({ElementType.TYPE, ElementType.ANNOTATION_TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD, ElementType.PACKAGE})
    @Documented
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes7.dex */
    public @interface ScheduledForRemoval {
    }

    public ApiStatus() {
        throw new AssertionError("ApiStatus should not be instantiated");
    }
}
