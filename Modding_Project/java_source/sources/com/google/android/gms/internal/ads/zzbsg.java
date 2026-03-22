package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.CalendarContract;
import android.text.TextUtils;
import com.google.android.gms.ads.impl.R;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbsg extends zzbsp {
    private final Map zza;
    private final Context zzb;
    private final String zzc;
    private final long zzd;
    private final long zze;
    private final String zzf;
    private final String zzg;

    public zzbsg(zzcfb zzcfbVar, Map map) {
        super(zzcfbVar, "createCalendarEvent");
        this.zza = map;
        this.zzb = zzcfbVar.zzi();
        this.zzc = zze("description");
        this.zzf = zze("summary");
        this.zzd = zzd("start_ticks");
        this.zze = zzd("end_ticks");
        this.zzg = zze(FirebaseAnalytics.Param.LOCATION);
    }

    private final long zzd(String str) {
        String str2 = (String) this.zza.get(str);
        if (str2 == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str2);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    private final String zze(String str) {
        Map map = this.zza;
        if (TextUtils.isEmpty((CharSequence) map.get(str))) {
            return "";
        }
        return (String) map.get(str);
    }

    public final Intent zzb() {
        Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra(CampaignEx.JSON_KEY_TITLE, this.zzc);
        data.putExtra("eventLocation", this.zzg);
        data.putExtra("description", this.zzf);
        long j = this.zzd;
        if (j > -1) {
            data.putExtra("beginTime", j);
        }
        long j2 = this.zze;
        if (j2 > -1) {
            data.putExtra("endTime", j2);
        }
        data.setFlags(268435456);
        return data;
    }

    public final void zzc() {
        String str;
        String str2;
        String str3;
        String str4;
        Context context = this.zzb;
        if (context == null) {
            zzh("Activity context is not available.");
            return;
        }
        com.google.android.gms.ads.internal.zzv.zzr();
        if (!new zzbcd(context).zzb()) {
            zzh("This feature is not available on the device.");
            return;
        }
        com.google.android.gms.ads.internal.zzv.zzr();
        AlertDialog.Builder zzL = com.google.android.gms.ads.internal.util.zzs.zzL(context);
        Resources zze = com.google.android.gms.ads.internal.zzv.zzp().zze();
        if (zze != null) {
            str = zze.getString(R.string.s5);
        } else {
            str = "Create calendar event";
        }
        zzL.setTitle(str);
        if (zze != null) {
            str2 = zze.getString(R.string.s6);
        } else {
            str2 = "Allow Ad to create a calendar event?";
        }
        zzL.setMessage(str2);
        if (zze != null) {
            str3 = zze.getString(R.string.s3);
        } else {
            str3 = "Accept";
        }
        zzL.setPositiveButton(str3, new zzbse(this));
        if (zze != null) {
            str4 = zze.getString(R.string.s4);
        } else {
            str4 = "Decline";
        }
        zzL.setNegativeButton(str4, new zzbsf(this));
        zzL.create().show();
    }
}
