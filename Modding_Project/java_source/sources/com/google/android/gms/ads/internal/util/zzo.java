package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.browser.customtabs.CustomTabsIntent;
import com.google.android.gms.internal.ads.zzbdv;
import com.google.android.gms.internal.ads.zzbdw;
import com.google.android.gms.internal.ads.zzhgl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzo implements zzbdv {
    final /* synthetic */ zzbdw zza;
    final /* synthetic */ Context zzb;
    final /* synthetic */ Uri zzc;

    public zzo(zzs zzsVar, zzbdw zzbdwVar, Context context, Uri uri) {
        this.zza = zzbdwVar;
        this.zzb = context;
        this.zzc = uri;
    }

    @Override // com.google.android.gms.internal.ads.zzbdv
    public final void zza() {
        zzbdw zzbdwVar = this.zza;
        CustomTabsIntent build = new CustomTabsIntent.Builder(zzbdwVar.zza()).build();
        Intent intent = build.intent;
        Context context = this.zzb;
        intent.setPackage(zzhgl.zza(context));
        build.launchUrl(context, this.zzc);
        zzbdwVar.zzf((Activity) context);
    }
}
