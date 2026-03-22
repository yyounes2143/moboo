package com.google.android.gms.internal.ads;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum zzb uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgzj {
    public static final zzgzj zza;
    public static final zzgzj zzb;
    public static final zzgzj zzc;
    public static final zzgzj zzd;
    public static final zzgzj zze;
    public static final zzgzj zzf;
    public static final zzgzj zzg;
    public static final zzgzj zzh;
    public static final zzgzj zzi;
    public static final zzgzj zzj;
    private static final /* synthetic */ zzgzj[] zzk;
    private final Class zzl;

    static {
        zzgzj zzgzjVar = new zzgzj("VOID", 0, Void.class, Void.class, null);
        zza = zzgzjVar;
        Class cls = Integer.TYPE;
        zzgzj zzgzjVar2 = new zzgzj("INT", 1, cls, Integer.class, 0);
        zzb = zzgzjVar2;
        zzgzj zzgzjVar3 = new zzgzj("LONG", 2, Long.TYPE, Long.class, 0L);
        zzc = zzgzjVar3;
        zzgzj zzgzjVar4 = new zzgzj("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        zzd = zzgzjVar4;
        zzgzj zzgzjVar5 = new zzgzj("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf((double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE));
        zze = zzgzjVar5;
        zzgzj zzgzjVar6 = new zzgzj("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        zzf = zzgzjVar6;
        zzgzj zzgzjVar7 = new zzgzj("STRING", 6, String.class, String.class, "");
        zzg = zzgzjVar7;
        zzgzj zzgzjVar8 = new zzgzj("BYTE_STRING", 7, zzgxk.class, zzgxk.class, zzgxk.zzb);
        zzh = zzgzjVar8;
        zzgzj zzgzjVar9 = new zzgzj("ENUM", 8, cls, Integer.class, null);
        zzi = zzgzjVar9;
        zzgzj zzgzjVar10 = new zzgzj("MESSAGE", 9, Object.class, Object.class, null);
        zzj = zzgzjVar10;
        zzk = new zzgzj[]{zzgzjVar, zzgzjVar2, zzgzjVar3, zzgzjVar4, zzgzjVar5, zzgzjVar6, zzgzjVar7, zzgzjVar8, zzgzjVar9, zzgzjVar10};
    }

    private zzgzj(String str, int i, Class cls, Class cls2, Object obj) {
        this.zzl = cls2;
    }

    public static zzgzj[] values() {
        return (zzgzj[]) zzk.clone();
    }

    public final Class zza() {
        return this.zzl;
    }
}
