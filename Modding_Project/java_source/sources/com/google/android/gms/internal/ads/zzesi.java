package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.InstallSourceInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.common.util.concurrent.ListenableFuture;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzesi implements zzetv {
    private final ApplicationInfo zza;
    @Nullable
    private final PackageInfo zzb;
    private final Context zzc;

    public zzesi(ApplicationInfo applicationInfo, @Nullable PackageInfo packageInfo, Context context) {
        this.zza = applicationInfo;
        this.zzb = packageInfo;
        this.zzc = context;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 29;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        Integer valueOf;
        String str;
        String str2;
        String str3;
        String str4;
        InstallSourceInfo installSourceInfo;
        String str5 = this.zza.packageName;
        PackageInfo packageInfo = this.zzb;
        String str6 = null;
        if (packageInfo == null) {
            valueOf = null;
        } else {
            valueOf = Integer.valueOf(packageInfo.versionCode);
        }
        if (packageInfo == null) {
            str = null;
        } else {
            str = packageInfo.versionName;
        }
        try {
            Context context = this.zzc;
            zzfrl zzfrlVar = com.google.android.gms.ads.internal.util.zzs.zza;
            str2 = String.valueOf(Wrappers.packageManager(context).getApplicationLabel(str5));
        } catch (PackageManager.NameNotFoundException unused) {
            str2 = null;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmY)).booleanValue()) {
                try {
                    installSourceInfo = this.zzc.getPackageManager().getInstallSourceInfo(str5);
                } catch (PackageManager.NameNotFoundException e) {
                    e = e;
                    str3 = null;
                }
                if (installSourceInfo != null) {
                    str3 = installSourceInfo.getInstallingPackageName();
                    try {
                        if (TextUtils.isEmpty(str3)) {
                            com.google.android.gms.ads.internal.util.zze.zza("No installing package name found");
                            str3 = null;
                        }
                        str4 = installSourceInfo.getInitiatingPackageName();
                    } catch (PackageManager.NameNotFoundException e2) {
                        e = e2;
                    }
                    try {
                    } catch (PackageManager.NameNotFoundException e3) {
                        e = e3;
                        str6 = str4;
                        com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "PackageInfoSignalSource.getInstallSourceInfo");
                        str4 = str6;
                        return zzgcy.zzh(new zzesj(str5, valueOf, str, str2, str3, str4));
                    }
                    if (TextUtils.isEmpty(str4)) {
                        com.google.android.gms.ads.internal.util.zze.zza("No initiating package name found");
                        str4 = str6;
                    }
                    return zzgcy.zzh(new zzesj(str5, valueOf, str, str2, str3, str4));
                }
            }
        }
        str3 = null;
        str4 = null;
        return zzgcy.zzh(new zzesj(str5, valueOf, str, str2, str3, str4));
    }
}
