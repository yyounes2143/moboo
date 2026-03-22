package javax.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.annotation.meta.TypeQualifier;
import javax.annotation.meta.TypeQualifierValidator;
/* JADX WARN: Method from annotation default annotation not found: when */
/* compiled from: Proguard */
@TypeQualifier
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes6.dex */
public @interface Nonnegative {

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class Checker implements TypeQualifierValidator<Nonnegative> {
    }
}
