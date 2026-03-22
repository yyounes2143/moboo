package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdns {
    private final com.google.android.gms.ads.internal.zza zzb;
    private final Context zzc;
    private final zzdsd zzd;
    private final Executor zze;
    private final zzavl zzf;
    private final VersionInfoParcel zzg;
    private final zzebt zzi;
    private final zzfjr zzj;
    private final zzece zzk;
    private final zzfct zzl;
    private ListenableFuture zzm;
    private final zzdnf zza = new zzdnf();
    private final zzbkm zzh = new zzbkm();

    public zzdns(zzdnp zzdnpVar) {
        this.zzc = zzdnp.zza(zzdnpVar);
        this.zze = zzdnp.zzj(zzdnpVar);
        this.zzf = zzdnp.zzb(zzdnpVar);
        this.zzg = zzdnp.zzd(zzdnpVar);
        this.zzb = zzdnp.zzc(zzdnpVar);
        this.zzi = zzdnp.zzf(zzdnpVar);
        this.zzj = zzdnp.zzi(zzdnpVar);
        this.zzd = zzdnp.zze(zzdnpVar);
        this.zzk = zzdnp.zzg(zzdnpVar);
        this.zzl = zzdnp.zzh(zzdnpVar);
    }

    public static /* synthetic */ zzcfb zza(zzdns zzdnsVar, zzcfb zzcfbVar) {
        zzcfbVar.zzag("/result", zzdnsVar.zzh);
        zzcgt zzN = zzcfbVar.zzN();
        com.google.android.gms.ads.internal.zzb zzbVar = new com.google.android.gms.ads.internal.zzb(zzdnsVar.zzc, null, null);
        zzebt zzebtVar = zzdnsVar.zzi;
        zzfjr zzfjrVar = zzdnsVar.zzj;
        zzdsd zzdsdVar = zzdnsVar.zzd;
        zzdnf zzdnfVar = zzdnsVar.zza;
        zzN.zzX(null, zzdnfVar, zzdnfVar, zzdnfVar, zzdnfVar, false, null, zzbVar, null, null, zzebtVar, zzfjrVar, zzdsdVar, null, null, null, null, null, null);
        return zzcfbVar;
    }

    public final synchronized ListenableFuture zzg(final String str, final JSONObject jSONObject) {
        ListenableFuture listenableFuture = this.zzm;
        if (listenableFuture == null) {
            return zzgcy.zzh(null);
        }
        return zzgcy.zzn(listenableFuture, new zzgcf() { // from class: com.google.android.gms.internal.ads.zzdng
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj) {
                ListenableFuture zzb;
                zzcfb zzcfbVar = (zzcfb) obj;
                zzb = zzdns.this.zzh.zzb(zzcfbVar, str, jSONObject);
                return zzb;
            }
        }, this.zze);
    }

    public final synchronized void zzh(zzfbu zzfbuVar, zzfbx zzfbxVar, zzcmn zzcmnVar) {
        ListenableFuture listenableFuture = this.zzm;
        if (listenableFuture == null) {
            return;
        }
        zzgcy.zzr(listenableFuture, new zzdnm(this, zzfbuVar, zzfbxVar, zzcmnVar), this.zze);
    }

    public final synchronized void zzi() {
        ListenableFuture listenableFuture = this.zzm;
        if (listenableFuture == null) {
            return;
        }
        zzgcy.zzr(listenableFuture, new zzdni(this), this.zze);
        this.zzm = null;
    }

    public final synchronized void zzj(String str, Map map) {
        ListenableFuture listenableFuture = this.zzm;
        if (listenableFuture == null) {
            return;
        }
        zzgcy.zzr(listenableFuture, new zzdnl(this, "sendMessageToNativeJs", map), this.zze);
    }

    public final synchronized void zzk() {
        final String str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzea);
        final Context context = this.zzc;
        final zzavl zzavlVar = this.zzf;
        final VersionInfoParcel versionInfoParcel = this.zzg;
        final com.google.android.gms.ads.internal.zza zzaVar = this.zzb;
        final zzece zzeceVar = this.zzk;
        final zzfct zzfctVar = this.zzl;
        final zzdsd zzdsdVar = this.zzd;
        ListenableFuture zzm = zzgcy.zzm(zzgcy.zzk(new zzgce() { // from class: com.google.android.gms.internal.ads.zzcfk
            @Override // com.google.android.gms.internal.ads.zzgce
            public final ListenableFuture zza() {
                com.google.android.gms.ads.internal.zzv.zzB();
                Context context2 = context;
                zzece zzeceVar2 = zzeceVar;
                zzcgv zza = zzcgv.zza();
                zzavl zzavlVar2 = zzavlVar;
                zzfct zzfctVar2 = zzfctVar;
                com.google.android.gms.ads.internal.zza zzaVar2 = zzaVar;
                zzcfb zza2 = zzcfo.zza(context2, zza, "", false, false, zzavlVar2, null, versionInfoParcel, null, null, zzaVar2, zzbbt.zza(), null, null, zzeceVar2, zzfctVar2, zzdsdVar);
                final zzcae zza3 = zzcae.zza(zza2);
                zza2.zzN().zzC(new zzcgr() { // from class: com.google.android.gms.internal.ads.zzcfl
                    @Override // com.google.android.gms.internal.ads.zzcgr
                    public final void zza(boolean z, int i, String str2, String str3) {
                        zzcae.this.zzb();
                    }
                });
                zza2.loadUrl(str);
                return zza3;
            }
        }, zzcaa.zzf), new zzfur() { // from class: com.google.android.gms.internal.ads.zzdnh
            @Override // com.google.android.gms.internal.ads.zzfur
            public final Object apply(Object obj) {
                zzcfb zzcfbVar = (zzcfb) obj;
                zzdns.zza(zzdns.this, zzcfbVar);
                return zzcfbVar;
            }
        }, this.zze);
        this.zzm = zzm;
        zzcad.zza(zzm, "NativeJavascriptExecutor.initializeEngine");
    }

    public final synchronized void zzl(String str, zzbjw zzbjwVar) {
        ListenableFuture listenableFuture = this.zzm;
        if (listenableFuture == null) {
            return;
        }
        zzgcy.zzr(listenableFuture, new zzdnj(this, str, zzbjwVar), this.zze);
    }

    public final void zzm(WeakReference weakReference, String str, zzbjw zzbjwVar) {
        zzl(str, new zzdnq(this, weakReference, str, zzbjwVar, null));
    }

    public final synchronized void zzn(String str, zzbjw zzbjwVar) {
        ListenableFuture listenableFuture = this.zzm;
        if (listenableFuture == null) {
            return;
        }
        zzgcy.zzr(listenableFuture, new zzdnk(this, str, zzbjwVar), this.zze);
    }
}
