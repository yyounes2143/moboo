package com.google.android.gms.internal.ads;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum zzc uses external variables
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
public final class zzhbv {
    public static final zzhbv zza;
    public static final zzhbv zzb;
    public static final zzhbv zzc;
    public static final zzhbv zzd;
    public static final zzhbv zze;
    public static final zzhbv zzf;
    public static final zzhbv zzg;
    public static final zzhbv zzh;
    public static final zzhbv zzi;
    public static final zzhbv zzj;
    public static final zzhbv zzk;
    public static final zzhbv zzl;
    public static final zzhbv zzm;
    public static final zzhbv zzn;
    public static final zzhbv zzo;
    public static final zzhbv zzp;
    public static final zzhbv zzq;
    public static final zzhbv zzr;
    private static final /* synthetic */ zzhbv[] zzs;
    private final zzhbw zzt;

    static {
        zzhbv zzhbvVar = new zzhbv("DOUBLE", 0, zzhbw.DOUBLE, 1);
        zza = zzhbvVar;
        zzhbv zzhbvVar2 = new zzhbv("FLOAT", 1, zzhbw.FLOAT, 5);
        zzb = zzhbvVar2;
        zzhbw zzhbwVar = zzhbw.LONG;
        zzhbv zzhbvVar3 = new zzhbv("INT64", 2, zzhbwVar, 0);
        zzc = zzhbvVar3;
        zzhbv zzhbvVar4 = new zzhbv("UINT64", 3, zzhbwVar, 0);
        zzd = zzhbvVar4;
        zzhbw zzhbwVar2 = zzhbw.INT;
        zzhbv zzhbvVar5 = new zzhbv("INT32", 4, zzhbwVar2, 0);
        zze = zzhbvVar5;
        zzhbv zzhbvVar6 = new zzhbv("FIXED64", 5, zzhbwVar, 1);
        zzf = zzhbvVar6;
        zzhbv zzhbvVar7 = new zzhbv("FIXED32", 6, zzhbwVar2, 5);
        zzg = zzhbvVar7;
        zzhbv zzhbvVar8 = new zzhbv("BOOL", 7, zzhbw.BOOLEAN, 0);
        zzh = zzhbvVar8;
        zzhbv zzhbvVar9 = new zzhbv("STRING", 8, zzhbw.STRING, 2);
        zzi = zzhbvVar9;
        zzhbw zzhbwVar3 = zzhbw.MESSAGE;
        zzhbv zzhbvVar10 = new zzhbv("GROUP", 9, zzhbwVar3, 3);
        zzj = zzhbvVar10;
        zzhbv zzhbvVar11 = new zzhbv("MESSAGE", 10, zzhbwVar3, 2);
        zzk = zzhbvVar11;
        zzhbv zzhbvVar12 = new zzhbv("BYTES", 11, zzhbw.BYTE_STRING, 2);
        zzl = zzhbvVar12;
        zzhbv zzhbvVar13 = new zzhbv("UINT32", 12, zzhbwVar2, 0);
        zzm = zzhbvVar13;
        zzhbv zzhbvVar14 = new zzhbv("ENUM", 13, zzhbw.ENUM, 0);
        zzn = zzhbvVar14;
        zzhbv zzhbvVar15 = new zzhbv("SFIXED32", 14, zzhbwVar2, 5);
        zzo = zzhbvVar15;
        zzhbv zzhbvVar16 = new zzhbv("SFIXED64", 15, zzhbwVar, 1);
        zzp = zzhbvVar16;
        zzhbv zzhbvVar17 = new zzhbv("SINT32", 16, zzhbwVar2, 0);
        zzq = zzhbvVar17;
        zzhbv zzhbvVar18 = new zzhbv("SINT64", 17, zzhbwVar, 0);
        zzr = zzhbvVar18;
        zzs = new zzhbv[]{zzhbvVar, zzhbvVar2, zzhbvVar3, zzhbvVar4, zzhbvVar5, zzhbvVar6, zzhbvVar7, zzhbvVar8, zzhbvVar9, zzhbvVar10, zzhbvVar11, zzhbvVar12, zzhbvVar13, zzhbvVar14, zzhbvVar15, zzhbvVar16, zzhbvVar17, zzhbvVar18};
    }

    private zzhbv(String str, int i, zzhbw zzhbwVar, int i2) {
        this.zzt = zzhbwVar;
    }

    public static zzhbv[] values() {
        return (zzhbv[]) zzs.clone();
    }

    public final zzhbw zza() {
        return this.zzt;
    }
}
