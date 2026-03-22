package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.ads.impl.R;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbsm extends zzbsp {
    private final Map zza;
    private final Context zzb;

    public zzbsm(zzcfb zzcfbVar, Map map) {
        super(zzcfbVar, "storePicture");
        this.zza = map;
        this.zzb = zzcfbVar.zzi();
    }

    public final void zzb() {
        String str;
        String str2;
        String str3;
        String str4;
        Context context = this.zzb;
        if (context == null) {
            zzh("Activity context is not available");
            return;
        }
        com.google.android.gms.ads.internal.zzv.zzr();
        if (!new zzbcd(context).zzc()) {
            zzh("Feature is not supported by the device.");
            return;
        }
        String str5 = (String) this.zza.get("iurl");
        if (TextUtils.isEmpty(str5)) {
            zzh("Image url cannot be empty.");
        } else if (URLUtil.isValidUrl(str5)) {
            String lastPathSegment = Uri.parse(str5).getLastPathSegment();
            com.google.android.gms.ads.internal.zzv.zzr();
            if (!TextUtils.isEmpty(lastPathSegment) && lastPathSegment.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)")) {
                Resources zze = com.google.android.gms.ads.internal.zzv.zzp().zze();
                com.google.android.gms.ads.internal.zzv.zzr();
                AlertDialog.Builder zzL = com.google.android.gms.ads.internal.util.zzs.zzL(context);
                if (zze != null) {
                    str = zze.getString(R.string.s1);
                } else {
                    str = "Save image";
                }
                zzL.setTitle(str);
                if (zze != null) {
                    str2 = zze.getString(R.string.s2);
                } else {
                    str2 = "Allow Ad to store image in Picture gallery?";
                }
                zzL.setMessage(str2);
                if (zze != null) {
                    str3 = zze.getString(R.string.s3);
                } else {
                    str3 = "Accept";
                }
                zzL.setPositiveButton(str3, new zzbsk(this, str5, lastPathSegment));
                if (zze != null) {
                    str4 = zze.getString(R.string.s4);
                } else {
                    str4 = "Decline";
                }
                zzL.setNegativeButton(str4, new zzbsl(this));
                zzL.create().show();
                return;
            }
            zzh("Image type not recognized: ".concat(String.valueOf(lastPathSegment)));
        } else {
            zzh("Invalid image url: ".concat(String.valueOf(str5)));
        }
    }
}
