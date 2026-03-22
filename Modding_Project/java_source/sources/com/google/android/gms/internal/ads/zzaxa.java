package com.google.android.gms.internal.ads;

import android.provider.Settings;
import java.lang.reflect.InvocationTargetException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaxa extends zzayb {
    public zzaxa(zzawo zzawoVar, String str, String str2, zzask zzaskVar, int i, int i2) {
        super(zzawoVar, "WQkp0526ddrUi1BRkagos9QKSJQ1uugrJcxnlXdGVtysNEwcyhf7H4AuLi1Daa/J", "bIxRlixcWzGpKi+RzORPGFA/CCK1ebxNEgd5yxb9Upc=", zzaskVar, i, 49);
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        int i = 1;
        zzask zzaskVar = this.zzd;
        zzaskVar.zzY(3);
        try {
            if (true == ((Boolean) this.zze.invoke(null, this.zza.zzb())).booleanValue()) {
                i = 2;
            }
            zzaskVar.zzY(i);
        } catch (InvocationTargetException e) {
            if (e.getTargetException() instanceof Settings.SettingNotFoundException) {
                return;
            }
            throw e;
        }
    }
}
