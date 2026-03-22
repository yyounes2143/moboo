package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.TrafficStats;
import android.os.StrictMode;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: Proguard */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzcfo {
    public static final zzcfb zza(final Context context, final zzcgv zzcgvVar, final String str, final boolean z, final boolean z2, @Nullable final zzavl zzavlVar, @Nullable final zzbec zzbecVar, final VersionInfoParcel versionInfoParcel, @Nullable zzbdk zzbdkVar, @Nullable final com.google.android.gms.ads.internal.zzn zznVar, @Nullable final com.google.android.gms.ads.internal.zza zzaVar, final zzbbt zzbbtVar, @Nullable final zzfbu zzfbuVar, @Nullable final zzfbx zzfbxVar, @Nullable final zzece zzeceVar, @Nullable final zzfct zzfctVar, @Nullable final zzdsd zzdsdVar) throws zzcfn {
        zzbcv.zza(context);
        try {
            zzfvu zzfvuVar = new zzfvu(context, zzcgvVar, str, z, z2, zzavlVar, zzbecVar, versionInfoParcel, null, zznVar, zzaVar, zzbbtVar, zzfbuVar, zzfbxVar, zzfctVar, zzdsdVar, zzeceVar) { // from class: com.google.android.gms.internal.ads.zzcfm
                public final /* synthetic */ Context zza;
                public final /* synthetic */ zzcgv zzb;
                public final /* synthetic */ String zzc;
                public final /* synthetic */ boolean zzd;
                public final /* synthetic */ boolean zze;
                public final /* synthetic */ zzavl zzf;
                public final /* synthetic */ zzbec zzg;
                public final /* synthetic */ VersionInfoParcel zzh;
                public final /* synthetic */ com.google.android.gms.ads.internal.zzn zzi;
                public final /* synthetic */ com.google.android.gms.ads.internal.zza zzj;
                public final /* synthetic */ zzbbt zzk;
                public final /* synthetic */ zzfbu zzl;
                public final /* synthetic */ zzfbx zzm;
                public final /* synthetic */ zzfct zzn;
                public final /* synthetic */ zzdsd zzo;
                public final /* synthetic */ zzece zzp;

                {
                    this.zzi = zznVar;
                    this.zzj = zzaVar;
                    this.zzk = zzbbtVar;
                    this.zzl = zzfbuVar;
                    this.zzm = zzfbxVar;
                    this.zzn = zzfctVar;
                    this.zzo = zzdsdVar;
                    this.zzp = zzeceVar;
                }

                @Override // com.google.android.gms.internal.ads.zzfvu
                public final Object zza() {
                    zzcgv zzcgvVar2 = this.zzb;
                    String str2 = this.zzc;
                    boolean z3 = this.zzd;
                    zzbbt zzbbtVar2 = this.zzk;
                    boolean z4 = this.zze;
                    zzavl zzavlVar2 = this.zzf;
                    zzfbu zzfbuVar2 = this.zzl;
                    zzbec zzbecVar2 = this.zzg;
                    com.google.android.gms.ads.internal.zzn zznVar2 = this.zzi;
                    zzfbx zzfbxVar2 = this.zzm;
                    Context context2 = this.zza;
                    VersionInfoParcel versionInfoParcel2 = this.zzh;
                    com.google.android.gms.ads.internal.zza zzaVar2 = this.zzj;
                    zzfct zzfctVar2 = this.zzn;
                    zzdsd zzdsdVar2 = this.zzo;
                    zzece zzeceVar2 = this.zzp;
                    try {
                        TrafficStats.setThreadStatsTag(264);
                        int i = zzcga.zza;
                        zzcft zzcftVar = new zzcft(new zzcga(new zzcgu(context2), zzcgvVar2, str2, z3, z4, zzavlVar2, zzbecVar2, versionInfoParcel2, null, zznVar2, zzaVar2, zzbbtVar2, zzfbuVar2, zzfbxVar2, zzfctVar2), zzdsdVar2);
                        zzcftVar.setWebViewClient(com.google.android.gms.ads.internal.zzv.zzs().zzc(zzcftVar, zzbbtVar2, z4, zzeceVar2));
                        zzcftVar.setWebChromeClient(new zzcfa(zzcftVar));
                        return zzcftVar;
                    } finally {
                        TrafficStats.clearThreadStatsTag();
                    }
                }
            };
            StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            Object zza = zzfvuVar.zza();
            StrictMode.setThreadPolicy(threadPolicy);
            return (zzcfb) zza;
        } catch (Throwable th) {
            throw new zzcfn("Webview initialization failed.", th);
        }
    }
}
