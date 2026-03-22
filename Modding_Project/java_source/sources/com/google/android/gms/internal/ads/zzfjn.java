package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfjn {
    private final zzegu zza;
    private final String zzb;
    private final String zzc;
    private final String zzd;
    private final Context zze;
    private final zzfch zzf;
    private final zzfci zzg;
    private final Clock zzh;
    private final zzavl zzi;

    public zzfjn(zzegu zzeguVar, VersionInfoParcel versionInfoParcel, String str, String str2, Context context, @Nullable zzfch zzfchVar, @Nullable zzfci zzfciVar, Clock clock, zzavl zzavlVar) {
        this.zza = zzeguVar;
        this.zzb = versionInfoParcel.afmaVersion;
        this.zzc = str;
        this.zzd = str2;
        this.zze = context;
        this.zzf = zzfchVar;
        this.zzg = zzfciVar;
        this.zzh = clock;
        this.zzi = zzavlVar;
    }

    public static String zzc(String str, String str2, @Nullable String str3) {
        if (true == TextUtils.isEmpty(str3)) {
            str3 = "";
        }
        return str.replaceAll(str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static String zzg(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (com.google.android.gms.ads.internal.util.client.zzl.zzk()) {
            return "fakeForAdDebugLog";
        }
        return str;
    }

    public final List zzd(zzfcg zzfcgVar, @Nullable zzfbu zzfbuVar, List list) {
        return zze(zzfcgVar, zzfbuVar, false, "", "", list);
    }

    public final List zze(zzfcg zzfcgVar, @Nullable zzfbu zzfbuVar, boolean z, @Nullable String str, @Nullable String str2, List list) {
        String str3;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str4 = "1";
            boolean z2 = true;
            if (true == z) {
                str3 = "1";
            } else {
                str3 = "0";
            }
            String zzc = zzc(zzc(zzc((String) it.next(), "@gw_adlocid@", zzfcgVar.zza.zza.zzf), "@gw_adnetrefresh@", str3), "@gw_sdkver@", this.zzb);
            if (zzfbuVar != null) {
                String zzc2 = zzc(zzc(zzc(zzc, "@gw_qdata@", zzfbuVar.zzy), "@gw_adnetid@", zzfbuVar.zzx), "@gw_allocid@", zzfbuVar.zzw);
                Context context = this.zze;
                zzc = zzbyl.zzc(zzc2, context, zzfbuVar.zzW, zzfbuVar.zzaw);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zznB)).booleanValue() && zzfbuVar.zze == 4) {
                    com.google.android.gms.ads.internal.zzv.zzr();
                    if (true != com.google.android.gms.ads.internal.util.zzs.zzH(context)) {
                        str4 = "0";
                    }
                    zzc = zzc(zzc, "@gw_aps@", str4);
                }
            }
            zzegu zzeguVar = this.zza;
            String zzc3 = zzc(zzc(zzc(zzc(zzc, "@gw_adnetstatus@", zzeguVar.zzg()), "@gw_ttr@", Long.toString(zzeguVar.zza(), 10)), "@gw_seqnum@", this.zzc), "@gw_sessid@", this.zzd);
            boolean z3 = false;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdO)).booleanValue() && !TextUtils.isEmpty(str)) {
                z3 = true;
            }
            boolean isEmpty = TextUtils.isEmpty(str2);
            boolean z4 = !isEmpty;
            if (!z3) {
                if (isEmpty) {
                    arrayList.add(zzc3);
                }
            } else {
                z2 = z4;
            }
            if (this.zzi.zzf(Uri.parse(zzc3))) {
                Uri.Builder buildUpon = Uri.parse(zzc3).buildUpon();
                if (z3) {
                    buildUpon = buildUpon.appendQueryParameter("ms", str);
                }
                if (z2) {
                    buildUpon = buildUpon.appendQueryParameter("attok", str2);
                }
                zzc3 = buildUpon.build().toString();
            }
            arrayList.add(zzc3);
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0066 A[LOOP:0: B:13:0x0060->B:15:0x0066, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List zzf(com.google.android.gms.internal.ads.zzfbu r11, java.util.List r12, com.google.android.gms.internal.ads.zzbvx r13) {
        /*
            r10 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            com.google.android.gms.common.util.Clock r1 = r10.zzh
            long r1 = r1.currentTimeMillis()
            java.lang.String r3 = r13.zzc()     // Catch: android.os.RemoteException -> Lb1
            int r13 = r13.zzb()     // Catch: android.os.RemoteException -> Lb1
            java.lang.String r13 = java.lang.Integer.toString(r13)     // Catch: android.os.RemoteException -> Lb1
            com.google.android.gms.internal.ads.zzbcm r4 = com.google.android.gms.internal.ads.zzbcv.zzdP
            com.google.android.gms.internal.ads.zzbct r5 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r4 = r5.zzb(r4)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            if (r4 == 0) goto L39
            com.google.android.gms.internal.ads.zzfci r4 = r10.zzg
            if (r4 != 0) goto L32
            com.google.android.gms.internal.ads.zzfva r4 = com.google.android.gms.internal.ads.zzfva.zzc()
            goto L3c
        L32:
            com.google.android.gms.internal.ads.zzfch r4 = r4.zza
        L34:
            com.google.android.gms.internal.ads.zzfva r4 = com.google.android.gms.internal.ads.zzfva.zzd(r4)
            goto L3c
        L39:
            com.google.android.gms.internal.ads.zzfch r4 = r10.zzf
            goto L34
        L3c:
            com.google.android.gms.internal.ads.zzfjl r5 = new com.google.android.gms.internal.ads.zzfjl
            r5.<init>()
            com.google.android.gms.internal.ads.zzfva r5 = r4.zza(r5)
            java.lang.String r6 = ""
            java.lang.Object r5 = r5.zzb(r6)
            java.lang.String r5 = (java.lang.String) r5
            com.google.android.gms.internal.ads.zzfjm r7 = new com.google.android.gms.internal.ads.zzfjm
            r7.<init>()
            com.google.android.gms.internal.ads.zzfva r4 = r4.zza(r7)
            java.lang.Object r4 = r4.zzb(r6)
            java.lang.String r4 = (java.lang.String) r4
            java.util.Iterator r12 = r12.iterator()
        L60:
            boolean r6 = r12.hasNext()
            if (r6 == 0) goto Lb0
            java.lang.Object r6 = r12.next()
            java.lang.String r6 = (java.lang.String) r6
            java.lang.String r7 = android.net.Uri.encode(r5)
            java.lang.String r8 = "@gw_rwd_userid@"
            java.lang.String r6 = zzc(r6, r8, r7)
            java.lang.String r7 = android.net.Uri.encode(r4)
            java.lang.String r8 = "@gw_rwd_custom_data@"
            java.lang.String r6 = zzc(r6, r8, r7)
            java.lang.String r7 = java.lang.Long.toString(r1)
            java.lang.String r8 = "@gw_tmstmp@"
            java.lang.String r6 = zzc(r6, r8, r7)
            java.lang.String r7 = android.net.Uri.encode(r3)
            java.lang.String r8 = "@gw_rwd_itm@"
            java.lang.String r6 = zzc(r6, r8, r7)
            java.lang.String r7 = "@gw_rwd_amt@"
            java.lang.String r6 = zzc(r6, r7, r13)
            java.lang.String r7 = r10.zzb
            java.lang.String r8 = "@gw_sdkver@"
            java.lang.String r6 = zzc(r6, r8, r7)
            android.content.Context r7 = r10.zze
            boolean r8 = r11.zzW
            java.util.Map r9 = r11.zzaw
            java.lang.String r6 = com.google.android.gms.internal.ads.zzbyl.zzc(r6, r7, r8, r9)
            r0.add(r6)
            goto L60
        Lb0:
            return r0
        Lb1:
            r11 = move-exception
            int r12 = com.google.android.gms.ads.internal.util.zze.zza
            java.lang.String r12 = "Unable to determine award type and amount."
            com.google.android.gms.ads.internal.util.client.zzo.zzh(r12, r11)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfjn.zzf(com.google.android.gms.internal.ads.zzfbu, java.util.List, com.google.android.gms.internal.ads.zzbvx):java.util.List");
    }
}
