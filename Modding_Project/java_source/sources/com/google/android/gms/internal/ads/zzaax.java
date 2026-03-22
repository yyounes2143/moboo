package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.view.Surface;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaax extends Surface {
    private static int zzb;
    private static boolean zzc;
    public final boolean zza;
    private final zzaav zzd;
    private boolean zze;

    public /* synthetic */ zzaax(zzaav zzaavVar, SurfaceTexture surfaceTexture, boolean z, zzaaw zzaawVar) {
        super(surfaceTexture);
        this.zzd = zzaavVar;
        this.zza = z;
    }

    public static zzaax zza(Context context, boolean z) {
        int i = 0;
        boolean z2 = true;
        if (z && !zzb(context)) {
            z2 = false;
        }
        zzdc.zzf(z2);
        zzaav zzaavVar = new zzaav();
        if (z) {
            i = zzb;
        }
        return zzaavVar.zza(i);
    }

    public static synchronized boolean zzb(Context context) {
        int i;
        int i2;
        synchronized (zzaax.class) {
            try {
                if (!zzc) {
                    if (zzdo.zzd(context)) {
                        if (zzdo.zze()) {
                            i2 = 1;
                        } else {
                            i2 = 2;
                        }
                    } else {
                        i2 = 0;
                    }
                    zzb = i2;
                    zzc = true;
                }
                i = zzb;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (i == 0) {
            return false;
        }
        return true;
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        zzaav zzaavVar = this.zzd;
        synchronized (zzaavVar) {
            try {
                if (!this.zze) {
                    zzaavVar.zzb();
                    this.zze = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
