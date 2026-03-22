package com.google.android.gms.internal.ads;

import android.graphics.Insets;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.mbridge.msdk.foundation.entity.b;
import java.util.ArrayList;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzemk implements zzetu {
    public final com.google.android.gms.ads.internal.client.zzr zza;
    @Nullable
    public final String zzb;
    public final boolean zzc;
    public final String zzd;
    public final float zze;
    public final int zzf;
    public final int zzg;
    @Nullable
    public final String zzh;
    public final boolean zzi;
    @Nullable
    public final Insets zzj;

    public zzemk(com.google.android.gms.ads.internal.client.zzr zzrVar, @Nullable String str, boolean z, String str2, float f, int i, int i2, @Nullable String str3, boolean z2, @Nullable Insets insets) {
        Preconditions.checkNotNull(zzrVar, "the adSize must not be null");
        this.zza = zzrVar;
        this.zzb = str;
        this.zzc = z;
        this.zzd = str2;
        this.zze = f;
        this.zzf = i;
        this.zzg = i2;
        this.zzh = str3;
        this.zzi = z2;
        this.zzj = insets;
    }

    private final void zzc(Bundle bundle) {
        boolean z;
        boolean z2;
        String str;
        Insets insets;
        int i;
        int i2;
        int i3;
        int i4;
        com.google.android.gms.ads.internal.client.zzr zzrVar = this.zza;
        int i5 = zzrVar.zze;
        if (i5 == -1) {
            z = true;
        } else {
            z = false;
        }
        zzfdd.zzf(bundle, "smart_w", "full", z);
        int i6 = zzrVar.zzb;
        if (i6 == -2) {
            z2 = true;
        } else {
            z2 = false;
        }
        zzfdd.zzf(bundle, "smart_h", "auto", z2);
        zzfdd.zzg(bundle, "ene", true, zzrVar.zzj);
        zzfdd.zzf(bundle, "rafmt", "102", zzrVar.zzm);
        zzfdd.zzf(bundle, "rafmt", "103", zzrVar.zzn);
        zzfdd.zzf(bundle, "rafmt", "105", zzrVar.zzo);
        zzfdd.zzg(bundle, "inline_adaptive_slot", true, this.zzi);
        zzfdd.zzg(bundle, "interscroller_slot", true, zzrVar.zzo);
        zzfdd.zzc(bundle, "format", this.zzb);
        zzfdd.zzf(bundle, "fluid", "height", this.zzc);
        zzfdd.zzf(bundle, "sz", this.zzd, !TextUtils.isEmpty(str));
        bundle.putFloat("u_sd", this.zze);
        bundle.putInt("sw", this.zzf);
        bundle.putInt(b.JSON_KEY_SH, this.zzg);
        String str2 = this.zzh;
        zzfdd.zzf(bundle, "sc", str2, true ^ TextUtils.isEmpty(str2));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzny)).booleanValue() && Build.VERSION.SDK_INT >= 35 && (insets = this.zzj) != null) {
            i = insets.top;
            bundle.putInt("sam_t", i);
            i2 = insets.bottom;
            bundle.putInt("sam_b", i2);
            i3 = insets.left;
            bundle.putInt("sam_l", i3);
            i4 = insets.right;
            bundle.putInt("sam_r", i4);
        }
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        com.google.android.gms.ads.internal.client.zzr[] zzrVarArr = zzrVar.zzg;
        if (zzrVarArr == null) {
            Bundle bundle2 = new Bundle();
            bundle2.putInt("height", i6);
            bundle2.putInt("width", i5);
            bundle2.putBoolean("is_fluid_height", zzrVar.zzi);
            arrayList.add(bundle2);
        } else {
            for (com.google.android.gms.ads.internal.client.zzr zzrVar2 : zzrVarArr) {
                Bundle bundle3 = new Bundle();
                bundle3.putBoolean("is_fluid_height", zzrVar2.zzi);
                bundle3.putInt("height", zzrVar2.zzb);
                bundle3.putInt("width", zzrVar2.zze);
                arrayList.add(bundle3);
            }
        }
        bundle.putParcelableArrayList("valid_ad_sizes", arrayList);
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* synthetic */ void zza(Object obj) {
        zzc(((zzcuv) obj).zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* synthetic */ void zzb(Object obj) {
        zzc(((zzcuv) obj).zza);
    }
}
