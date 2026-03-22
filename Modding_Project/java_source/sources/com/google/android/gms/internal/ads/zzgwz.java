package com.google.android.gms.internal.ads;

import com.google.common.base.Ascii;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgwz {
    public static final /* synthetic */ int zza = 0;
    private static volatile int zzb = 100;

    public static int zza(byte[] bArr, int i, zzgwy zzgwyVar) throws zzgzh {
        int zzh = zzh(bArr, i, zzgwyVar);
        int i2 = zzgwyVar.zza;
        if (i2 >= 0) {
            if (i2 <= bArr.length - zzh) {
                if (i2 == 0) {
                    zzgwyVar.zzc = zzgxk.zzb;
                    return zzh;
                }
                zzgwyVar.zzc = zzgxk.zzv(bArr, zzh, i2);
                return zzh + i2;
            }
            throw new zzgzh("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        throw new zzgzh("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static int zzb(byte[] bArr, int i) {
        int i2 = (bArr[i + 1] & 255) << 8;
        return ((bArr[i + 3] & 255) << 24) | i2 | (bArr[i] & 255) | ((bArr[i + 2] & 255) << 16);
    }

    public static int zzc(zzhaw zzhawVar, byte[] bArr, int i, int i2, int i3, zzgwy zzgwyVar) throws IOException {
        Object zze = zzhawVar.zze();
        int zzl = zzl(zze, zzhawVar, bArr, i, i2, i3, zzgwyVar);
        zzhawVar.zzf(zze);
        zzgwyVar.zzc = zze;
        return zzl;
    }

    public static int zzd(zzhaw zzhawVar, byte[] bArr, int i, int i2, zzgwy zzgwyVar) throws IOException {
        Object zze = zzhawVar.zze();
        int zzm = zzm(zze, zzhawVar, bArr, i, i2, zzgwyVar);
        zzhawVar.zzf(zze);
        zzgwyVar.zzc = zze;
        return zzm;
    }

    public static int zze(zzhaw zzhawVar, int i, byte[] bArr, int i2, int i3, zzgze zzgzeVar, zzgwy zzgwyVar) throws IOException {
        int zzd = zzd(zzhawVar, bArr, i2, i3, zzgwyVar);
        zzgzeVar.add(zzgwyVar.zzc);
        while (zzd < i3) {
            int zzh = zzh(bArr, zzd, zzgwyVar);
            if (i != zzgwyVar.zza) {
                break;
            }
            zzd = zzd(zzhawVar, bArr, zzh, i3, zzgwyVar);
            zzgzeVar.add(zzgwyVar.zzc);
        }
        return zzd;
    }

    public static int zzf(byte[] bArr, int i, zzgze zzgzeVar, zzgwy zzgwyVar) throws IOException {
        zzgyt zzgytVar = (zzgyt) zzgzeVar;
        int zzh = zzh(bArr, i, zzgwyVar);
        int i2 = zzgwyVar.zza + zzh;
        while (zzh < i2) {
            zzh = zzh(bArr, zzh, zzgwyVar);
            zzgytVar.zzi(zzgwyVar.zza);
        }
        if (zzh == i2) {
            return zzh;
        }
        throw new zzgzh("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static int zzg(int i, byte[] bArr, int i2, int i3, zzhbj zzhbjVar, zzgwy zzgwyVar) throws zzgzh {
        if ((i >>> 3) != 0) {
            int i4 = i & 7;
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 != 3) {
                            if (i4 == 5) {
                                zzhbjVar.zzj(i, Integer.valueOf(zzb(bArr, i2)));
                                return i2 + 4;
                            }
                            throw new zzgzh("Protocol message contained an invalid tag (zero).");
                        }
                        int i5 = (i & (-8)) | 4;
                        zzhbj zzf = zzhbj.zzf();
                        int i6 = zzgwyVar.zze + 1;
                        zzgwyVar.zze = i6;
                        zzo(i6);
                        int i7 = 0;
                        while (true) {
                            if (i2 >= i3) {
                                break;
                            }
                            int zzh = zzh(bArr, i2, zzgwyVar);
                            int i8 = zzgwyVar.zza;
                            if (i8 == i5) {
                                i7 = i8;
                                i2 = zzh;
                                break;
                            }
                            i2 = zzg(i8, bArr, zzh, i3, zzf, zzgwyVar);
                            i7 = i8;
                        }
                        zzgwyVar.zze--;
                        if (i2 <= i3 && i7 == i5) {
                            zzhbjVar.zzj(i, zzf);
                            return i2;
                        }
                        throw new zzgzh("Failed to parse the message.");
                    }
                    int zzh2 = zzh(bArr, i2, zzgwyVar);
                    int i9 = zzgwyVar.zza;
                    if (i9 >= 0) {
                        if (i9 <= bArr.length - zzh2) {
                            if (i9 == 0) {
                                zzhbjVar.zzj(i, zzgxk.zzb);
                            } else {
                                zzhbjVar.zzj(i, zzgxk.zzv(bArr, zzh2, i9));
                            }
                            return zzh2 + i9;
                        }
                        throw new zzgzh("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                    }
                    throw new zzgzh("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                }
                zzhbjVar.zzj(i, Long.valueOf(zzn(bArr, i2)));
                return i2 + 8;
            }
            int zzk = zzk(bArr, i2, zzgwyVar);
            zzhbjVar.zzj(i, Long.valueOf(zzgwyVar.zzb));
            return zzk;
        }
        throw new zzgzh("Protocol message contained an invalid tag (zero).");
    }

    public static int zzh(byte[] bArr, int i, zzgwy zzgwyVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            zzgwyVar.zza = b;
            return i2;
        }
        return zzi(b, bArr, i2, zzgwyVar);
    }

    public static int zzi(int i, byte[] bArr, int i2, zzgwy zzgwyVar) {
        byte b = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & 127;
        if (b >= 0) {
            zzgwyVar.zza = i4 | (b << 7);
            return i3;
        }
        int i5 = i4 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i2 + 2;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            zzgwyVar.zza = i5 | (b2 << Ascii.SO);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i2 + 3;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzgwyVar.zza = i7 | (b3 << Ascii.NAK);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i2 + 4;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzgwyVar.zza = i9 | (b4 << Ascii.FS);
            return i10;
        }
        int i11 = i9 | ((b4 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] < 0) {
                i10 = i12;
            } else {
                zzgwyVar.zza = i11;
                return i12;
            }
        }
    }

    public static int zzj(int i, byte[] bArr, int i2, int i3, zzgze zzgzeVar, zzgwy zzgwyVar) {
        zzgyt zzgytVar = (zzgyt) zzgzeVar;
        int zzh = zzh(bArr, i2, zzgwyVar);
        zzgytVar.zzi(zzgwyVar.zza);
        while (zzh < i3) {
            int zzh2 = zzh(bArr, zzh, zzgwyVar);
            if (i != zzgwyVar.zza) {
                break;
            }
            zzh = zzh(bArr, zzh2, zzgwyVar);
            zzgytVar.zzi(zzgwyVar.zza);
        }
        return zzh;
    }

    public static int zzk(byte[] bArr, int i, zzgwy zzgwyVar) {
        byte b;
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            zzgwyVar.zzb = j;
            return i2;
        }
        int i3 = i + 2;
        byte b2 = bArr[i2];
        long j2 = (j & 127) | ((b2 & Byte.MAX_VALUE) << 7);
        int i4 = 7;
        while (b2 < 0) {
            int i5 = i3 + 1;
            i4 += 7;
            j2 |= (b & Byte.MAX_VALUE) << i4;
            b2 = bArr[i3];
            i3 = i5;
        }
        zzgwyVar.zzb = j2;
        return i3;
    }

    public static int zzl(Object obj, zzhaw zzhawVar, byte[] bArr, int i, int i2, int i3, zzgwy zzgwyVar) throws IOException {
        int i4 = zzgwyVar.zze + 1;
        zzgwyVar.zze = i4;
        zzo(i4);
        int zzc = ((zzhag) zzhawVar).zzc(obj, bArr, i, i2, i3, zzgwyVar);
        zzgwyVar.zze--;
        zzgwyVar.zzc = obj;
        return zzc;
    }

    public static int zzm(Object obj, zzhaw zzhawVar, byte[] bArr, int i, int i2, zzgwy zzgwyVar) throws IOException {
        int i3 = i + 1;
        int i4 = bArr[i];
        if (i4 < 0) {
            i3 = zzi(i4, bArr, i3, zzgwyVar);
            i4 = zzgwyVar.zza;
        }
        int i5 = i3;
        if (i4 >= 0 && i4 <= i2 - i5) {
            int i6 = zzgwyVar.zze + 1;
            zzgwyVar.zze = i6;
            zzo(i6);
            int i7 = i5 + i4;
            zzhawVar.zzi(obj, bArr, i5, i7, zzgwyVar);
            zzgwyVar.zze--;
            zzgwyVar.zzc = obj;
            return i7;
        }
        throw new zzgzh("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static long zzn(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48) | ((bArr[i + 7] & 255) << 56);
    }

    private static void zzo(int i) throws zzgzh {
        if (i < zzb) {
            return;
        }
        throw new zzgzh("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
    }
}
