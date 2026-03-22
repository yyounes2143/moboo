package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
/* compiled from: Proguard */
@ElementTypesAreNonnullByDefault
@GwtCompatible
/* loaded from: classes5.dex */
public interface FutureCallback<V> {
    void onFailure(Throwable th);

    void onSuccess(@ParametricNullness V v);
}
