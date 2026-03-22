package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ads.zzbca;
import java.util.ArrayList;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzebg {
    private final zzbbt zza;
    private final Context zzb;
    private final zzeal zzc;
    private final VersionInfoParcel zzd;

    public zzebg(Context context, VersionInfoParcel versionInfoParcel, zzbbt zzbbtVar, zzeal zzealVar) {
        this.zzb = context;
        this.zzd = versionInfoParcel;
        this.zza = zzbbtVar;
        this.zzc = zzealVar;
    }

    public static /* synthetic */ Void zza(zzebg zzebgVar, boolean z, SQLiteDatabase sQLiteDatabase) {
        if (z) {
            zzebgVar.zzb.deleteDatabase("OfflineUpload.db");
        } else {
            ArrayList arrayList = new ArrayList();
            Cursor query = sQLiteDatabase.query("offline_signal_contents", new String[]{"serialized_proto_data"}, null, null, null, null, null);
            while (query.moveToNext()) {
                try {
                    arrayList.add(zzbca.zzaf.zza.zzx(query.getBlob(query.getColumnIndexOrThrow("serialized_proto_data"))));
                } catch (zzgzh e) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to deserialize proto from offline signals database:");
                    com.google.android.gms.ads.internal.util.client.zzo.zzg(e.getMessage());
                }
            }
            query.close();
            Context context = zzebgVar.zzb;
            zzbca.zzaf.zzc zzi = zzbca.zzaf.zzi();
            zzi.zzv(context.getPackageName());
            zzi.zzy(Build.MODEL);
            zzi.zzA(zzeba.zza(sQLiteDatabase, 0));
            zzi.zzh(arrayList);
            zzi.zzE(zzeba.zza(sQLiteDatabase, 1));
            zzi.zzx(zzeba.zza(sQLiteDatabase, 3));
            zzi.zzF(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
            int i2 = 2;
            zzi.zzB(zzeba.zzb(sQLiteDatabase, 2));
            final zzbca.zzaf zzbr = zzi.zzbr();
            int size = arrayList.size();
            long j = 0;
            for (int i3 = 0; i3 < size; i3++) {
                zzbca.zzaf.zza zzaVar = (zzbca.zzaf.zza) arrayList.get(i3);
                if (zzaVar.zzk() == zzbca.zzq.ENUM_TRUE && zzaVar.zze() > j) {
                    j = zzaVar.zze();
                }
            }
            if (j != 0) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("value", Long.valueOf(j));
                sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = 'last_successful_request_time'", null);
            }
            zzbbt zzbbtVar = zzebgVar.zza;
            zzbbtVar.zzb(new zzbbs() { // from class: com.google.android.gms.internal.ads.zzebe
                @Override // com.google.android.gms.internal.ads.zzbbs
                public final void zza(zzbca.zzt.zza zzaVar2) {
                    zzaVar2.zzW(zzbca.zzaf.this);
                }
            });
            VersionInfoParcel versionInfoParcel = zzebgVar.zzd;
            zzbca.zzar.zza zzd = zzbca.zzar.zzd();
            zzd.zzg(versionInfoParcel.buddyApkVersion);
            zzd.zzi(versionInfoParcel.clientJarVersion);
            if (true == versionInfoParcel.isClientJar) {
                i2 = 0;
            }
            zzd.zzh(i2);
            final zzbca.zzar zzbr2 = zzd.zzbr();
            zzbbtVar.zzb(new zzbbs() { // from class: com.google.android.gms.internal.ads.zzebf
                @Override // com.google.android.gms.internal.ads.zzbbs
                public final void zza(zzbca.zzt.zza zzaVar2) {
                    zzbca.zzm.zza zzbM = zzaVar2.zzg().zzbM();
                    zzbM.zzw(zzbca.zzar.this);
                    zzaVar2.zzK(zzbM);
                }
            });
            zzbbtVar.zzc(10004);
            zzeba.zze(sQLiteDatabase);
        }
        return null;
    }

    public final void zzb(final boolean z) {
        try {
            this.zzc.zza(new zzffx() { // from class: com.google.android.gms.internal.ads.zzebd
                @Override // com.google.android.gms.internal.ads.zzffx
                public final Object zza(Object obj) {
                    zzebg.zza(zzebg.this, z, (SQLiteDatabase) obj);
                    return null;
                }
            });
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Error in offline signals database startup: ".concat(valueOf));
        }
    }
}
