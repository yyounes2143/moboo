package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import javax.annotation.CheckForNull;
/* compiled from: Proguard */
@ElementTypesAreNonnullByDefault
@GwtCompatible
/* loaded from: classes5.dex */
final class NullnessCasts {
    private NullnessCasts() {
    }

    @ParametricNullness
    public static <T> T uncheckedNull() {
        return null;
    }

    @ParametricNullness
    public static <T> T uncheckedCastNullableTToT(@CheckForNull T t) {
        return t;
    }
}
