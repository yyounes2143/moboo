package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.media3.common.MimeTypes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaho {
    public byte[] zzO;
    public zzaeu zzU;
    public boolean zzV;
    public zzaet zzX;
    public int zzY;
    private int zzZ;
    public boolean zza;
    public String zzb;
    public String zzc;
    public int zzd;
    public int zze;
    public int zzf;
    public int zzg;
    public boolean zzh;
    public byte[] zzi;
    public zzaes zzj;
    public byte[] zzk;
    public zzs zzl;
    public int zzm = -1;
    public int zzn = -1;
    public int zzo = -1;
    public int zzp = -1;
    public int zzq = -1;
    public int zzr = 0;
    public int zzs = -1;
    public float zzt = 0.0f;
    public float zzu = 0.0f;
    public float zzv = 0.0f;
    public byte[] zzw = null;
    public int zzx = -1;
    public boolean zzy = false;
    public int zzz = -1;
    public int zzA = -1;
    public int zzB = -1;
    public int zzC = 1000;
    public int zzD = 200;
    public float zzE = -1.0f;
    public float zzF = -1.0f;
    public float zzG = -1.0f;
    public float zzH = -1.0f;
    public float zzI = -1.0f;
    public float zzJ = -1.0f;
    public float zzK = -1.0f;
    public float zzL = -1.0f;
    public float zzM = -1.0f;
    public float zzN = -1.0f;
    public int zzP = 1;
    public int zzQ = -1;
    public int zzR = 8000;
    public long zzS = 0;
    public long zzT = 0;
    public boolean zzW = true;
    private String zzaa = "eng";

    private static Pair zzf(zzek zzekVar) throws zzaz {
        try {
            zzekVar.zzM(16);
            long zzs = zzekVar.zzs();
            if (zzs == 1482049860) {
                return new Pair(MimeTypes.VIDEO_DIVX, null);
            }
            if (zzs == 859189832) {
                return new Pair("video/3gpp", null);
            }
            if (zzs == 826496599) {
                int zzc = zzekVar.zzc() + 20;
                byte[] zzN = zzekVar.zzN();
                while (true) {
                    int length = zzN.length;
                    if (zzc < length - 4) {
                        int i = zzc + 1;
                        if (zzN[zzc] == 0 && zzN[i] == 0 && zzN[zzc + 2] == 1 && zzN[zzc + 3] == 15) {
                            return new Pair("video/wvc1", Collections.singletonList(Arrays.copyOfRange(zzN, zzc, length)));
                        }
                        zzc = i;
                    } else {
                        throw zzaz.zza("Failed to find FourCC VC1 initialization data", null);
                    }
                }
            } else {
                zzdx.zzf("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                return new Pair("video/x-unknown", null);
            }
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw zzaz.zza("Error parsing FourCC private data", null);
        }
    }

    private static List zzg(byte[] bArr) throws zzaz {
        int i;
        int i2;
        try {
            if (bArr[0] == 2) {
                int i3 = 0;
                int i4 = 1;
                while (true) {
                    int i5 = bArr[i4];
                    i4++;
                    i = i5 & 255;
                    if (i != 255) {
                        break;
                    }
                    i3 += 255;
                }
                int i6 = i3 + i;
                int i7 = 0;
                while (true) {
                    int i8 = bArr[i4];
                    i4++;
                    i2 = i8 & 255;
                    if (i2 != 255) {
                        break;
                    }
                    i7 += 255;
                }
                int i9 = i7 + i2;
                if (bArr[i4] == 1) {
                    byte[] bArr2 = new byte[i6];
                    System.arraycopy(bArr, i4, bArr2, 0, i6);
                    int i10 = i4 + i6;
                    if (bArr[i10] == 3) {
                        int i11 = i10 + i9;
                        if (bArr[i11] == 5) {
                            int length = bArr.length - i11;
                            byte[] bArr3 = new byte[length];
                            System.arraycopy(bArr, i11, bArr3, 0, length);
                            ArrayList arrayList = new ArrayList(2);
                            arrayList.add(bArr2);
                            arrayList.add(bArr3);
                            return arrayList;
                        }
                        throw zzaz.zza("Error parsing vorbis codec private", null);
                    }
                    throw zzaz.zza("Error parsing vorbis codec private", null);
                }
                throw zzaz.zza("Error parsing vorbis codec private", null);
            }
            throw zzaz.zza("Error parsing vorbis codec private", null);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw zzaz.zza("Error parsing vorbis codec private", null);
        }
    }

    private static boolean zzh(zzek zzekVar) throws zzaz {
        UUID uuid;
        UUID uuid2;
        try {
            int zzk = zzekVar.zzk();
            if (zzk == 1) {
                return true;
            }
            if (zzk == 65534) {
                zzekVar.zzL(24);
                long zzt = zzekVar.zzt();
                uuid = zzahq.zze;
                if (zzt == uuid.getMostSignificantBits()) {
                    long zzt2 = zzekVar.zzt();
                    uuid2 = zzahq.zze;
                    if (zzt2 == uuid2.getLeastSignificantBits()) {
                        return true;
                    }
                }
            }
            return false;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw zzaz.zza("Error parsing MS/ACM codec private", null);
        }
    }

    @EnsuresNonNull
    private final byte[] zzi(String str) throws zzaz {
        byte[] bArr = this.zzk;
        if (bArr != null) {
            return bArr;
        }
        throw zzaz.zza("Missing CodecPrivate for codec ".concat(String.valueOf(str)), null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:466:0x03c2  */
    /* JADX WARN: Removed duplicated region for block: B:471:0x03dc  */
    /* JADX WARN: Removed duplicated region for block: B:472:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:475:0x03eb  */
    /* JADX WARN: Removed duplicated region for block: B:476:0x03fb  */
    /* JADX WARN: Removed duplicated region for block: B:563:0x05d4  */
    /* JADX WARN: Removed duplicated region for block: B:568:0x05ef  */
    /* JADX WARN: Removed duplicated region for block: B:569:0x05f2  */
    @org.checkerframework.checker.nullness.qual.EnsuresNonNull
    @org.checkerframework.checker.nullness.qual.RequiresNonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zze(com.google.android.gms.internal.ads.zzadq r19, int r20) throws com.google.android.gms.internal.ads.zzaz {
        /*
            Method dump skipped, instructions count: 1774
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaho.zze(com.google.android.gms.internal.ads.zzadq, int):void");
    }
}
