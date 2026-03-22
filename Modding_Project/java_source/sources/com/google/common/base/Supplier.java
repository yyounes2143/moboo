package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
/* compiled from: Proguard */
@GwtCompatible
@ElementTypesAreNonnullByDefault
/* loaded from: classes5.dex */
public interface Supplier<T> {
    @ParametricNullness
    T get();
}
