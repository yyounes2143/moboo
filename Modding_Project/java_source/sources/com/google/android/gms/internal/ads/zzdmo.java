package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdmo {
    private final zzfcp zza;
    private final Executor zzb;
    private final zzdpd zzc;
    private final zzdny zzd;
    private final Context zze;
    private final zzdsd zzf;
    private final zzfjr zzg;
    private final zzebt zzh;
    private final zzdrx zzi;

    public zzdmo(zzfcp zzfcpVar, Executor executor, zzdpd zzdpdVar, Context context, zzdsd zzdsdVar, zzfjr zzfjrVar, zzebt zzebtVar, zzdny zzdnyVar, zzdrx zzdrxVar) {
        this.zza = zzfcpVar;
        this.zzb = executor;
        this.zzc = zzdpdVar;
        this.zze = context;
        this.zzf = zzdsdVar;
        this.zzg = zzfjrVar;
        this.zzh = zzebtVar;
        this.zzd = zzdnyVar;
        this.zzi = zzdrxVar;
    }

    public static /* synthetic */ ListenableFuture zza(zzdmo zzdmoVar, com.google.android.gms.ads.internal.zzb zzbVar, zzbxv zzbxvVar, Object obj) {
        zzcfb zza = zzdmoVar.zzc.zza(com.google.android.gms.ads.internal.client.zzr.zzc(), null, null);
        final zzcae zza2 = zzcae.zza(zza);
        zzdmoVar.zzh(zza, zzbVar, zzbxvVar);
        zza.zzN().zzK(new zzcgs() { // from class: com.google.android.gms.internal.ads.zzdmg
            @Override // com.google.android.gms.internal.ads.zzcgs
            public final void zza() {
                zzcae.this.zzb();
            }
        });
        zza.loadUrl((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzeb));
        return zza2;
    }

    public static /* synthetic */ ListenableFuture zzb(final zzdmo zzdmoVar, JSONObject jSONObject, final zzcfb zzcfbVar) {
        zzbmg zzbmgVar = zzdmoVar.zza.zzb;
        final zzcae zza = zzcae.zza(zzcfbVar);
        if (zzbmgVar != null) {
            zzcfbVar.zzaj(zzcgv.zzd());
        } else {
            zzcfbVar.zzaj(zzcgv.zze());
        }
        zzcfbVar.zzN().zzC(new zzcgr() { // from class: com.google.android.gms.internal.ads.zzdmf
            @Override // com.google.android.gms.internal.ads.zzcgr
            public final void zza(boolean z, int i, String str, String str2) {
                zzdmo.zzg(zzdmo.this, zzcfbVar, zza, z, i, str, str2);
            }
        });
        zzcfbVar.zzp("google.afma.nativeAds.renderVideo", jSONObject);
        return zza;
    }

    public static /* synthetic */ ListenableFuture zzc(final zzdmo zzdmoVar, com.google.android.gms.ads.internal.client.zzr zzrVar, zzfbu zzfbuVar, zzfbx zzfbxVar, com.google.android.gms.ads.internal.zzb zzbVar, zzbxv zzbxvVar, String str, String str2, Object obj) {
        com.google.android.gms.ads.internal.zzb zzbVar2;
        zzbxv zzbxvVar2;
        final zzcfb zza = zzdmoVar.zzc.zza(zzrVar, zzfbuVar, zzfbxVar);
        final zzcae zza2 = zzcae.zza(zza);
        if (zzdmoVar.zza.zzb != null) {
            zzdmoVar.zzh(zza, zzbVar, zzbxvVar);
            zza.zzaj(zzcgv.zzd());
        } else {
            zzdnv zzb = zzdmoVar.zzd.zzb();
            zzcgt zzN = zza.zzN();
            zzbcm zzbcmVar = zzbcv.zznG;
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
                zzbVar2 = new com.google.android.gms.ads.internal.zzb(zzdmoVar.zze, null, null);
            } else {
                zzbVar2 = zzbVar;
            }
            if (true != ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcmVar)).booleanValue()) {
                zzbxvVar2 = null;
            } else {
                zzbxvVar2 = zzbxvVar;
            }
            zzN.zzX(zzb, zzb, zzb, zzb, zzb, false, null, zzbVar2, null, zzbxvVar2, zzdmoVar.zzh, zzdmoVar.zzg, zzdmoVar.zzf, null, zzb, null, null, null, null);
            zzj(zza);
        }
        zza.zzN().zzC(new zzcgr() { // from class: com.google.android.gms.internal.ads.zzdmd
            @Override // com.google.android.gms.internal.ads.zzcgr
            public final void zza(boolean z, int i, String str3, String str4) {
                zzdmo.zzf(zzdmo.this, zza, zza2, z, i, str3, str4);
            }
        });
        zza.zzae(str, str2, null);
        return zza2;
    }

    public static /* synthetic */ void zzf(zzdmo zzdmoVar, zzcfb zzcfbVar, zzcae zzcaeVar, boolean z, int i, String str, String str2) {
        if (z) {
            com.google.android.gms.ads.internal.client.zzfw zzfwVar = zzdmoVar.zza.zza;
            if (zzfwVar != null && zzcfbVar.zzq() != null) {
                zzcfbVar.zzq().zzs(zzfwVar);
            }
            zzcaeVar.zzb();
            return;
        }
        zzcaeVar.zzd(new zzegy(1, "Html video Web View failed to load. Error code: " + i + ", Description: " + str + ", Failing URL: " + str2));
    }

    public static /* synthetic */ void zzg(zzdmo zzdmoVar, zzcfb zzcfbVar, zzcae zzcaeVar, boolean z, int i, String str, String str2) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzej)).booleanValue()) {
            if (z) {
                zzdmoVar.zzi(zzcfbVar, zzcaeVar);
                return;
            }
            zzcaeVar.zzd(new zzegy(1, "Native Video WebView failed to load. Error code: " + i + ", Description: " + str + ", Failing URL: " + str2));
            return;
        }
        zzdmoVar.zzi(zzcfbVar, zzcaeVar);
    }

    private final void zzh(zzcfb zzcfbVar, @Nullable com.google.android.gms.ads.internal.zzb zzbVar, @Nullable zzbxv zzbxvVar) {
        com.google.android.gms.ads.internal.zzb zzbVar2;
        zzj(zzcfbVar);
        zzcfbVar.zzag("/video", zzbjv.zzl);
        zzcfbVar.zzag("/videoMeta", zzbjv.zzm);
        zzcfbVar.zzag("/precache", new zzcdj());
        zzcfbVar.zzag("/delayPageLoaded", zzbjv.zzp);
        zzcfbVar.zzag("/instrument", zzbjv.zzn);
        zzcfbVar.zzag("/log", zzbjv.zzg);
        zzcfbVar.zzag("/click", new zzbiu(null, null));
        if (this.zza.zzb != null) {
            zzcfbVar.zzN().zzH(true);
            if (true != ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zznG)).booleanValue()) {
                zzbVar2 = null;
            } else {
                zzbVar2 = zzbVar;
            }
            zzcfbVar.zzag("/open", new zzbki(zzbVar2, null, null, null, null));
        } else {
            zzcfbVar.zzN().zzH(false);
        }
        if (com.google.android.gms.ads.internal.zzv.zzo().zzp(zzcfbVar.getContext())) {
            Map hashMap = new HashMap();
            if (zzcfbVar.zzD() != null) {
                hashMap = zzcfbVar.zzD().zzaw;
            }
            zzcfbVar.zzag("/logScionEvent", new zzbkc(zzcfbVar.getContext(), hashMap));
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zznG)).booleanValue()) {
            zzcfbVar.zzN().zzD(zzbVar);
            zzcfbVar.zzN().zzL(zzbxvVar);
        }
    }

    private final void zzi(zzcfb zzcfbVar, zzcae zzcaeVar) {
        com.google.android.gms.ads.internal.client.zzfw zzfwVar = this.zza.zza;
        if (zzfwVar != null && zzcfbVar.zzq() != null) {
            zzcfbVar.zzq().zzs(zzfwVar);
        }
        zzcaeVar.zzb();
    }

    private static final void zzj(zzcfb zzcfbVar) {
        zzcfbVar.zzag("/videoClicked", zzbjv.zzh);
        zzcfbVar.zzN().zzJ(true);
        zzcfbVar.zzag("/getNativeAdViewSignals", zzbjv.zzs);
        zzcfbVar.zzag("/getNativeClickMeta", zzbjv.zzt);
    }

    public final ListenableFuture zzd(final JSONObject jSONObject, @Nullable final com.google.android.gms.ads.internal.zzb zzbVar, @Nullable final zzbxv zzbxvVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcx)).booleanValue()) {
            this.zzi.zza().putLong(zzdrl.NATIVE_ASSETS_LOADING_VIDEO_START.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        ListenableFuture zzh = zzgcy.zzh(null);
        zzgcf zzgcfVar = new zzgcf() { // from class: com.google.android.gms.internal.ads.zzdmi
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzdmo.zza(zzdmo.this, zzbVar, zzbxvVar, obj);
            }
        };
        Executor executor = this.zzb;
        return zzgcy.zzn(zzgcy.zzn(zzh, zzgcfVar, executor), new zzgcf() { // from class: com.google.android.gms.internal.ads.zzdmh
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzdmo.zzb(zzdmo.this, jSONObject, (zzcfb) obj);
            }
        }, executor);
    }

    public final ListenableFuture zze(final String str, final String str2, final zzfbu zzfbuVar, final zzfbx zzfbxVar, final com.google.android.gms.ads.internal.client.zzr zzrVar, final com.google.android.gms.ads.internal.zzb zzbVar, final zzbxv zzbxvVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcx)).booleanValue()) {
            this.zzi.zza().putLong(zzdrl.NATIVE_ASSETS_LOADING_VIDEO_COMPOSITION_START.zza(), com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        }
        return zzgcy.zzn(zzgcy.zzh(null), new zzgcf() { // from class: com.google.android.gms.internal.ads.zzdme
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                return zzdmo.zzc(zzdmo.this, zzrVar, zzfbuVar, zzfbxVar, zzbVar, zzbxvVar, str, str2, obj);
            }
        }, this.zzb);
    }
}
