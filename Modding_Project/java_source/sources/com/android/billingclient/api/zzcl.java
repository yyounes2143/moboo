package com.android.billingclient.api;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.play_billing.zzjz;
import com.google.android.gms.internal.play_billing.zzkd;
import com.google.android.gms.internal.play_billing.zzkl;
import com.google.android.gms.internal.play_billing.zzks;
import com.google.android.gms.internal.play_billing.zzku;
import com.google.android.gms.internal.play_billing.zzli;
import com.google.android.gms.internal.play_billing.zzlk;
import com.google.android.gms.internal.play_billing.zzlq;
import com.google.android.gms.internal.play_billing.zzlu;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class zzcl implements zzch {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final zzcn f2572Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public zzku f2573Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public zzcl(Context context, zzku zzkuVar) {
        this.f2572Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new zzcn(context);
        this.f2573Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = zzkuVar;
    }

    @Override // com.android.billingclient.api.zzch
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable zzkd zzkdVar, int i) {
        try {
            zzks zzksVar = (zzks) this.f2573Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.zzn();
            zzksVar.zza(i);
            this.f2573Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (zzku) zzksVar.zzf();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzkdVar);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.android.billingclient.api.zzch
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable zzjz zzjzVar) {
        if (zzjzVar == null) {
            return;
        }
        try {
            zzli zzc = zzlk.zzc();
            zzc.zzo(this.f2573Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            zzc.zza(zzjzVar);
            this.f2572Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((zzlk) zzc.zzf());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.android.billingclient.api.zzch
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable zzlu zzluVar) {
        if (zzluVar == null) {
            return;
        }
        try {
            zzli zzc = zzlk.zzc();
            zzc.zzo(this.f2573Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            zzc.zzq(zzluVar);
            this.f2572Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((zzlk) zzc.zzf());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.android.billingclient.api.zzch
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable zzkd zzkdVar) {
        if (zzkdVar == null) {
            return;
        }
        try {
            zzli zzc = zzlk.zzc();
            zzc.zzo(this.f2573Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            zzc.zzm(zzkdVar);
            this.f2572Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((zzlk) zzc.zzf());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.android.billingclient.api.zzch
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable zzjz zzjzVar, int i) {
        try {
            zzks zzksVar = (zzks) this.f2573Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.zzn();
            zzksVar.zza(i);
            this.f2573Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (zzku) zzksVar.zzf();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzjzVar);
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.android.billingclient.api.zzch
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzlq zzlqVar) {
        try {
            zzcn zzcnVar = this.f2572Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            zzli zzc = zzlk.zzc();
            zzc.zzo(this.f2573Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            zzc.zzp(zzlqVar);
            zzcnVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((zzlk) zzc.zzf());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingLogger", "Unable to log.", th);
        }
    }

    @Override // com.android.billingclient.api.zzch
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzkl zzklVar) {
        try {
            zzli zzc = zzlk.zzc();
            zzc.zzo(this.f2573Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            zzc.zzn(zzklVar);
            this.f2572Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((zzlk) zzc.zzf());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zze.zzm("BillingLogger", "Unable to log.", th);
        }
    }
}
