package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgl extends zzg {
    private static final String[] zza = {"app_version", "ALTER TABLE messages ADD COLUMN app_version TEXT;", "app_version_int", "ALTER TABLE messages ADD COLUMN app_version_int INTEGER;"};
    private final zzgj zzb;
    private boolean zzc;

    public zzgl(zzic zzicVar) {
        super(zzicVar);
        Context zzaY = this.zzu.zzaY();
        this.zzu.zzc();
        this.zzb = new zzgj(this, zzaY, "google_app_measurement_local.db");
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x0186 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0186 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0186 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x012e A[Catch: all -> 0x0098, TRY_ENTER, TryCatch #11 {all -> 0x0098, blocks: (B:30:0x008d, B:32:0x0093, B:45:0x00b6, B:47:0x00da, B:49:0x00e4, B:51:0x00ec, B:61:0x0106, B:75:0x012e, B:77:0x0134, B:78:0x0137, B:93:0x016c, B:85:0x0157), top: B:109:0x008d }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0180  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzs(int r19, byte[] r20) {
        /*
            Method dump skipped, instructions count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzgl.zzs(int, byte[]):boolean");
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    public final boolean zze() {
        return false;
    }

    @WorkerThread
    public final void zzh() {
        int delete;
        zzg();
        try {
            SQLiteDatabase zzp = zzp();
            if (zzp != null && (delete = zzp.delete("messages", null, null)) > 0) {
                this.zzu.zzaV().zzk().zzb("Reset local analytics data. records", Integer.valueOf(delete));
            }
        } catch (SQLiteException e) {
            this.zzu.zzaV().zzb().zzb("Error resetting local analytics data. error", e);
        }
    }

    public final boolean zzi(zzbg zzbgVar) {
        Parcel obtain = Parcel.obtain();
        zzbh.zza(zzbgVar, obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            this.zzu.zzaV().zzc().zza("Event is too long for local database. Sending event directly to service");
            return false;
        }
        return zzs(0, marshall);
    }

    public final boolean zzj(zzpl zzplVar) {
        Parcel obtain = Parcel.obtain();
        zzpm.zza(zzplVar, obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            this.zzu.zzaV().zzc().zza("User property too long for local database. Sending directly to service");
            return false;
        }
        return zzs(1, marshall);
    }

    public final boolean zzk(zzah zzahVar) {
        zzic zzicVar = this.zzu;
        byte[] zzae = zzicVar.zzk().zzae(zzahVar);
        if (zzae.length > 131072) {
            zzicVar.zzaV().zzc().zza("Conditional user property too long for local database. Sending directly to service");
            return false;
        }
        return zzs(2, zzae);
    }

    public final boolean zzl(zzbe zzbeVar) {
        zzic zzicVar = this.zzu;
        byte[] zzae = zzicVar.zzk().zzae(zzbeVar);
        if (zzae == null) {
            zzicVar.zzaV().zzc().zza("Null default event parameters; not writing to database");
            return false;
        } else if (zzae.length > 131072) {
            zzicVar.zzaV().zzc().zza("Default event parameters too long for local database. Sending directly to service");
            return false;
        } else {
            return zzs(4, zzae);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x021b A[Catch: all -> 0x0111, SQLiteDatabaseLockedException -> 0x0124, SQLiteException -> 0x01f8, SQLiteFullException -> 0x01fb, TryCatch #37 {all -> 0x0111, blocks: (B:38:0x00de, B:40:0x00e4, B:42:0x00f7, B:44:0x00fd, B:58:0x0137, B:63:0x014f, B:65:0x0154, B:183:0x0332, B:185:0x0338, B:186:0x033b, B:193:0x035d, B:201:0x0377, B:80:0x0189, B:81:0x018c, B:79:0x0185, B:89:0x019f, B:91:0x01b3, B:98:0x01ce, B:99:0x01d7, B:100:0x01da, B:96:0x01c8, B:103:0x01de, B:107:0x01f4, B:121:0x021b, B:122:0x0225, B:123:0x0228, B:119:0x0215, B:126:0x022e, B:130:0x0242, B:144:0x0267, B:146:0x0271, B:147:0x0274, B:142:0x0261, B:150:0x0279, B:151:0x0289, B:158:0x02c8, B:160:0x02e5, B:161:0x02f4), top: B:235:0x0332 }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0267 A[Catch: all -> 0x0111, SQLiteException -> 0x0246, SQLiteFullException -> 0x0249, SQLiteDatabaseLockedException -> 0x035c, TryCatch #37 {all -> 0x0111, blocks: (B:38:0x00de, B:40:0x00e4, B:42:0x00f7, B:44:0x00fd, B:58:0x0137, B:63:0x014f, B:65:0x0154, B:183:0x0332, B:185:0x0338, B:186:0x033b, B:193:0x035d, B:201:0x0377, B:80:0x0189, B:81:0x018c, B:79:0x0185, B:89:0x019f, B:91:0x01b3, B:98:0x01ce, B:99:0x01d7, B:100:0x01da, B:96:0x01c8, B:103:0x01de, B:107:0x01f4, B:121:0x021b, B:122:0x0225, B:123:0x0228, B:119:0x0215, B:126:0x022e, B:130:0x0242, B:144:0x0267, B:146:0x0271, B:147:0x0274, B:142:0x0261, B:150:0x0279, B:151:0x0289, B:158:0x02c8, B:160:0x02e5, B:161:0x02f4), top: B:235:0x0332 }] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x034d  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0364  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0389  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x039e  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x03a3  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0332 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:263:0x038f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:264:0x038f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:266:0x038f A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.util.List, java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v13 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List zzm(int r30) {
        /*
            Method dump skipped, instructions count: 954
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzgl.zzm(int):java.util.List");
    }

    @WorkerThread
    public final boolean zzn() {
        return zzs(3, new byte[0]);
    }

    @WorkerThread
    public final boolean zzo() {
        zzg();
        if (!this.zzc && zzq()) {
            int i = 5;
            int i2 = 0;
            while (true) {
                if (i2 < 5) {
                    SQLiteDatabase sQLiteDatabase = null;
                    try {
                        try {
                            try {
                                SQLiteDatabase zzp = zzp();
                                if (zzp == null) {
                                    this.zzc = true;
                                } else {
                                    zzp.beginTransaction();
                                    zzp.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                                    zzp.setTransactionSuccessful();
                                    zzp.endTransaction();
                                    zzp.close();
                                    return true;
                                }
                            } catch (SQLiteException e) {
                                if (0 != 0) {
                                    try {
                                        if (sQLiteDatabase.inTransaction()) {
                                            sQLiteDatabase.endTransaction();
                                        }
                                    } catch (Throwable th) {
                                        if (0 != 0) {
                                            sQLiteDatabase.close();
                                        }
                                        throw th;
                                    }
                                }
                                this.zzu.zzaV().zzb().zzb("Error deleting app launch break from local database", e);
                                this.zzc = true;
                                if (0 != 0) {
                                    sQLiteDatabase.close();
                                }
                            }
                        } catch (SQLiteDatabaseLockedException unused) {
                            SystemClock.sleep(i);
                            i += 20;
                            if (0 == 0) {
                            }
                            sQLiteDatabase.close();
                        }
                    } catch (SQLiteFullException e2) {
                        this.zzu.zzaV().zzb().zzb("Error deleting app launch break from local database", e2);
                        this.zzc = true;
                        if (0 == 0) {
                        }
                        sQLiteDatabase.close();
                    }
                } else {
                    this.zzu.zzaV().zze().zza("Error deleting app launch break from local database in reasonable time");
                    break;
                }
                i2++;
            }
        }
        return false;
    }

    @VisibleForTesting
    @WorkerThread
    public final SQLiteDatabase zzp() throws SQLiteException {
        if (this.zzc) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.zzb.getWritableDatabase();
        if (writableDatabase == null) {
            this.zzc = true;
            return null;
        }
        return writableDatabase;
    }

    @VisibleForTesting
    public final boolean zzq() {
        zzic zzicVar = this.zzu;
        Context zzaY = zzicVar.zzaY();
        zzicVar.zzc();
        return zzaY.getDatabasePath("google_app_measurement_local.db").exists();
    }
}
