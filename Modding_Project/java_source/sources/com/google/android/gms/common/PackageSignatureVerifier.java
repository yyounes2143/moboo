package com.google.android.gms.common;

import android.content.Context;
import android.os.RemoteException;
import android.os.StrictMode;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.signatureverification.SignatureVerificationConfigurationProvider;
import com.google.android.gms.dynamite.DynamiteModule;
/* compiled from: Proguard */
@ShowFirstParty
@KeepForSdk
/* loaded from: classes4.dex */
public class PackageSignatureVerifier {
    @Nullable
    @VisibleForTesting
    static volatile zzac zza;
    @Nullable
    private static zzad zzb;

    private static synchronized zzad zza(Context context) {
        zzad zzadVar;
        synchronized (PackageSignatureVerifier.class) {
            try {
                if (zzb == null) {
                    zzb = new zzad(context);
                }
                zzadVar = zzb;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzadVar;
    }

    @NonNull
    @ShowFirstParty
    @KeepForSdk
    public PackageVerificationResult queryPackageSignatureVerified(@NonNull Context context, @NonNull String str) {
        String str2;
        boolean honorsDebugCertificates = GooglePlayServicesUtilLight.honorsDebugCertificates(context);
        zza(context);
        int i = zzo.zzh;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            zzo.zzb();
            if (zzo.zzg.zzi()) {
                SignatureVerificationConfigurationProvider.zza().zza();
                String valueOf = String.valueOf(str);
                if (true != honorsDebugCertificates) {
                    str2 = "-0";
                } else {
                    str2 = "-1";
                }
                String concat = valueOf.concat(str2);
                if (zza != null && zza.zza().equals(concat)) {
                    return zza.zzb();
                }
                str.getClass();
                zza(context);
                zzv zzvVar = new zzv(null);
                zzvVar.zza(str);
                zzvVar.zzb(honorsDebugCertificates);
                zzvVar.zzc(false);
                zzy zzc = zzo.zzc(zzvVar.zzd());
                if (zzc.zza) {
                    PackageVerificationResult zzd = PackageVerificationResult.zzd(str, zzc.zzd, null);
                    zza = new zzac(concat, zzd);
                    return zzd;
                }
                String str3 = zzc.zzb;
                Preconditions.checkNotNull(str3);
                return PackageVerificationResult.zza(str, str3, zzc.zzc, null);
            }
        } catch (RemoteException | DynamiteModule.LoadingException unused) {
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
        throw new zzae();
    }

    @NonNull
    @ShowFirstParty
    @KeepForSdk
    public PackageVerificationResult queryPackageSignatureVerifiedWithRetry(@NonNull Context context, @NonNull String str) {
        try {
            PackageVerificationResult queryPackageSignatureVerified = queryPackageSignatureVerified(context, str);
            queryPackageSignatureVerified.zzc();
            return queryPackageSignatureVerified;
        } catch (SecurityException unused) {
            PackageVerificationResult queryPackageSignatureVerified2 = queryPackageSignatureVerified(context, str);
            queryPackageSignatureVerified2.zzb();
            return queryPackageSignatureVerified2;
        }
    }
}
