package com.google.android.gms.ads.nonagon.util.logging.csi;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ads.zzhfv;
import com.google.android.gms.internal.ads.zzhge;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class CsiParamDefaults_Factory implements zzhfv<CsiParamDefaults> {
    private final zzhge zza;
    private final zzhge zzb;

    public CsiParamDefaults_Factory(zzhge<Context> zzhgeVar, zzhge<VersionInfoParcel> zzhgeVar2) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
    }

    public static CsiParamDefaults_Factory create(zzhge<Context> zzhgeVar, zzhge<VersionInfoParcel> zzhgeVar2) {
        return new CsiParamDefaults_Factory(zzhgeVar, zzhgeVar2);
    }

    @NonNull
    public static CsiParamDefaults newInstance(@NonNull Context context, @NonNull VersionInfoParcel versionInfoParcel) {
        return new CsiParamDefaults(context, versionInfoParcel);
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    @NonNull
    /* renamed from: get */
    public CsiParamDefaults zzb() {
        return newInstance((Context) this.zza.zzb(), (VersionInfoParcel) this.zzb.zzb());
    }
}
