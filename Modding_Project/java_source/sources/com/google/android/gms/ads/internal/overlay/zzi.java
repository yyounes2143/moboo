package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.internal.ads.zzcfb;
/* compiled from: Proguard */
@VisibleForTesting
/* loaded from: classes4.dex */
public final class zzi {
    public final int zza;
    public final ViewGroup.LayoutParams zzb;
    public final ViewGroup zzc;
    public final Context zzd;

    public zzi(zzcfb zzcfbVar) throws zzg {
        this.zzb = zzcfbVar.getLayoutParams();
        ViewParent parent = zzcfbVar.getParent();
        this.zzd = zzcfbVar.zzE();
        if (parent != null && (parent instanceof ViewGroup)) {
            ViewGroup viewGroup = (ViewGroup) parent;
            this.zzc = viewGroup;
            this.zza = viewGroup.indexOfChild(zzcfbVar.zzF());
            viewGroup.removeView(zzcfbVar.zzF());
            zzcfbVar.zzaq(true);
            return;
        }
        throw new zzg("Could not get the parent of the WebView for an overlay.");
    }
}
