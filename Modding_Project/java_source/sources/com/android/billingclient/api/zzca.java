package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class zzca implements ServiceConnection {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ zzcc f2532Wwwwwwwwwwwwwwwwwwwwwwwww;

    public /* synthetic */ zzca(zzcc zzccVar, zzcb zzcbVar) {
        this.f2532Wwwwwwwwwwwwwwwwwwwwwwwww = zzccVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        com.google.android.gms.internal.play_billing.zze.zzk("BillingClientTesting", "Billing Override Service connected.");
        zzcc.Lllllllll(this.f2532Wwwwwwwwwwwwwwwwwwwwwwwww, com.google.android.gms.internal.play_billing.zzau.zzc(iBinder));
        zzcc.Llllllll(this.f2532Wwwwwwwwwwwwwwwwwwwwwwwww, 2);
        zzcc.Oooooooooo(this.f2532Wwwwwwwwwwwwwwwwwwwwwwwww, 26);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        com.google.android.gms.internal.play_billing.zze.zzl("BillingClientTesting", "Billing Override Service disconnected.");
        zzcc.Lllllllll(this.f2532Wwwwwwwwwwwwwwwwwwwwwwwww, null);
        zzcc.Llllllll(this.f2532Wwwwwwwwwwwwwwwwwwwwwwwww, 0);
    }
}
