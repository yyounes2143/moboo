package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.IntentFilter;
import java.lang.ref.WeakReference;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfmh {
    @SuppressLint({"StaticFieldLeak"})
    private static final zzfmh zza = new zzfmh();
    private WeakReference zzb;
    private boolean zzc = false;
    private boolean zzd = false;

    public static zzfmh zza() {
        return zza;
    }

    public final void zzc() {
        KeyguardManager keyguardManager;
        Context context = (Context) this.zzb.get();
        if (context != null && (keyguardManager = (KeyguardManager) context.getSystemService("keyguard")) != null) {
            boolean isDeviceLocked = keyguardManager.isDeviceLocked();
            zzd(this.zzc, isDeviceLocked);
            this.zzd = isDeviceLocked;
        }
    }

    public final void zzd(boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        boolean z5;
        if (z2 || z) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (this.zzd || this.zzc) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (z3 != z4) {
            for (zzflf zzflfVar : zzflx.zza().zzc()) {
                zzfmn zzg = zzflfVar.zzg();
                if (z2 || z) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                zzg.zzm(z5);
            }
        }
    }

    public final void zze(Context context) {
        if (context == null) {
            return;
        }
        this.zzb = new WeakReference(context);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        context.registerReceiver(new zzfmg(this), intentFilter);
    }
}
