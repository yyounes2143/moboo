package com.google.android.gms.ads.internal.client;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.h5.OnH5AdsEventListener;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzbic;
import com.google.android.gms.internal.ads.zzbid;
import com.google.android.gms.internal.ads.zzbky;
import com.google.android.gms.internal.ads.zzbpl;
import com.google.android.gms.internal.ads.zzbte;
import com.google.android.gms.internal.ads.zzbti;
import com.google.android.gms.internal.ads.zzbtl;
import com.google.android.gms.internal.ads.zzbuk;
import com.google.android.gms.internal.ads.zzbwq;
import com.google.android.gms.internal.ads.zzbxc;
import com.google.android.gms.internal.ads.zzbyv;
import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaz {
    private final zzk zza;
    private final zzi zzb;
    private final zzfa zzc;
    private final zzbic zzd;
    private final zzbti zze;
    private final zzbid zzf;
    private zzbuk zzg;
    private final zzl zzh;

    public zzaz(zzk zzkVar, zzi zziVar, zzfa zzfaVar, zzbic zzbicVar, zzbxc zzbxcVar, zzbti zzbtiVar, zzbid zzbidVar, zzl zzlVar) {
        this.zza = zzkVar;
        this.zzb = zziVar;
        this.zzc = zzfaVar;
        this.zzd = zzbicVar;
        this.zze = zzbtiVar;
        this.zzf = zzbidVar;
        this.zzh = zzlVar;
    }

    public static /* bridge */ /* synthetic */ void zzv(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString("flow", str);
        zzbb.zzb().zzo(context, zzbb.zzc().afmaVersion, "gmob-apps", bundle, true);
    }

    public final zzbt zzd(Context context, String str, zzbpl zzbplVar) {
        return (zzbt) new zzaq(this, context, str, zzbplVar).zzd(context, false);
    }

    public final zzbx zze(Context context, zzr zzrVar, String str, zzbpl zzbplVar) {
        return (zzbx) new zzam(this, context, zzrVar, str, zzbplVar).zzd(context, false);
    }

    public final zzbx zzf(Context context, zzr zzrVar, String str, zzbpl zzbplVar) {
        return (zzbx) new zzao(this, context, zzrVar, str, zzbplVar).zzd(context, false);
    }

    public final zzch zzg(Context context, zzbpl zzbplVar) {
        return (zzch) new zzas(this, context, zzbplVar).zzd(context, false);
    }

    @Nullable
    public final zzdt zzh(Context context, zzbpl zzbplVar) {
        return (zzdt) new zzae(this, context, zzbplVar).zzd(context, false);
    }

    public final zzbgk zzj(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        return (zzbgk) new zzaw(this, frameLayout, frameLayout2, context).zzd(context, false);
    }

    public final zzbgq zzk(View view, HashMap hashMap, HashMap hashMap2) {
        return (zzbgq) new zzay(this, view, hashMap, hashMap2).zzd(view.getContext(), false);
    }

    public final zzbky zzn(Context context, zzbpl zzbplVar, OnH5AdsEventListener onH5AdsEventListener) {
        return (zzbky) new zzak(this, context, zzbplVar, onH5AdsEventListener).zzd(context, false);
    }

    @Nullable
    public final zzbte zzo(Context context, zzbpl zzbplVar) {
        return (zzbte) new zzai(this, context, zzbplVar).zzd(context, false);
    }

    @Nullable
    public final zzbtl zzq(Activity activity) {
        zzac zzacVar = new zzac(this, activity);
        Intent intent = activity.getIntent();
        boolean z = false;
        if (!intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("useClientJar flag not found in activity intent extras.");
        } else {
            z = intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        }
        return (zzbtl) zzacVar.zzd(activity, z);
    }

    public final zzbwq zzs(Context context, String str, zzbpl zzbplVar) {
        return (zzbwq) new zzaa(this, context, str, zzbplVar).zzd(context, false);
    }

    @Nullable
    public final zzbyv zzt(Context context, zzbpl zzbplVar) {
        return (zzbyv) new zzag(this, context, zzbplVar).zzd(context, false);
    }
}
