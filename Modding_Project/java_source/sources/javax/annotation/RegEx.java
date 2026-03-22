package javax.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.annotation.meta.TypeQualifierNickname;
import javax.annotation.meta.TypeQualifierValidator;
/* JADX WARN: Method from annotation default annotation not found: when */
/* compiled from: Proguard */
@Syntax
@TypeQualifierNickname
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes6.dex */
public @interface RegEx {

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class Checker implements TypeQualifierValidator<RegEx> {
    }
}
