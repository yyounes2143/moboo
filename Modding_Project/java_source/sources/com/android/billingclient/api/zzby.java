package com.android.billingclient.api;

import com.google.android.gms.internal.play_billing.zzej;
import java.util.concurrent.TimeoutException;
import java.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class zzby implements zzej {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ int f2524Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ zzcc f2525Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ Runnable f2526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ Consumer f2527Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public zzby(zzcc zzccVar, int i, Consumer consumer, Runnable runnable) {
        this.f2524Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f2527Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = consumer;
        this.f2526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = runnable;
        this.f2525Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = zzccVar;
    }

    @Override // com.google.android.gms.internal.play_billing.zzej
    public final void zza(Throwable th) {
        if (th instanceof TimeoutException) {
            this.f2525Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Ooo(114, 28, zzcj.f2539Kkkkkkkkkkkkkkkkkkkkkkkkkk);
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClientTesting", "Asynchronous call to Billing Override Service timed out.", th);
        } else {
            this.f2525Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Ooo(107, 28, zzcj.f2539Kkkkkkkkkkkkkkkkkkkkkkkkkk);
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClientTesting", "An error occurred while retrieving billing override.", th);
        }
        this.f2526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.run();
    }

    @Override // com.google.android.gms.internal.play_billing.zzej
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        boolean Oooooo;
        BillingResult Ooooo;
        Integer num = (Integer) obj;
        int intValue = num.intValue();
        zzcc zzccVar = this.f2525Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        Oooooo = zzcc.Oooooo(intValue);
        if (Oooooo) {
            Ooooo = zzccVar.Ooooo(this.f2524Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, num.intValue());
            this.f2527Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.accept(Ooooo);
            return;
        }
        this.f2526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.run();
    }
}
