package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgoi implements zzgom {
    private final String zza;
    private final zzgwp zzb;
    private final zzgxk zzc;
    private final zzgtk zzd;
    private final zzguq zze;
    @Nullable
    private final Integer zzf;

    private zzgoi(String str, zzgwp zzgwpVar, zzgxk zzgxkVar, zzgtk zzgtkVar, zzguq zzguqVar, @Nullable Integer num) {
        this.zza = str;
        this.zzb = zzgwpVar;
        this.zzc = zzgxkVar;
        this.zzd = zzgtkVar;
        this.zze = zzguqVar;
        this.zzf = num;
    }

    public static zzgoi zza(String str, zzgxk zzgxkVar, zzgtk zzgtkVar, zzguq zzguqVar, @Nullable Integer num) throws GeneralSecurityException {
        if (zzguqVar == zzguq.RAW) {
            if (num != null) {
                throw new GeneralSecurityException("Keys with output prefix type raw should not have an id requirement.");
            }
        } else if (num == null) {
            throw new GeneralSecurityException("Keys with output prefix type different from raw should have an id requirement.");
        }
        return new zzgoi(str, zzgou.zza(str), zzgxkVar, zzgtkVar, zzguqVar, num);
    }

    public final zzgtk zzb() {
        return this.zzd;
    }

    public final zzguq zzc() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgom
    public final zzgwp zzd() {
        return this.zzb;
    }

    public final zzgxk zze() {
        return this.zzc;
    }

    @Nullable
    public final Integer zzf() {
        return this.zzf;
    }

    public final String zzg() {
        return this.zza;
    }
}
