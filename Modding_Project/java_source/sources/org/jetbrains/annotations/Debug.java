package org.jetbrains.annotations;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class Debug {

    /* JADX WARN: Method from annotation default annotation not found: childrenArray */
    /* JADX WARN: Method from annotation default annotation not found: hasChildren */
    /* JADX WARN: Method from annotation default annotation not found: text */
    /* compiled from: Proguard */
    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes7.dex */
    public @interface Renderer {
    }

    public Debug() {
        throw new AssertionError("Debug should not be instantiated");
    }
}
