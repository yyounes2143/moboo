package com.android.billingclient.api;

import android.content.Context;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.Transformer;
import com.google.android.datatransport.Transport;
import com.google.android.datatransport.cct.CCTDestination;
import com.google.android.datatransport.runtime.TransportRuntime;
import com.google.android.gms.internal.play_billing.zzlk;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class zzcn {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Transport f2574Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f2575Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public zzcn(Context context) {
        try {
            TransportRuntime.initialize(context);
            this.f2574Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = TransportRuntime.getInstance().newFactory(CCTDestination.INSTANCE).getTransport("PLAY_BILLING_LIBRARY", zzlk.class, Encoding.of("proto"), new Transformer() { // from class: com.android.billingclient.api.zzcm
                @Override // com.google.android.datatransport.Transformer
                public final Object apply(Object obj) {
                    return ((zzlk) obj).zzh();
                }
            });
        } catch (Throwable unused) {
            this.f2575Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzlk zzlkVar) {
        if (this.f2575Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingLogger", "Skipping logging since initialization failed.");
            return;
        }
        try {
            this.f2574Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.send(Event.ofData(zzlkVar));
        } catch (Throwable unused) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingLogger", "logging failed.");
        }
    }
}
