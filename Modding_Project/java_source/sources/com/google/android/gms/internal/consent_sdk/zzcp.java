package com.google.android.gms.internal.consent_sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcp {
    @Nullable
    public static zzcn zza(Context context, String str) {
        String str2;
        String str3;
        if (!TextUtils.isEmpty(str)) {
            String[] split = str.split("/", -1);
            int length = split.length;
            if (length == 1) {
                String valueOf = String.valueOf(context.getPackageName());
                str3 = split[0];
                str2 = valueOf.concat("_preferences");
            } else if (length == 2) {
                str2 = split[0];
                str3 = split[1];
            } else {
                return null;
            }
            if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                return new zzcn(str2, str3);
            }
            return null;
        }
        return null;
    }

    public static void zzb(Context context, Set set) {
        SharedPreferences.Editor zzf;
        zzco zzcoVar = new zzco(context);
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            zzcn zza = zza(context, str);
            if (zza != null) {
                zzf = zzcoVar.zzf(zza.zza);
                zzf.remove(zza.zzb);
            } else {
                "clearKeys: unable to process key: ".concat(String.valueOf(str));
            }
        }
        zzcoVar.zzc();
    }
}
