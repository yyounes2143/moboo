package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.media3.common.MimeTypes;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzako implements zzaet {
    private final zzaet zza;
    private final zzakj zzb;
    @Nullable
    private zzakl zzg;
    private zzz zzh;
    private boolean zzi;
    private int zzd = 0;
    private int zze = 0;
    private byte[] zzf = zzeu.zzb;
    private final zzek zzc = new zzek();

    public zzako(zzaet zzaetVar, zzakj zzakjVar) {
        this.zza = zzaetVar;
        this.zzb = zzakjVar;
    }

    public static /* synthetic */ void zza(zzako zzakoVar, long j, int i, zzakd zzakdVar) {
        boolean z;
        zzdc.zzb(zzakoVar.zzh);
        zzfyc<zzcu> zzfycVar = zzakdVar.zza;
        long j2 = zzakdVar.zzc;
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(zzfycVar.size());
        for (zzcu zzcuVar : zzfycVar) {
            arrayList.add(zzcuVar.zza());
        }
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("c", arrayList);
        bundle.putLong("d", j2);
        Parcel obtain = Parcel.obtain();
        obtain.writeBundle(bundle);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        zzek zzekVar = zzakoVar.zzc;
        int length = marshall.length;
        zzekVar.zzJ(marshall, length);
        zzaet zzaetVar = zzakoVar.zza;
        zzaetVar.zzr(zzekVar, length);
        long j3 = zzakdVar.zzb;
        if (j3 == -9223372036854775807L) {
            if (zzakoVar.zzh.zzt == Long.MAX_VALUE) {
                z = true;
            } else {
                z = false;
            }
            zzdc.zzf(z);
        } else {
            long j4 = zzakoVar.zzh.zzt;
            if (j4 == Long.MAX_VALUE) {
                j += j3;
            } else {
                j = j3 + j4;
            }
        }
        zzaetVar.zzt(j, i | 1, length, 0, null);
    }

    private final void zzc(int i) {
        byte[] bArr;
        int length = this.zzf.length;
        int i2 = this.zze;
        if (length - i2 >= i) {
            return;
        }
        int i3 = i2 - this.zzd;
        int max = Math.max(i3 + i3, i + i3);
        byte[] bArr2 = this.zzf;
        if (max <= bArr2.length) {
            bArr = bArr2;
        } else {
            bArr = new byte[max];
        }
        System.arraycopy(bArr2, this.zzd, bArr, 0, i3);
        this.zzd = 0;
        this.zze = i3;
        this.zzf = bArr;
    }

    public final void zzb(boolean z) {
        this.zzi = true;
    }

    @Override // com.google.android.gms.internal.ads.zzaet
    public final /* synthetic */ int zzf(zzl zzlVar, int i, boolean z) {
        return zzaer.zza(this, zzlVar, i, z);
    }

    @Override // com.google.android.gms.internal.ads.zzaet
    public final int zzg(zzl zzlVar, int i, boolean z, int i2) throws IOException {
        if (this.zzg == null) {
            return this.zza.zzg(zzlVar, i, z, 0);
        }
        zzc(i);
        int zza = zzlVar.zza(this.zzf, this.zze, i);
        if (zza == -1) {
            if (z) {
                return -1;
            }
            throw new EOFException();
        }
        this.zze += zza;
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzaet
    public final void zzm(zzz zzzVar) {
        boolean z;
        zzakl zzaklVar;
        String str = zzzVar.zzo;
        str.getClass();
        if (zzay.zzb(str) == 3) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzd(z);
        if (!zzzVar.equals(this.zzh)) {
            this.zzh = zzzVar;
            zzakj zzakjVar = this.zzb;
            if (zzakjVar.zzc(zzzVar)) {
                zzaklVar = zzakjVar.zzb(zzzVar);
            } else {
                zzaklVar = null;
            }
            this.zzg = zzaklVar;
        }
        if (this.zzg == null) {
            this.zza.zzm(zzzVar);
            return;
        }
        zzaet zzaetVar = this.zza;
        zzx zzb = zzzVar.zzb();
        zzb.zzad(MimeTypes.APPLICATION_MEDIA3_CUES);
        zzb.zzC(str);
        zzb.zzah(Long.MAX_VALUE);
        zzb.zzG(this.zzb.zza(zzzVar));
        zzaetVar.zzm(zzb.zzaj());
    }

    @Override // com.google.android.gms.internal.ads.zzaet
    public final /* synthetic */ void zzr(zzek zzekVar, int i) {
        zzaer.zzb(this, zzekVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzaet
    public final void zzs(zzek zzekVar, int i, int i2) {
        if (this.zzg == null) {
            this.zza.zzs(zzekVar, i, i2);
            return;
        }
        zzc(i);
        zzekVar.zzH(this.zzf, this.zze, i);
        this.zze += i;
    }

    @Override // com.google.android.gms.internal.ads.zzaet
    public final void zzt(final long j, final int i, int i2, int i3, @Nullable zzaes zzaesVar) {
        boolean z;
        if (this.zzg == null) {
            this.zza.zzt(j, i, i2, i3, zzaesVar);
            return;
        }
        if (zzaesVar == null) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zze(z, "DRM on subtitles is not supported");
        int i4 = (this.zze - i3) - i2;
        try {
            this.zzg.zza(this.zzf, i4, i2, zzakk.zza(), new zzdk() { // from class: com.google.android.gms.internal.ads.zzakn
                @Override // com.google.android.gms.internal.ads.zzdk
                public final void zza(Object obj) {
                    zzako.zza(zzako.this, j, i, (zzakd) obj);
                }
            });
        } catch (RuntimeException e) {
            if (this.zzi) {
                zzdx.zzg("SubtitleTranscodingTO", "Parsing subtitles failed, ignoring sample.", e);
            } else {
                throw e;
            }
        }
        int i5 = i4 + i2;
        this.zzd = i5;
        if (i5 == this.zze) {
            this.zzd = 0;
            this.zze = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaet
    public final /* synthetic */ void zzl(long j) {
    }
}
