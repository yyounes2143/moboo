package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbso extends zzbsp implements zzbjw {
    DisplayMetrics zza;
    int zzb;
    int zzc;
    int zzd;
    int zze;
    int zzf;
    int zzg;
    private final zzcfb zzh;
    private final Context zzi;
    private final WindowManager zzj;
    private final zzbcd zzk;
    private float zzl;
    private int zzm;

    public zzbso(zzcfb zzcfbVar, Context context, zzbcd zzbcdVar) {
        super(zzcfbVar, "");
        this.zzb = -1;
        this.zzc = -1;
        this.zzd = -1;
        this.zze = -1;
        this.zzf = -1;
        this.zzg = -1;
        this.zzh = zzcfbVar;
        this.zzi = context;
        this.zzk = zzbcdVar;
        this.zzj = (WindowManager) context.getSystemService("window");
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final /* synthetic */ void zza(Object obj, Map map) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        JSONObject jSONObject;
        zzcfb zzcfbVar = (zzcfb) obj;
        this.zza = new DisplayMetrics();
        Display defaultDisplay = this.zzj.getDefaultDisplay();
        defaultDisplay.getMetrics(this.zza);
        this.zzl = this.zza.density;
        this.zzm = defaultDisplay.getRotation();
        com.google.android.gms.ads.internal.client.zzbb.zzb();
        DisplayMetrics displayMetrics = this.zza;
        this.zzb = com.google.android.gms.ads.internal.util.client.zzf.zzw(displayMetrics, displayMetrics.widthPixels);
        com.google.android.gms.ads.internal.client.zzbb.zzb();
        DisplayMetrics displayMetrics2 = this.zza;
        this.zzc = com.google.android.gms.ads.internal.util.client.zzf.zzw(displayMetrics2, displayMetrics2.heightPixels);
        zzcfb zzcfbVar2 = this.zzh;
        Activity zzi = zzcfbVar2.zzi();
        if (zzi != null && zzi.getWindow() != null) {
            com.google.android.gms.ads.internal.zzv.zzr();
            int[] zzR = com.google.android.gms.ads.internal.util.zzs.zzR(zzi);
            com.google.android.gms.ads.internal.client.zzbb.zzb();
            this.zzd = com.google.android.gms.ads.internal.util.client.zzf.zzw(this.zza, zzR[0]);
            com.google.android.gms.ads.internal.client.zzbb.zzb();
            this.zze = com.google.android.gms.ads.internal.util.client.zzf.zzw(this.zza, zzR[1]);
        } else {
            this.zzd = this.zzb;
            this.zze = this.zzc;
        }
        if (zzcfbVar2.zzO().zzi()) {
            this.zzf = this.zzb;
            this.zzg = this.zzc;
        } else {
            zzcfbVar2.measure(0, 0);
        }
        zzj(this.zzb, this.zzc, this.zzd, this.zze, this.zzl, this.zzm);
        zzbsn zzbsnVar = new zzbsn();
        zzbcd zzbcdVar = this.zzk;
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        zzbsnVar.zze(zzbcdVar.zza(intent));
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setData(Uri.parse("sms:"));
        zzbsnVar.zzc(zzbcdVar.zza(intent2));
        zzbsnVar.zza(zzbcdVar.zzb());
        zzbsnVar.zzd(zzbcdVar.zzc());
        zzbsnVar.zzb(true);
        z = zzbsnVar.zza;
        z2 = zzbsnVar.zzb;
        z3 = zzbsnVar.zzc;
        z4 = zzbsnVar.zzd;
        z5 = zzbsnVar.zze;
        try {
            jSONObject = new JSONObject().put("sms", z).put("tel", z2).put("calendar", z3).put("storePicture", z4).put("inlineVideo", z5);
        } catch (JSONException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Error occurred while obtaining the MRAID capabilities.", e);
            jSONObject = null;
        }
        zzcfbVar2.zze("onDeviceFeaturesReceived", jSONObject);
        int[] iArr = new int[2];
        zzcfbVar2.getLocationOnScreen(iArr);
        Context context = this.zzi;
        zzb(com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, iArr[0]), com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, iArr[1]));
        if (com.google.android.gms.ads.internal.util.client.zzo.zzm(2)) {
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Dispatching Ready Event.");
        }
        zzi(zzcfbVar2.zzm().afmaVersion);
    }

    public final void zzb(int i, int i2) {
        int i3;
        Context context = this.zzi;
        int i4 = 0;
        if (context instanceof Activity) {
            com.google.android.gms.ads.internal.zzv.zzr();
            i3 = com.google.android.gms.ads.internal.util.zzs.zzS((Activity) context)[0];
        } else {
            i3 = 0;
        }
        zzcfb zzcfbVar = this.zzh;
        if (zzcfbVar.zzO() == null || !zzcfbVar.zzO().zzi()) {
            int width = zzcfbVar.getWidth();
            int height = zzcfbVar.getHeight();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzag)).booleanValue()) {
                if (width == 0) {
                    if (zzcfbVar.zzO() != null) {
                        width = zzcfbVar.zzO().zzb;
                    } else {
                        width = 0;
                    }
                }
                if (height == 0) {
                    if (zzcfbVar.zzO() != null) {
                        i4 = zzcfbVar.zzO().zza;
                    }
                    this.zzf = com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, width);
                    this.zzg = com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, i4);
                }
            }
            i4 = height;
            this.zzf = com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, width);
            this.zzg = com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, i4);
        }
        zzg(i, i2 - i3, this.zzf, this.zzg);
        zzcfbVar.zzN().zzE(i, i2);
    }
}
