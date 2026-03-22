package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcos extends zzcop {
    private final Context zzc;
    private final View zzd;
    @Nullable
    private final zzcfb zze;
    private final zzfbv zzf;
    private final zzcqv zzg;
    private final zzdiz zzh;
    private final zzdea zzi;
    private final zzhfp zzj;
    private final Executor zzk;
    private com.google.android.gms.ads.internal.client.zzr zzl;

    public zzcos(zzcqw zzcqwVar, Context context, zzfbv zzfbvVar, View view, @Nullable zzcfb zzcfbVar, zzcqv zzcqvVar, zzdiz zzdizVar, zzdea zzdeaVar, zzhfp zzhfpVar, Executor executor) {
        super(zzcqwVar);
        this.zzc = context;
        this.zzd = view;
        this.zze = zzcfbVar;
        this.zzf = zzfbvVar;
        this.zzg = zzcqvVar;
        this.zzh = zzdizVar;
        this.zzi = zzdeaVar;
        this.zzj = zzhfpVar;
        this.zzk = executor;
    }

    public static /* synthetic */ void zzj(zzcos zzcosVar) {
        zzbhr zze = zzcosVar.zzh.zze();
        if (zze == null) {
            return;
        }
        try {
            zze.zze((com.google.android.gms.ads.internal.client.zzbx) zzcosVar.zzj.zzb(), ObjectWrapper.wrap(zzcosVar.zzc));
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("RemoteException when notifyAdLoad is called", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final int zza() {
        return this.zza.zzb.zzb.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final int zzc() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzie)).booleanValue() && this.zzb.zzag) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzif)).booleanValue()) {
                return 0;
            }
        }
        return this.zza.zzb.zzb.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final View zzd() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzea zze() {
        try {
            return this.zzg.zza();
        } catch (zzfcw unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final zzfbv zzf() {
        com.google.android.gms.ads.internal.client.zzr zzrVar = this.zzl;
        if (zzrVar != null) {
            return zzfcv.zzb(zzrVar);
        }
        zzfbu zzfbuVar = this.zzb;
        if (zzfbuVar.zzac) {
            for (String str : zzfbuVar.zza) {
                if (str == null || !str.contains("FirstParty")) {
                }
            }
            View view = this.zzd;
            return new zzfbv(view.getWidth(), view.getHeight(), false);
        }
        return (zzfbv) zzfbuVar.zzr.get(0);
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final zzfbv zzg() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzh() {
        this.zzi.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcop
    public final void zzi(ViewGroup viewGroup, com.google.android.gms.ads.internal.client.zzr zzrVar) {
        zzcfb zzcfbVar;
        if (viewGroup != null && (zzcfbVar = this.zze) != null) {
            zzcfbVar.zzaj(zzcgv.zzc(zzrVar));
            viewGroup.setMinimumHeight(zzrVar.zzc);
            viewGroup.setMinimumWidth(zzrVar.zzf);
            this.zzl = zzrVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcqx
    public final void zzk() {
        this.zzk.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcor
            @Override // java.lang.Runnable
            public final void run() {
                zzcos.zzj(zzcos.this);
            }
        });
        super.zzk();
    }
}
