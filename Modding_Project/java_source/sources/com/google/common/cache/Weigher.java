package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
/* compiled from: Proguard */
@ElementTypesAreNonnullByDefault
@GwtCompatible
/* loaded from: classes5.dex */
public interface Weigher<K, V> {
    int weigh(K k, V v);
}
