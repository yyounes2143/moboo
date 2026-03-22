package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaxt extends zzayb {
    private final StackTraceElement[] zzh;

    public zzaxt(zzawo zzawoVar, String str, String str2, zzask zzaskVar, int i, int i2, StackTraceElement[] stackTraceElementArr) {
        super(zzawoVar, "UtW7g7feJqOHsjIRMP7TbkL8M4VYsmVrsaULCIKJGwvBOELKcxTQZfT6AHg6wl4V", "3s4OpKjyDjUzqtut1o8wCVCKFRdtRePXWRu+sqk/xG8=", zzaskVar, i, 45);
        this.zzh = stackTraceElementArr;
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        int i = 1;
        StackTraceElement[] stackTraceElementArr = this.zzh;
        if (stackTraceElementArr != null) {
            zzawf zzawfVar = new zzawf((String) this.zze.invoke(null, stackTraceElementArr));
            zzask zzaskVar = this.zzd;
            synchronized (zzaskVar) {
                try {
                    zzaskVar.zzD(zzawfVar.zza.longValue());
                    if (zzawfVar.zzb.booleanValue()) {
                        if (true != zzawfVar.zzc.booleanValue()) {
                            i = 2;
                        }
                        zzaskVar.zzZ(i);
                    } else {
                        zzaskVar.zzZ(3);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
