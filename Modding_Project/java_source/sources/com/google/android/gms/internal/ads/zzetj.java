package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzetj implements zzetv {
    private final zzgdj zza;
    private final Context zzb;
    private final VersionInfoParcel zzc;
    @Nullable
    private final String zzd;

    public zzetj(zzgdj zzgdjVar, Context context, VersionInfoParcel versionInfoParcel, @Nullable String str) {
        this.zza = zzgdjVar;
        this.zzb = context;
        this.zzc = versionInfoParcel;
        this.zzd = str;
    }

    public static /* synthetic */ zzetk zzc(zzetj zzetjVar) {
        int i;
        Context context = zzetjVar.zzb;
        boolean isCallerInstantApp = Wrappers.packageManager(context).isCallerInstantApp();
        com.google.android.gms.ads.internal.zzv.zzr();
        boolean zzF = com.google.android.gms.ads.internal.util.zzs.zzF(context);
        String str = zzetjVar.zzc.afmaVersion;
        com.google.android.gms.ads.internal.zzv.zzr();
        boolean zzG = com.google.android.gms.ads.internal.util.zzs.zzG();
        com.google.android.gms.ads.internal.zzv.zzr();
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo == null) {
            i = 0;
        } else {
            i = applicationInfo.targetSdkVersion;
        }
        return new zzetk(isCallerInstantApp, zzF, str, zzG, i, DynamiteModule.getRemoteVersion(context, ModuleDescriptor.MODULE_ID), DynamiteModule.getLocalVersion(context, ModuleDescriptor.MODULE_ID), zzetjVar.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 35;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeti
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzetj.zzc(zzetj.this);
            }
        });
    }
}
