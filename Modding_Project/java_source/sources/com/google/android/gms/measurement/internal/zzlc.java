package com.google.android.gms.measurement.internal;

import j$.util.function.Function$CC;
import java.util.function.Function;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final /* synthetic */ class zzlc implements Function {
    static final /* synthetic */ zzlc zza = new zzlc();

    private /* synthetic */ zzlc() {
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo425andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final /* synthetic */ Object apply(Object obj) {
        return Long.valueOf(((zzoh) obj).zzb);
    }

    public /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }
}
