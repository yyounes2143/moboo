package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
/* compiled from: Proguard */
@GwtCompatible
@ElementTypesAreNonnullByDefault
/* loaded from: classes5.dex */
public abstract class ForwardingObject {
    public abstract Object delegate();

    public String toString() {
        return delegate().toString();
    }
}
