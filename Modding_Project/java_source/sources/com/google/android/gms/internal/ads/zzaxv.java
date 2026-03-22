package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaxv extends zzayb {
    private final zzawv zzh;
    private long zzi;

    public zzaxv(zzawo zzawoVar, String str, String str2, zzask zzaskVar, int i, int i2, zzawv zzawvVar) {
        super(zzawoVar, "YdsvNQpLn71zCPsmNiBmaxgvKAoUotN+t67Ej8NmXEez61kI/ElwL7USsI8xuH+E", "BTo9KBR1VAIklcWQcnKn1k6hpYvG+18rom++PUlQVcU=", zzaskVar, i, 53);
        this.zzh = zzawvVar;
        if (zzawvVar != null) {
            this.zzi = zzawvVar.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        if (this.zzh != null) {
            this.zzd.zzN(((Long) this.zze.invoke(null, Long.valueOf(this.zzi))).longValue());
        }
    }
}
