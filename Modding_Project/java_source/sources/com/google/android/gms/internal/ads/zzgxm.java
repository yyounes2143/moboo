package com.google.android.gms.internal.ads;

import androidx.work.WorkInfo;
import com.google.common.base.Ascii;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgxm extends zzgxq {
    private final Iterable zza;
    private final Iterator zzf;
    private ByteBuffer zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private long zzm;
    private long zzn;
    private long zzo;

    public /* synthetic */ zzgxm(Iterable iterable, int i, boolean z, zzgxp zzgxpVar) {
        super(null);
        this.zzj = Integer.MAX_VALUE;
        this.zzh = i;
        this.zza = iterable;
        this.zzf = iterable.iterator();
        this.zzl = 0;
        if (i == 0) {
            this.zzg = zzgzf.zzc;
            this.zzm = 0L;
            this.zzn = 0L;
            this.zzo = 0L;
            return;
        }
        zzM();
    }

    private final int zzI() {
        return (int) (((this.zzh - this.zzl) - this.zzm) + this.zzn);
    }

    private final void zzJ() throws zzgzh {
        if (this.zzf.hasNext()) {
            zzM();
            return;
        }
        throw new zzgzh("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    private final void zzK(byte[] bArr, int i, int i2) throws IOException {
        if (i2 <= zzI()) {
            int i3 = i2;
            while (i3 > 0) {
                if (this.zzo - this.zzm == 0) {
                    zzJ();
                }
                int min = Math.min(i3, (int) (this.zzo - this.zzm));
                long j = min;
                zzhbp.zzo(this.zzm, bArr, i2 - i3, j);
                i3 -= min;
                this.zzm += j;
            }
        } else if (i2 <= 0) {
        } else {
            throw new zzgzh("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    private final void zzL() {
        int i = this.zzh + this.zzi;
        this.zzh = i;
        int i2 = this.zzj;
        if (i > i2) {
            int i3 = i - i2;
            this.zzi = i3;
            this.zzh = i - i3;
            return;
        }
        this.zzi = 0;
    }

    private final void zzM() {
        ByteBuffer byteBuffer = (ByteBuffer) this.zzf.next();
        this.zzg = byteBuffer;
        this.zzl += (int) (this.zzm - this.zzn);
        long position = byteBuffer.position();
        this.zzm = position;
        this.zzn = position;
        this.zzo = this.zzg.limit();
        long zze = zzhbp.zze(this.zzg);
        this.zzm += zze;
        this.zzn += zze;
        this.zzo += zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgxq
    public final boolean zzA() throws IOException {
        if ((this.zzl + this.zzm) - this.zzn == this.zzh) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgxq
    public final boolean zzB() throws IOException {
        if (zzr() != 0) {
            return true;
        }
        return false;
    }

    public final long zzC() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte zzh = zzh();
            j |= (zzh & Byte.MAX_VALUE) << i;
            if ((zzh & 128) == 0) {
                return j;
            }
        }
        throw new zzgzh("CodedInputStream encountered a malformed varint.");
    }

    @Override // com.google.android.gms.internal.ads.zzgxq
    public final double zza() throws IOException {
        return Double.longBitsToDouble(zzq());
    }

    @Override // com.google.android.gms.internal.ads.zzgxq
    public final float zzb() throws IOException {
        return Float.intBitsToFloat(zzi());
    }

    @Override // com.google.android.gms.internal.ads.zzgxq
    public final int zzc() {
        return (int) ((this.zzl + this.zzm) - this.zzn);
    }

    @Override // com.google.android.gms.internal.ads.zzgxq
    public final int zzd(int i) throws zzgzh {
        if (i >= 0) {
            int zzc = i + zzc();
            int i2 = this.zzj;
            if (zzc <= i2) {
                this.zzj = zzc;
                zzL();
                return i2;
            }
            throw new zzgzh("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        throw new zzgzh("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    @Override // com.google.android.gms.internal.ads.zzgxq
    public final int zze() throws IOException {
        return zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzgxq
    public final int zzf() throws IOException {
        return zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzgxq
    public final int zzg() throws IOException {
        return zzp();
    }

    public final byte zzh() throws IOException {
        if (this.zzo - this.zzm == 0) {
            zzJ();
        }
        long j = this.zzm;
        this.zzm = 1 + j;
        return zzhbp.zza(j);
    }

    public final int zzi() throws IOException {
        long j = this.zzo;
        long j2 = this.zzm;
        if (j - j2 >= 4) {
            this.zzm = 4 + j2;
            return (zzhbp.zza(j2) & 255) | ((zzhbp.zza(1 + j2) & 255) << 8) | ((zzhbp.zza(2 + j2) & 255) << 16) | ((zzhbp.zza(j2 + 3) & 255) << 24);
        }
        return (zzh() & 255) | ((zzh() & 255) << 8) | ((zzh() & 255) << 16) | ((zzh() & 255) << 24);
    }

    @Override // com.google.android.gms.internal.ads.zzgxq
    public final int zzj() throws IOException {
        return zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzgxq
    public final int zzk() throws IOException {
        return zzgxq.zzD(zzp());
    }

    @Override // com.google.android.gms.internal.ads.zzgxq
    public final int zzl() throws IOException {
        if (zzA()) {
            this.zzk = 0;
            return 0;
        }
        int zzp = zzp();
        this.zzk = zzp;
        if ((zzp >>> 3) != 0) {
            return zzp;
        }
        throw new zzgzh("Protocol message contained an invalid tag (zero).");
    }

    @Override // com.google.android.gms.internal.ads.zzgxq
    public final int zzm() throws IOException {
        return zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzgxq
    public final long zzn() throws IOException {
        return zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzgxq
    public final long zzo() throws IOException {
        return zzr();
    }

    public final int zzp() throws IOException {
        int i;
        long j = this.zzm;
        if (this.zzo != j) {
            long j2 = j + 1;
            byte zza = zzhbp.zza(j);
            if (zza >= 0) {
                this.zzm++;
                return zza;
            } else if (this.zzo - this.zzm >= 10) {
                long j3 = 2 + j;
                int zza2 = (zzhbp.zza(j2) << 7) ^ zza;
                if (zza2 < 0) {
                    i = zza2 ^ WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
                } else {
                    long j4 = 3 + j;
                    int zza3 = (zzhbp.zza(j3) << Ascii.SO) ^ zza2;
                    if (zza3 >= 0) {
                        i = zza3 ^ 16256;
                    } else {
                        long j5 = 4 + j;
                        int zza4 = zza3 ^ (zzhbp.zza(j4) << Ascii.NAK);
                        if (zza4 < 0) {
                            i = (-2080896) ^ zza4;
                        } else {
                            j4 = 5 + j;
                            byte zza5 = zzhbp.zza(j5);
                            int i2 = (zza4 ^ (zza5 << Ascii.FS)) ^ 266354560;
                            if (zza5 < 0) {
                                j5 = 6 + j;
                                if (zzhbp.zza(j4) < 0) {
                                    j4 = 7 + j;
                                    if (zzhbp.zza(j5) < 0) {
                                        j5 = 8 + j;
                                        if (zzhbp.zza(j4) < 0) {
                                            j4 = 9 + j;
                                            if (zzhbp.zza(j5) < 0) {
                                                long j6 = j + 10;
                                                if (zzhbp.zza(j4) >= 0) {
                                                    i = i2;
                                                    j3 = j6;
                                                }
                                            }
                                        }
                                    }
                                }
                                i = i2;
                            }
                            i = i2;
                        }
                        j3 = j5;
                    }
                    j3 = j4;
                }
                this.zzm = j3;
                return i;
            }
        }
        return (int) zzC();
    }

    public final long zzq() throws IOException {
        long j = this.zzo;
        long j2 = this.zzm;
        if (j - j2 >= 8) {
            this.zzm = 8 + j2;
            return (zzhbp.zza(j2) & 255) | ((zzhbp.zza(1 + j2) & 255) << 8) | ((zzhbp.zza(j2 + 2) & 255) << 16) | ((zzhbp.zza(3 + j2) & 255) << 24) | ((zzhbp.zza(j2 + 4) & 255) << 32) | ((zzhbp.zza(j2 + 5) & 255) << 40) | ((zzhbp.zza(j2 + 6) & 255) << 48) | ((zzhbp.zza(j2 + 7) & 255) << 56);
        }
        return ((zzh() & 255) << 56) | (zzh() & 255) | ((zzh() & 255) << 8) | ((zzh() & 255) << 16) | ((zzh() & 255) << 24) | ((zzh() & 255) << 32) | ((zzh() & 255) << 40) | ((zzh() & 255) << 48);
    }

    public final long zzr() throws IOException {
        long j;
        long j2;
        long j3 = this.zzm;
        if (this.zzo != j3) {
            long j4 = j3 + 1;
            byte zza = zzhbp.zza(j3);
            if (zza >= 0) {
                this.zzm++;
                return zza;
            } else if (this.zzo - this.zzm >= 10) {
                long j5 = 2 + j3;
                int zza2 = (zzhbp.zza(j4) << 7) ^ zza;
                if (zza2 < 0) {
                    j = zza2 ^ WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
                } else {
                    long j6 = 3 + j3;
                    int zza3 = (zzhbp.zza(j5) << Ascii.SO) ^ zza2;
                    if (zza3 >= 0) {
                        j = zza3 ^ 16256;
                    } else {
                        long j7 = 4 + j3;
                        int zza4 = zza3 ^ (zzhbp.zza(j6) << Ascii.NAK);
                        if (zza4 < 0) {
                            j = (-2080896) ^ zza4;
                            j5 = j7;
                        } else {
                            j6 = 5 + j3;
                            long zza5 = (zzhbp.zza(j7) << 28) ^ zza4;
                            if (zza5 >= 0) {
                                j = 266354560 ^ zza5;
                            } else {
                                long j8 = 6 + j3;
                                long zza6 = zza5 ^ (zzhbp.zza(j6) << 35);
                                if (zza6 < 0) {
                                    j2 = -34093383808L;
                                } else {
                                    long j9 = 7 + j3;
                                    long zza7 = zza6 ^ (zzhbp.zza(j8) << 42);
                                    if (zza7 >= 0) {
                                        j = 4363953127296L ^ zza7;
                                    } else {
                                        j8 = 8 + j3;
                                        zza6 = zza7 ^ (zzhbp.zza(j9) << 49);
                                        if (zza6 < 0) {
                                            j2 = -558586000294016L;
                                        } else {
                                            j9 = 9 + j3;
                                            long zza8 = (zza6 ^ (zzhbp.zza(j8) << 56)) ^ 71499008037633920L;
                                            if (zza8 < 0) {
                                                long j10 = j3 + 10;
                                                if (zzhbp.zza(j9) >= 0) {
                                                    j5 = j10;
                                                    j = zza8;
                                                }
                                            } else {
                                                j = zza8;
                                            }
                                        }
                                    }
                                    j5 = j9;
                                }
                                j = j2 ^ zza6;
                                j5 = j8;
                            }
                        }
                    }
                    j5 = j6;
                }
                this.zzm = j5;
                return j;
            }
        }
        return zzC();
    }

    @Override // com.google.android.gms.internal.ads.zzgxq
    public final long zzs() throws IOException {
        return zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzgxq
    public final long zzt() throws IOException {
        return zzgxq.zzF(zzr());
    }

    @Override // com.google.android.gms.internal.ads.zzgxq
    public final long zzu() throws IOException {
        return zzr();
    }

    @Override // com.google.android.gms.internal.ads.zzgxq
    public final zzgxk zzv() throws IOException {
        int zzp = zzp();
        if (zzp > 0) {
            long j = this.zzo;
            long j2 = this.zzm;
            long j3 = zzp;
            if (j3 <= j - j2) {
                byte[] bArr = new byte[zzp];
                zzhbp.zzo(j2, bArr, 0L, j3);
                this.zzm += j3;
                zzgxk zzgxkVar = zzgxk.zzb;
                return new zzgxh(bArr);
            }
        }
        if (zzp > 0 && zzp <= zzI()) {
            byte[] bArr2 = new byte[zzp];
            zzK(bArr2, 0, zzp);
            zzgxk zzgxkVar2 = zzgxk.zzb;
            return new zzgxh(bArr2);
        } else if (zzp == 0) {
            return zzgxk.zzb;
        } else {
            if (zzp < 0) {
                throw new zzgzh("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            throw new zzgzh("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgxq
    public final String zzw() throws IOException {
        int zzp = zzp();
        if (zzp > 0) {
            long j = this.zzo;
            long j2 = this.zzm;
            long j3 = zzp;
            if (j3 <= j - j2) {
                byte[] bArr = new byte[zzp];
                zzhbp.zzo(j2, bArr, 0L, j3);
                String str = new String(bArr, zzgzf.zza);
                this.zzm += j3;
                return str;
            }
        }
        if (zzp > 0 && zzp <= zzI()) {
            byte[] bArr2 = new byte[zzp];
            zzK(bArr2, 0, zzp);
            return new String(bArr2, zzgzf.zza);
        } else if (zzp == 0) {
            return "";
        } else {
            if (zzp < 0) {
                throw new zzgzh("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            throw new zzgzh("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgxq
    public final String zzx() throws IOException {
        int zzp = zzp();
        if (zzp > 0) {
            long j = this.zzo;
            long j2 = this.zzm;
            long j3 = zzp;
            if (j3 <= j - j2) {
                String zzg = zzhbu.zzg(this.zzg, (int) (j2 - this.zzn), zzp);
                this.zzm += j3;
                return zzg;
            }
        }
        if (zzp >= 0 && zzp <= zzI()) {
            byte[] bArr = new byte[zzp];
            zzK(bArr, 0, zzp);
            return zzhbu.zzh(bArr, 0, zzp);
        } else if (zzp == 0) {
            return "";
        } else {
            if (zzp <= 0) {
                throw new zzgzh("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            throw new zzgzh("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgxq
    public final void zzy(int i) throws zzgzh {
        if (this.zzk == i) {
            return;
        }
        throw new zzgzh("Protocol message end-group tag did not match expected tag.");
    }

    @Override // com.google.android.gms.internal.ads.zzgxq
    public final void zzz(int i) {
        this.zzj = i;
        zzL();
    }
}
