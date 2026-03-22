package com.google.common.collect;

import com.google.common.base.Preconditions;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final /* synthetic */ class Kkkkkkkkkkkkkkkkkk implements Consumer {
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        Preconditions.checkNotNull(obj);
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
