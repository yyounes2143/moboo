package com.google.common.collect;

import com.google.common.base.Function;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final /* synthetic */ class Ill implements Function {
    @Override // com.google.common.base.Function
    public final Object apply(Object obj) {
        return ((Iterable) obj).iterator();
    }
}
