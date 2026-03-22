package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeug implements zzetv {
    private final zzgdj zza;
    private final Context zzb;

    public zzeug(zzgdj zzgdjVar, Context context) {
        this.zza = zzgdjVar;
        this.zzb = context;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(28:1|(3:3|(1:6)|7)|8|(3:78|79|(24:81|11|12|13|(19:15|16|(2:18|(2:20|(1:22))(2:23|(1:25)(1:26)))|27|28|(2:61|(3:64|(3:67|(2:70|71)(1:69)|65)|72))|30|31|(2:33|(10:35|36|(10:51|52|(1:56)|58|40|(1:42)(1:50)|(1:44)(1:49)|45|46|47)(1:38)|39|40|(0)(0)|(0)(0)|45|46|47))|60|36|(0)(0)|39|40|(0)(0)|(0)(0)|45|46|47)|74|16|(0)|27|28|(0)|30|31|(0)|60|36|(0)(0)|39|40|(0)(0)|(0)(0)|45|46|47))|10|11|12|13|(0)|74|16|(0)|27|28|(0)|30|31|(0)|60|36|(0)(0)|39|40|(0)(0)|(0)(0)|45|46|47) */
    /* JADX WARN: Incorrect condition in loop: B:6:0x0049 */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009c A[Catch: Exception -> 0x00b3, TRY_LEAVE, TryCatch #2 {Exception -> 0x00b3, blocks: (B:18:0x0090, B:20:0x009c), top: B:81:0x0090 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01c3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ com.google.android.gms.internal.ads.zzeue zzc(com.google.android.gms.internal.ads.zzeug r27) {
        /*
            Method dump skipped, instructions count: 517
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeug.zzc(com.google.android.gms.internal.ads.zzeug):com.google.android.gms.internal.ads.zzeue");
    }

    @Nullable
    private static ResolveInfo zzd(PackageManager packageManager, String str) {
        return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 38;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeuf
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeug.zzc(zzeug.this);
            }
        });
    }
}
