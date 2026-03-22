package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.browser.customtabs.CustomTabsIntent;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeeu implements zzedf {
    private final Context zza;
    private final zzdga zzb;
    private final Executor zzc;
    private final zzfbt zzd;
    private final zzdsd zze;

    public zzeeu(Context context, Executor executor, zzdga zzdgaVar, zzfbt zzfbtVar, zzdsd zzdsdVar) {
        this.zza = context;
        this.zzb = zzdgaVar;
        this.zzc = executor;
        this.zzd = zzfbtVar;
        this.zze = zzdsdVar;
    }

    public static /* synthetic */ ListenableFuture zzd(zzeeu zzeeuVar, Uri uri, zzfcg zzfcgVar, zzfbu zzfbuVar, zzfbx zzfbxVar, Object obj) {
        try {
            CustomTabsIntent build = new CustomTabsIntent.Builder().build();
            build.intent.setData(uri);
            com.google.android.gms.ads.internal.overlay.zzc zzcVar = new com.google.android.gms.ads.internal.overlay.zzc(build.intent, null);
            zzcaf zzcafVar = new zzcaf();
            zzdex zzd = zzeeuVar.zzb.zzd(new zzcrn(zzfcgVar, zzfbuVar, null), new zzdfa(new zzeet(zzeeuVar, zzcafVar, zzfbuVar), null));
            zzcafVar.zzc(new AdOverlayInfoParcel(zzcVar, null, zzd.zza(), null, new VersionInfoParcel(0, 0, false), null, null, zzfbxVar.zzb));
            zzeeuVar.zzd.zza();
            return zzgcy.zzh(zzd.zzg());
        } catch (Throwable th) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Error in CustomTabsAdRenderer", th);
            throw th;
        }
    }

    @Nullable
    private static String zze(zzfbu zzfbuVar) {
        try {
            return zzfbuVar.zzv.getString("tab_url");
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzedf
    public final ListenableFuture zza(final zzfcg zzfcgVar, final zzfbu zzfbuVar) {
        final Uri uri;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zznn)).booleanValue()) {
            zzdsc zza = this.zze.zza();
            zza.zzb("action", "cstm_tbs_rndr");
            zza.zzj();
        }
        String zze = zze(zzfbuVar);
        if (zze != null) {
            uri = Uri.parse(zze);
        } else {
            uri = null;
        }
        final zzfbx zzfbxVar = zzfcgVar.zzb.zzb;
        return zzgcy.zzn(zzgcy.zzh(null), new zzgcf() { // from class: com.google.android.gms.internal.ads.zzees
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzeeu.zzd(zzeeu.this, uri, zzfcgVar, zzfbuVar, zzfbxVar, obj);
            }
        }, this.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzedf
    public final boolean zzb(zzfcg zzfcgVar, zzfbu zzfbuVar) {
        Context context = this.zza;
        if ((context instanceof Activity) && zzbdw.zzg(context) && !TextUtils.isEmpty(zze(zzfbuVar))) {
            return true;
        }
        return false;
    }
}
