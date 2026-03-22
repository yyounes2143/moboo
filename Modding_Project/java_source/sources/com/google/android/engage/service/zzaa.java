package com.google.android.engage.service;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.engage.common.datamodel.AccountProfile;
import com.google.android.engage.protocol.IAppEngageService;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.common.base.Optional;
import com.google.common.util.concurrent.MoreExecutors;
/* compiled from: Proguard */
@WorkerThread
/* loaded from: classes4.dex */
public final class zzaa {
    @VisibleForTesting
    static zzaa zzc;
    public static final /* synthetic */ int zze = 0;
    @Nullable
    @VisibleForTesting
    final com.google.android.gms.internal.engage.zzo zzd;
    private final boolean zzg;
    private final boolean zzh;
    private final String zzi;
    private final String zzj;
    private static final com.google.android.gms.internal.engage.zzd zzf = new com.google.android.gms.internal.engage.zzd("AppEngageService");
    @VisibleForTesting
    static final Intent zza = new Intent("com.google.android.engage.BIND_APP_ENGAGE_SERVICE").setPackage("com.android.vending");
    static final Intent zzb = new Intent("com.google.android.engage.BIND_APP_ENGAGE_SERVICE").setPackage("com.google.android.engage.verifyapp");

    /* JADX WARN: Type inference failed for: r9v0, types: [com.google.android.engage.service.zzs, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v1, types: [com.google.android.engage.service.zzs, java.lang.Object] */
    private zzaa(Context context) {
        boolean z;
        this.zzi = context.getPackageName();
        if (zzag.zza(context) - 1 != 0) {
            this.zzj = "1.5.11-debug";
            this.zzg = true;
            this.zzh = true;
            try {
                context.getPackageManager().getPackageInfo("com.google.android.engage.verifyapp", 0);
                this.zzd = new com.google.android.gms.internal.engage.zzo(com.google.android.gms.internal.engage.zzq.zza(context), zzf, "AppEngageService", zzb, new Object(), null);
                return;
            } catch (PackageManager.NameNotFoundException unused) {
                this.zzd = null;
                return;
            }
        }
        this.zzj = "1.5.11";
        if (com.google.android.gms.internal.engage.zzs.zza(context)) {
            this.zzd = new com.google.android.gms.internal.engage.zzo(com.google.android.gms.internal.engage.zzq.zza(context), zzf, "AppEngageService", zza, new Object(), null);
            if (zzg(context) >= 83441400) {
                z = true;
            } else {
                z = false;
            }
            this.zzg = z;
            this.zzh = zzg(context) >= 84080000;
            return;
        }
        this.zzd = null;
        this.zzg = false;
        this.zzh = false;
    }

    public static zzaa zza(Context context) {
        if (zzi(context)) {
            synchronized (zzaa.class) {
                try {
                    if (zzi(context)) {
                        zzc = new zzaa(context);
                    }
                } finally {
                }
            }
        }
        return zzc;
    }

    private static int zzg(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.android.vending", 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            return -1;
        }
    }

    private final Task zzh(zzy zzyVar) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        com.google.android.gms.internal.engage.zzo zzoVar = this.zzd;
        if (zzoVar == null) {
            return Tasks.forException(new AppEngageException(1));
        }
        zzoVar.zzt(new zzt(this, taskCompletionSource, zzyVar, taskCompletionSource), taskCompletionSource);
        return taskCompletionSource.getTask().continueWithTask(MoreExecutors.directExecutor(), new Object());
    }

    private static boolean zzi(Context context) {
        zzaa zzaaVar = zzc;
        if (zzaaVar != null && zzaaVar.zzd != null && com.google.android.gms.internal.engage.zzs.zza(context)) {
            return false;
        }
        return true;
    }

    public final Task zzb(DeleteClustersRequest deleteClustersRequest) {
        final Bundle bundle = new Bundle();
        bundle.putString("engage_sdk_version", this.zzj);
        bundle.putString("calling_package_name", this.zzi);
        if (deleteClustersRequest.getDeleteReason() != 0) {
            bundle.putInt("delete_reason", deleteClustersRequest.getDeleteReason());
        }
        if (deleteClustersRequest.getSyncAcrossDevices()) {
            bundle.putBoolean("delete_request_sync_across_devices", true);
        }
        AccountProfile accountProfile = deleteClustersRequest.getAccountProfile();
        if (accountProfile != null) {
            bundle.putString("account_profile_account_id", accountProfile.getAccountId());
            if (accountProfile.getProfileId().isPresent()) {
                bundle.putString("account_profile_user_profile_id", accountProfile.getProfileId().get());
            }
        }
        Optional zza2 = deleteClustersRequest.zza();
        if (zza2.isPresent()) {
            bundle.putParcelable("cluster_metadata", (Parcelable) zza2.get());
            bundle.putBundle("cluster_metadata_v2", ((ClusterMetadata) zza2.get()).zza());
        }
        return zzh(new zzy() { // from class: com.google.android.engage.service.zzr
            @Override // com.google.android.engage.service.zzy
            public final void zza(IAppEngageService iAppEngageService, TaskCompletionSource taskCompletionSource) {
                iAppEngageService.deleteClusters(bundle, new zzv(zzaa.this, taskCompletionSource, null));
            }
        });
    }

    public final Task zzc() {
        if (!this.zzg) {
            return Tasks.forResult(Boolean.FALSE);
        }
        final Bundle bundle = new Bundle();
        bundle.putString("engage_sdk_version", this.zzj);
        bundle.putString("calling_package_name", this.zzi);
        return zzh(new zzy() { // from class: com.google.android.engage.service.zzn
            @Override // com.google.android.engage.service.zzy
            public final void zza(IAppEngageService iAppEngageService, TaskCompletionSource taskCompletionSource) {
                iAppEngageService.isServiceAvailable(bundle, new zzu(zzaa.this, taskCompletionSource, null));
            }
        }).continueWithTask(MoreExecutors.directExecutor(), new Object());
    }

    public final Task zzd(zzac zzacVar) {
        return zze(zzacVar, new Bundle());
    }

    public final Task zze(zzac zzacVar, final Bundle bundle) {
        bundle.putString("engage_sdk_version", this.zzj);
        bundle.putString("calling_package_name", this.zzi);
        bundle.putBundle("clusters_v2", zzacVar.zza());
        if (this.zzd == null) {
            return Tasks.forException(new AppEngageException(1));
        }
        if (!this.zzh) {
            zzf.zza("Publish clusters skipped. Please upgrade your play store version to 40.8 or above.", new Object[0]);
            return Tasks.forResult(new Bundle());
        }
        return zzh(new zzy() { // from class: com.google.android.engage.service.zzq
            @Override // com.google.android.engage.service.zzy
            public final void zza(IAppEngageService iAppEngageService, TaskCompletionSource taskCompletionSource) {
                iAppEngageService.publishClusters(bundle, new zzw(zzaa.this, taskCompletionSource, null));
            }
        });
    }

    public final Task zzf(PublishStatusRequest publishStatusRequest) {
        final Bundle bundle = new Bundle();
        bundle.putString("engage_sdk_version", this.zzj);
        bundle.putString("calling_package_name", this.zzi);
        bundle.putInt("publish_status_code", publishStatusRequest.getStatusCode());
        return zzh(new zzy() { // from class: com.google.android.engage.service.zzm
            @Override // com.google.android.engage.service.zzy
            public final void zza(IAppEngageService iAppEngageService, TaskCompletionSource taskCompletionSource) {
                iAppEngageService.updatePublishStatus(bundle, new zzx(zzaa.this, taskCompletionSource, null));
            }
        });
    }
}
