package com.google.android.gms.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzbut;
import com.google.android.gms.internal.ads.zzbxv;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: Proguard */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzb {
    private final Context zza;
    private boolean zzb;
    @Nullable
    private final zzbxv zzc;
    private final zzbut zzd = new zzbut(false, Collections.EMPTY_LIST);

    public zzb(Context context, @Nullable zzbxv zzbxvVar, @Nullable zzbut zzbutVar) {
        this.zza = context;
        this.zzc = zzbxvVar;
    }

    private final boolean zzd() {
        zzbxv zzbxvVar = this.zzc;
        if ((zzbxvVar != null && zzbxvVar.zza().zzf) || this.zzd.zza) {
            return true;
        }
        return false;
    }

    public final void zza() {
        this.zzb = true;
    }

    public final void zzb(@Nullable String str) {
        List<String> list;
        if (zzd()) {
            if (str == null) {
                str = "";
            }
            zzbxv zzbxvVar = this.zzc;
            if (zzbxvVar != null) {
                zzbxvVar.zze(str, null, 3);
                return;
            }
            zzbut zzbutVar = this.zzd;
            if (zzbutVar.zza && (list = zzbutVar.zzb) != null) {
                for (String str2 : list) {
                    if (!TextUtils.isEmpty(str2)) {
                        String replace = str2.replace("{NAVIGATION_URL}", Uri.encode(str));
                        Context context = this.zza;
                        zzv.zzr();
                        com.google.android.gms.ads.internal.util.zzs.zzM(context, "", replace);
                    }
                }
            }
        }
    }

    public final boolean zzc() {
        if (zzd() && !this.zzb) {
            return false;
        }
        return true;
    }
}
