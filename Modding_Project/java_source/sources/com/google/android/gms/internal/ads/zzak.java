package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzak {
    public final Uri zza;
    @Nullable
    public final String zzb;
    @Nullable
    public final zzah zzc;
    @Nullable
    public final zzac zzd;
    public final List zze;
    @Nullable
    public final String zzf;
    public final zzfyc zzg;
    @Nullable
    public final Object zzh;
    public final long zzi;

    static {
        String str = zzeu.zza;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
        Integer.toString(6, 36);
        Integer.toString(7, 36);
    }

    public /* synthetic */ zzak(Uri uri, String str, zzah zzahVar, zzac zzacVar, List list, String str2, zzfyc zzfycVar, Object obj, long j, zzao zzaoVar) {
        this.zza = uri;
        int i = zzay.zza;
        this.zzb = null;
        this.zzc = null;
        this.zzd = null;
        this.zze = list;
        this.zzf = null;
        this.zzg = zzfycVar;
        int i2 = zzfyc.zzd;
        zzfxz zzfxzVar = new zzfxz();
        if (zzfycVar.size() <= 0) {
            zzfxzVar.zzi();
            this.zzh = null;
            this.zzi = -9223372036854775807L;
            return;
        }
        zzan zzanVar = (zzan) zzfycVar.get(0);
        throw null;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzak)) {
            return false;
        }
        zzak zzakVar = (zzak) obj;
        if (this.zza.equals(zzakVar.zza) && this.zze.equals(zzakVar.zze) && this.zzg.equals(zzakVar.zzg)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (int) (((((((this.zza.hashCode() * 923521) + this.zze.hashCode()) * 961) + this.zzg.hashCode()) * 31) * 31) - Long.MAX_VALUE);
    }
}
