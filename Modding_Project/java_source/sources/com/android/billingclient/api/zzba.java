package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import com.google.android.gms.internal.play_billing.zzjx;
import com.google.android.gms.internal.play_billing.zzjz;
import com.google.android.gms.internal.play_billing.zzke;
import com.google.android.gms.internal.play_billing.zzki;
import com.google.android.gms.internal.play_billing.zzkl;
import com.google.android.gms.internal.play_billing.zzlu;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class zzba implements ServiceConnection {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ BillingClientImpl f2472Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BillingClientStateListener f2473Wwwwwwwwwwwwwwwwwwwwwwwww;

    public /* synthetic */ zzba(BillingClientImpl billingClientImpl, BillingClientStateListener billingClientStateListener, zzbl zzblVar) {
        this.f2472Wwwwwwwwwwwwwwwwwwwwwwww = billingClientImpl;
        this.f2473Wwwwwwwwwwwwwwwwwwwwwwwww = billingClientStateListener;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BillingResult billingResult) {
        Object obj;
        int i;
        obj = this.f2472Wwwwwwwwwwwwwwwwwwwwwwww.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        synchronized (obj) {
            try {
                i = this.f2472Wwwwwwwwwwwwwwwwwwwwwwww.f2276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (i == 3) {
                    return;
                }
                this.f2473Wwwwwwwwwwwwwwwwwwwwwwwww.onBillingSetupFinished(billingResult);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f2472Wwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkk(0);
        BillingResult billingResult = zzcj.f2558Wwwwwwwwwwwwwwwwwwwww;
        this.f2472Wwwwwwwwwwwwwwwwwwwwwwww.O00000000(24, 6, billingResult);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(billingResult);
    }

    /* JADX WARN: Removed duplicated region for block: B:162:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0278  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 776
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.zzba.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww():java.lang.Object");
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        Object obj;
        int i;
        int i2;
        zzch zzchVar;
        zzch zzchVar2;
        com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Billing service died.");
        try {
            if (BillingClientImpl.Illll(this.f2472Wwwwwwwwwwwwwwwwwwwwwwww)) {
                zzchVar2 = this.f2472Wwwwwwwwwwwwwwwwwwwwwwww.f2271Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                zzjx zzc = zzjz.zzc();
                zzc.zzn(6);
                zzke zzc2 = zzki.zzc();
                zzc2.zzo(122);
                zzc.zza(zzc2);
                zzchVar2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww((zzjz) zzc.zzf());
            } else {
                zzchVar = this.f2472Wwwwwwwwwwwwwwwwwwwwwwww.f2271Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                zzchVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzkl.zzB());
            }
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Unable to log.", th);
        }
        obj = this.f2472Wwwwwwwwwwwwwwwwwwwwwwww.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        synchronized (obj) {
            i = this.f2472Wwwwwwwwwwwwwwwwwwwwwwww.f2276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i != 3) {
                i2 = this.f2472Wwwwwwwwwwwwwwwwwwwwwwww.f2276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (i2 != 0) {
                    this.f2472Wwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkk(0);
                    this.f2472Wwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkk();
                    this.f2473Wwwwwwwwwwwwwwwwwwwwwwwww.onBillingServiceDisconnected();
                }
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Object obj;
        int i;
        Handler IIllllll;
        Future Wwwwwwwwwwwwwwww2;
        BillingResult Kkkkkkkkkkkkkkkkk2;
        com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "Billing service connected.");
        obj = this.f2472Wwwwwwwwwwwwwwwwwwwwwwww.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        synchronized (obj) {
            try {
                i = this.f2472Wwwwwwwwwwwwwwwwwwwwwwww.f2276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (i == 3) {
                    return;
                }
                this.f2472Wwwwwwwwwwwwwwwwwwwwwwww.f2270Wwwwwwwwwwwwwwwwwwwwwwwwwww = com.google.android.gms.internal.play_billing.zzam.zzu(iBinder);
                BillingClientImpl billingClientImpl = this.f2472Wwwwwwwwwwwwwwwwwwwwwwww;
                Callable callable = new Callable() { // from class: com.android.billingclient.api.zzay
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        zzba.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        return null;
                    }
                };
                Runnable runnable = new Runnable() { // from class: com.android.billingclient.api.zzaz
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzba.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                };
                IIllllll = billingClientImpl.IIllllll();
                Wwwwwwwwwwwwwwww2 = BillingClientImpl.Wwwwwwwwwwwwwwww(callable, 30000L, runnable, IIllllll, billingClientImpl.Kkkkkkkkkkkkkk());
                if (Wwwwwwwwwwwwwwww2 == null) {
                    BillingClientImpl billingClientImpl2 = this.f2472Wwwwwwwwwwwwwwwwwwwwwwww;
                    Kkkkkkkkkkkkkkkkk2 = billingClientImpl2.Kkkkkkkkkkkkkkkkk();
                    billingClientImpl2.O00000000(25, 6, Kkkkkkkkkkkkkkkkk2);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Kkkkkkkkkkkkkkkkk2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Object obj;
        int i;
        zzch zzchVar;
        zzch zzchVar2;
        com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Billing service disconnected.");
        try {
            if (BillingClientImpl.Illll(this.f2472Wwwwwwwwwwwwwwwwwwwwwwww)) {
                zzchVar2 = this.f2472Wwwwwwwwwwwwwwwwwwwwwwww.f2271Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                zzjx zzc = zzjz.zzc();
                zzc.zzn(6);
                zzke zzc2 = zzki.zzc();
                zzc2.zzo(121);
                zzc.zza(zzc2);
                zzchVar2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww((zzjz) zzc.zzf());
            } else {
                zzchVar = this.f2472Wwwwwwwwwwwwwwwwwwwwwwww.f2271Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                zzchVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzlu.zzB());
            }
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Unable to log.", th);
        }
        obj = this.f2472Wwwwwwwwwwwwwwwwwwwwwwww.f2277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        synchronized (obj) {
            try {
                i = this.f2472Wwwwwwwwwwwwwwwwwwwwwwww.f2276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (i != 3) {
                    this.f2472Wwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkk(0);
                    this.f2473Wwwwwwwwwwwwwwwwwwwwwwwww.onBillingServiceDisconnected();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
