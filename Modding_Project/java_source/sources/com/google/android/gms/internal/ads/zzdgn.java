package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzbca;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdgn implements zzcvt, zzddd {
    private final zzbyf zza;
    private final Context zzb;
    private final zzbyj zzc;
    @Nullable
    private final View zzd;
    private String zze;
    private final zzbca.zza.EnumC0040zza zzf;

    public zzdgn(zzbyf zzbyfVar, Context context, zzbyj zzbyjVar, @Nullable View view, zzbca.zza.EnumC0040zza enumC0040zza) {
        this.zza = zzbyfVar;
        this.zzb = context;
        this.zzc = zzbyjVar;
        this.zzd = view;
        this.zzf = enumC0040zza;
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zza() {
        this.zza.zzb(false);
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzc() {
        View view = this.zzd;
        if (view != null && this.zze != null) {
            this.zzc.zzo(view.getContext(), this.zze);
        }
        this.zza.zzb(true);
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    @ParametersAreNonnullByDefault
    public final void zzdu(zzbvx zzbvxVar, String str, String str2) {
        zzbyj zzbyjVar = this.zzc;
        Context context = this.zzb;
        if (zzbyjVar.zzp(context)) {
            try {
                zzbyjVar.zzl(context, zzbyjVar.zzb(context), this.zza.zza(), zzbvxVar.zzc(), zzbvxVar.zzb());
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Remote Exception to get reward item.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzddd
    public final void zzj() {
        String str;
        zzbca.zza.EnumC0040zza enumC0040zza = this.zzf;
        if (enumC0040zza == zzbca.zza.EnumC0040zza.APP_OPEN) {
            return;
        }
        String zzd = this.zzc.zzd(this.zzb);
        this.zze = zzd;
        String valueOf = String.valueOf(zzd);
        if (enumC0040zza == zzbca.zza.EnumC0040zza.REWARD_BASED_VIDEO_AD) {
            str = "/Rewarded";
        } else {
            str = "/Interstitial";
        }
        this.zze = valueOf.concat(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzf() {
    }

    @Override // com.google.android.gms.internal.ads.zzddd
    public final void zzi() {
    }
}
