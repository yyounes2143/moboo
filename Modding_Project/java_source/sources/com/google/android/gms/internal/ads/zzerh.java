package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.view.ViewGroup;
import android.view.Window;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Set;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzerh implements zzetv {
    private final zzgdj zza;
    @Nullable
    private final ViewGroup zzb;
    private final Context zzc;
    private final Set zzd;

    public zzerh(zzgdj zzgdjVar, @Nullable ViewGroup viewGroup, Context context, Set set) {
        this.zza = zzgdjVar;
        this.zzd = set;
        this.zzb = viewGroup;
        this.zzc = context;
    }

    public static /* synthetic */ zzeri zzc(zzerh zzerhVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgd)).booleanValue() && zzerhVar.zzb != null && zzerhVar.zzd.contains("banner")) {
            return new zzeri(Boolean.valueOf(zzerhVar.zzb.isHardwareAccelerated()));
        }
        Boolean bool = null;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzge)).booleanValue() && zzerhVar.zzd.contains("native")) {
            Context context = zzerhVar.zzc;
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                Window window = activity.getWindow();
                if (window != null && (window.getAttributes().flags & 16777216) != 0) {
                    bool = Boolean.TRUE;
                } else {
                    try {
                        boolean z = false;
                        if ((activity.getPackageManager().getActivityInfo(activity.getComponentName(), 0).flags & 512) != 0) {
                            z = true;
                        }
                        bool = Boolean.valueOf(z);
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                }
                return new zzeri(bool);
            }
        }
        return new zzeri(null);
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 22;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzerg
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzerh.zzc(zzerh.this);
            }
        });
    }
}
