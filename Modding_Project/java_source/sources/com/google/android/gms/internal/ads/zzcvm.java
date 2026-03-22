package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.List;
import org.json.JSONException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcvm extends com.google.android.gms.ads.internal.client.zzdw {
    private final String zza;
    @Nullable
    private final String zzb;
    private final String zzc;
    @Nullable
    private final String zzd;
    private final List zze;
    private final long zzf;
    private final String zzg;
    @Nullable
    private final zzedk zzh;
    private final Bundle zzi;
    private final double zzj;

    public zzcvm(@Nullable zzfbu zzfbuVar, String str, zzedk zzedkVar, @Nullable zzfbx zzfbxVar, String str2) {
        String str3;
        String str4;
        double d;
        String str5;
        String str6 = null;
        if (zzfbuVar == null) {
            str3 = null;
        } else {
            str3 = zzfbuVar.zzab;
        }
        this.zzb = str3;
        this.zzc = str2;
        if (zzfbxVar == null) {
            str4 = null;
        } else {
            str4 = zzfbxVar.zzb;
        }
        this.zzd = str4;
        if (("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) && zzfbuVar != null) {
            try {
                str6 = zzfbuVar.zzv.getString("class_name");
            } catch (JSONException unused) {
            }
        }
        this.zza = str6 != null ? str6 : str;
        this.zze = zzedkVar.zzc();
        this.zzh = zzedkVar;
        if (zzfbuVar == null) {
            d = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        } else {
            d = zzfbuVar.zzaz;
        }
        this.zzj = d;
        this.zzf = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() / 1000;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgV)).booleanValue() && zzfbxVar != null) {
            this.zzi = zzfbxVar.zzk;
        } else {
            this.zzi = new Bundle();
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzjz)).booleanValue() && zzfbxVar != null && !TextUtils.isEmpty(zzfbxVar.zzi)) {
            str5 = zzfbxVar.zzi;
        } else {
            str5 = "";
        }
        this.zzg = str5;
    }

    public final double zzc() {
        return this.zzj;
    }

    public final long zzd() {
        return this.zzf;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdx
    public final Bundle zze() {
        return this.zzi;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdx
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzv zzf() {
        zzedk zzedkVar = this.zzh;
        if (zzedkVar != null) {
            return zzedkVar.zza();
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdx
    public final String zzg() {
        return this.zza;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdx
    public final String zzh() {
        return this.zzc;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdx
    @Nullable
    public final String zzi() {
        return this.zzb;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdx
    public final List zzj() {
        return this.zze;
    }

    public final String zzk() {
        return this.zzg;
    }

    @Nullable
    public final String zzl() {
        return this.zzd;
    }
}
