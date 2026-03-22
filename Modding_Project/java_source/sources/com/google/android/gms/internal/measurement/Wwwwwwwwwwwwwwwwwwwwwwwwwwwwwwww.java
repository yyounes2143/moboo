package com.google.android.gms.internal.measurement;

import android.os.Binder;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww {
    public static Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(zzju zzjuVar) {
        try {
            return zzjuVar.zza();
        } catch (SecurityException unused) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return zzjuVar.zza();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }
}
