package com.google.android.engage.common.datamodel;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzp {
    private final zzk zza = new zzk();

    public final zzp zzb(SignInCardEntity signInCardEntity) {
        this.zza.zzd(signInCardEntity);
        return this;
    }

    public final zzp zzc(UserSettingsCardEntity userSettingsCardEntity) {
        this.zza.zzd(userSettingsCardEntity);
        return this;
    }

    public final EngagementCluster zzd() {
        return new EngagementCluster(this, null);
    }
}
