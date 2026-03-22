package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import j$.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdr extends zzeq {
    final /* synthetic */ Context zza;
    final /* synthetic */ Bundle zzb;
    final /* synthetic */ zzfb zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdr(zzfb zzfbVar, Context context, Bundle bundle) {
        super(zzfbVar, true);
        this.zza = context;
        this.zzb = bundle;
        Objects.requireNonNull(zzfbVar);
        this.zzc = zzfbVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzeq
    public final void zza() {
        boolean z;
        boolean z2;
        try {
            Context context = this.zza;
            Preconditions.checkNotNull(context);
            String zza = com.google.android.gms.measurement.internal.zzhu.zza(context);
            Preconditions.checkNotNull(context);
            Resources resources = context.getResources();
            if (TextUtils.isEmpty(zza)) {
                zza = com.google.android.gms.measurement.internal.zzhu.zza(context);
            }
            Boolean zzc = com.google.android.gms.measurement.internal.zzhu.zzc("google_analytics_force_disable_updates", resources, zza);
            zzfb zzfbVar = this.zzc;
            if (zzc == null || !zzc.booleanValue()) {
                z = true;
            } else {
                z = false;
            }
            zzfbVar.zzR(zzfbVar.zzc(context, z));
            if (zzfbVar.zzQ() == null) {
                zzfbVar.zzO();
                return;
            }
            int localVersion = DynamiteModule.getLocalVersion(context, ModuleDescriptor.MODULE_ID);
            int remoteVersion = DynamiteModule.getRemoteVersion(context, ModuleDescriptor.MODULE_ID);
            int max = Math.max(localVersion, remoteVersion);
            if (Boolean.TRUE.equals(zzc) || remoteVersion < localVersion) {
                z2 = true;
            } else {
                z2 = false;
            }
            ((zzcr) Preconditions.checkNotNull(zzfbVar.zzQ())).initialize(ObjectWrapper.wrap(context), new zzdd(133005L, max, z2, this.zzb, com.google.android.gms.measurement.internal.zzhu.zza(context)), this.zzh);
        } catch (Exception e) {
            this.zzc.zzN(e, true, false);
        }
    }
}
