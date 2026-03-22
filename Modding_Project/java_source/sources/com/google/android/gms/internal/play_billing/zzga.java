package com.google.android.gms.internal.play_billing;

import com.google.common.base.Ascii;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzga {
    public static final /* synthetic */ int zza = 0;
    private static volatile int zzb = 100;

    public static int zza(byte[] bArr, int i, zzfz zzfzVar) throws zzhr {
        int zzh = zzh(bArr, i, zzfzVar);
        int i2 = zzfzVar.zza;
        if (i2 >= 0) {
            if (i2 <= bArr.length - zzh) {
                if (i2 == 0) {
                    zzfzVar.zzc = zzgk.zzb;
                    return zzh;
                }
                zzfzVar.zzc = zzgk.zzj(bArr, zzh, i2);
                return zzh + i2;
            }
            throw new zzhr("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        throw new zzhr("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static int zzb(byte[] bArr, int i) {
        int i2 = (bArr[i + 1] & 255) << 8;
        return ((bArr[i + 3] & 255) << 24) | i2 | (bArr[i] & 255) | ((bArr[i + 2] & 255) << 16);
    }

    public static int zzc(zzix zzixVar, byte[] bArr, int i, int i2, int i3, zzfz zzfzVar) throws IOException {
        Object zze = zzixVar.zze();
        int zzl = zzl(zze, zzixVar, bArr, i, i2, i3, zzfzVar);
        zzixVar.zzf(zze);
        zzfzVar.zzc = zze;
        return zzl;
    }

    public static int zzd(zzix zzixVar, byte[] bArr, int i, int i2, zzfz zzfzVar) throws IOException {
        Object zze = zzixVar.zze();
        int zzm = zzm(zze, zzixVar, bArr, i, i2, zzfzVar);
        zzixVar.zzf(zze);
        zzfzVar.zzc = zze;
        return zzm;
    }

    public static int zze(zzix zzixVar, int i, byte[] bArr, int i2, int i3, zzho zzhoVar, zzfz zzfzVar) throws IOException {
        int zzd = zzd(zzixVar, bArr, i2, i3, zzfzVar);
        zzhoVar.add(zzfzVar.zzc);
        while (zzd < i3) {
            int zzh = zzh(bArr, zzd, zzfzVar);
            if (i != zzfzVar.zza) {
                break;
            }
            zzd = zzd(zzixVar, bArr, zzh, i3, zzfzVar);
            zzhoVar.add(zzfzVar.zzc);
        }
        return zzd;
    }

    public static int zzf(byte[] bArr, int i, zzho zzhoVar, zzfz zzfzVar) throws IOException {
        zzhl zzhlVar = (zzhl) zzhoVar;
        int zzh = zzh(bArr, i, zzfzVar);
        int i2 = zzfzVar.zza + zzh;
        while (zzh < i2) {
            zzh = zzh(bArr, zzh, zzfzVar);
            zzhlVar.zzg(zzfzVar.zza);
        }
        if (zzh == i2) {
            return zzh;
        }
        throw new zzhr("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static int zzg(int i, byte[] bArr, int i2, int i3, zzjk zzjkVar, zzfz zzfzVar) throws zzhr {
        if ((i >>> 3) != 0) {
            int i4 = i & 7;
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 != 3) {
                            if (i4 == 5) {
                                zzjkVar.zzj(i, Integer.valueOf(zzb(bArr, i2)));
                                return i2 + 4;
                            }
                            throw new zzhr("Protocol message contained an invalid tag (zero).");
                        }
                        int i5 = (i & (-8)) | 4;
                        zzjk zzf = zzjk.zzf();
                        int i6 = zzfzVar.zze + 1;
                        zzfzVar.zze = i6;
                        zzo(i6);
                        int i7 = 0;
                        while (true) {
                            if (i2 >= i3) {
                                break;
                            }
                            int zzh = zzh(bArr, i2, zzfzVar);
                            int i8 = zzfzVar.zza;
                            if (i8 == i5) {
                                i7 = i8;
                                i2 = zzh;
                                break;
                            }
                            i2 = zzg(i8, bArr, zzh, i3, zzf, zzfzVar);
                            i7 = i8;
                        }
                        zzfzVar.zze--;
                        if (i2 <= i3 && i7 == i5) {
                            zzjkVar.zzj(i, zzf);
                            return i2;
                        }
                        throw new zzhr("Failed to parse the message.");
                    }
                    int zzh2 = zzh(bArr, i2, zzfzVar);
                    int i9 = zzfzVar.zza;
                    if (i9 >= 0) {
                        if (i9 <= bArr.length - zzh2) {
                            if (i9 == 0) {
                                zzjkVar.zzj(i, zzgk.zzb);
                            } else {
                                zzjkVar.zzj(i, zzgk.zzj(bArr, zzh2, i9));
                            }
                            return zzh2 + i9;
                        }
                        throw new zzhr("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                    }
                    throw new zzhr("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                }
                zzjkVar.zzj(i, Long.valueOf(zzn(bArr, i2)));
                return i2 + 8;
            }
            int zzk = zzk(bArr, i2, zzfzVar);
            zzjkVar.zzj(i, Long.valueOf(zzfzVar.zzb));
            return zzk;
        }
        throw new zzhr("Protocol message contained an invalid tag (zero).");
    }

    public static int zzh(byte[] bArr, int i, zzfz zzfzVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            zzfzVar.zza = b;
            return i2;
        }
        return zzi(b, bArr, i2, zzfzVar);
    }

    public static int zzi(int i, byte[] bArr, int i2, zzfz zzfzVar) {
        byte b = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & 127;
        if (b >= 0) {
            zzfzVar.zza = i4 | (b << 7);
            return i3;
        }
        int i5 = i4 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i2 + 2;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            zzfzVar.zza = i5 | (b2 << Ascii.SO);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i2 + 3;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzfzVar.zza = i7 | (b3 << Ascii.NAK);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i2 + 4;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzfzVar.zza = i9 | (b4 << Ascii.FS);
            return i10;
        }
        int i11 = i9 | ((b4 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] < 0) {
                i10 = i12;
            } else {
                zzfzVar.zza = i11;
                return i12;
            }
        }
    }

    public static int zzj(int i, byte[] bArr, int i2, int i3, zzho zzhoVar, zzfz zzfzVar) {
        zzhl zzhlVar = (zzhl) zzhoVar;
        int zzh = zzh(bArr, i2, zzfzVar);
        zzhlVar.zzg(zzfzVar.zza);
        while (zzh < i3) {
            int zzh2 = zzh(bArr, zzh, zzfzVar);
            if (i != zzfzVar.zza) {
                break;
            }
            zzh = zzh(bArr, zzh2, zzfzVar);
            zzhlVar.zzg(zzfzVar.zza);
        }
        return zzh;
    }

    public static int zzk(byte[] bArr, int i, zzfz zzfzVar) {
        byte b;
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            zzfzVar.zzb = j;
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
        zzfzVar.zzb = j2;
        return i3;
    }

    public static int zzl(Object obj, zzix zzixVar, byte[] bArr, int i, int i2, int i3, zzfz zzfzVar) throws IOException {
        int i4 = zzfzVar.zze + 1;
        zzfzVar.zze = i4;
        zzo(i4);
        int zzc = ((zzip) zzixVar).zzc(obj, bArr, i, i2, i3, zzfzVar);
        zzfzVar.zze--;
        zzfzVar.zzc = obj;
        return zzc;
    }

    public static int zzm(Object obj, zzix zzixVar, byte[] bArr, int i, int i2, zzfz zzfzVar) throws IOException {
        int i3 = i + 1;
        int i4 = bArr[i];
        if (i4 < 0) {
            i3 = zzi(i4, bArr, i3, zzfzVar);
            i4 = zzfzVar.zza;
        }
        int i5 = i3;
        if (i4 >= 0 && i4 <= i2 - i5) {
            int i6 = zzfzVar.zze + 1;
            zzfzVar.zze = i6;
            zzo(i6);
            int i7 = i5 + i4;
            zzixVar.zzh(obj, bArr, i5, i7, zzfzVar);
            zzfzVar.zze--;
            zzfzVar.zzc = obj;
            return i7;
        }
        throw new zzhr("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static long zzn(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48) | ((bArr[i + 7] & 255) << 56);
    }

    private static void zzo(int i) throws zzhr {
        if (i < zzb) {
            return;
        }
        throw new zzhr("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
    }
}
