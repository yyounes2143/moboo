package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzelt implements zzetv {
    private final zzgdj zza;
    private final Context zzb;
    private final zzfcp zzc;
    @Nullable
    private final View zzd;

    public zzelt(zzgdj zzgdjVar, Context context, zzfcp zzfcpVar, @Nullable ViewGroup viewGroup) {
        this.zza = zzgdjVar;
        this.zzb = context;
        this.zzc = zzfcpVar;
        this.zzd = viewGroup;
    }

    public static /* synthetic */ zzelu zzc(zzelt zzeltVar) {
        int i;
        ArrayList arrayList = new ArrayList();
        View view = zzeltVar.zzd;
        while (view != null) {
            ViewParent parent = view.getParent();
            if (parent == null) {
                break;
            }
            if (parent instanceof ViewGroup) {
                i = ((ViewGroup) parent).indexOfChild(view);
            } else {
                i = -1;
            }
            Bundle bundle = new Bundle();
            bundle.putString("type", parent.getClass().getName());
            bundle.putInt("index_of_child", i);
            arrayList.add(bundle);
            if (!(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        return new zzelu(zzeltVar.zzb, zzeltVar.zzc.zze, arrayList);
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 3;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        zzbcv.zza(this.zzb);
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzels
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzelt.zzc(zzelt.this);
            }
        });
    }
}
