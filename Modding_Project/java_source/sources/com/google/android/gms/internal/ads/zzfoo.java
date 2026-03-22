package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfoo {
    private final Context zza;
    private final Executor zzb;
    private final zzfnx zzc;
    private final zzfon zzd;
    private Task zze;

    @VisibleForTesting
    public zzfoo(Context context, Executor executor, zzfnx zzfnxVar, zzfnz zzfnzVar, zzfom zzfomVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzfnxVar;
        this.zzd = zzfomVar;
    }

    public static /* synthetic */ zzath zza(zzfoo zzfooVar) {
        Context context = zzfooVar.zza;
        return zzfof.zza(context, context.getPackageName(), Integer.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode));
    }

    public static zzfoo zzc(@NonNull Context context, @NonNull Executor executor, @NonNull zzfnx zzfnxVar, @NonNull zzfnz zzfnzVar) {
        final zzfoo zzfooVar = new zzfoo(context, executor, zzfnxVar, zzfnzVar, new zzfom());
        Callable callable = new Callable() { // from class: com.google.android.gms.internal.ads.zzfok
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzfoo.zza(zzfoo.this);
            }
        };
        Executor executor2 = zzfooVar.zzb;
        zzfooVar.zze = Tasks.call(executor2, callable).addOnFailureListener(executor2, new OnFailureListener() { // from class: com.google.android.gms.internal.ads.zzfol
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                zzfoo.zzd(zzfoo.this, exc);
            }
        });
        return zzfooVar;
    }

    public static /* synthetic */ void zzd(zzfoo zzfooVar, Exception exc) {
        if (exc instanceof InterruptedException) {
            Thread.currentThread().interrupt();
        }
        zzfooVar.zzc.zzc(2025, -1L, exc);
    }

    public final zzath zzb() {
        zzfon zzfonVar = this.zzd;
        Task task = this.zze;
        zzath zza = zzfonVar.zza();
        if (!task.isSuccessful()) {
            return zza;
        }
        return (zzath) task.getResult();
    }
}
