package com.google.android.gms.internal.ads;

import androidx.media3.common.MimeTypes;
import com.tencent.ugc.TXRecordCommon;
import java.util.Collections;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzaft extends zzafx {
    private static final int[] zzb = {5512, 11025, 22050, TXRecordCommon.AUDIO_SAMPLERATE_44100};
    private boolean zzc;
    private boolean zzd;
    private int zze;

    public zzaft(zzaet zzaetVar) {
        super(zzaetVar);
    }

    @Override // com.google.android.gms.internal.ads.zzafx
    public final boolean zza(zzek zzekVar) throws zzafw {
        String str;
        if (!this.zzc) {
            int zzm = zzekVar.zzm();
            int i = zzm >> 4;
            this.zze = i;
            if (i == 2) {
                int i2 = zzb[(zzm >> 2) & 3];
                zzx zzxVar = new zzx();
                zzxVar.zzE(MimeTypes.VIDEO_FLV);
                zzxVar.zzad("audio/mpeg");
                zzxVar.zzB(1);
                zzxVar.zzae(i2);
                this.zza.zzm(zzxVar.zzaj());
                this.zzd = true;
            } else if (i != 7 && i != 8) {
                if (i != 10) {
                    throw new zzafw("Audio format not supported: " + i);
                }
            } else {
                zzx zzxVar2 = new zzx();
                zzxVar2.zzE(MimeTypes.VIDEO_FLV);
                if (i == 7) {
                    str = "audio/g711-alaw";
                } else {
                    str = "audio/g711-mlaw";
                }
                zzxVar2.zzad(str);
                zzxVar2.zzB(1);
                zzxVar2.zzae(8000);
                this.zza.zzm(zzxVar2.zzaj());
                this.zzd = true;
            }
            this.zzc = true;
        } else {
            zzekVar.zzM(1);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzafx
    public final boolean zzb(zzek zzekVar, long j) throws zzaz {
        if (this.zze == 2) {
            int zza = zzekVar.zza();
            zzaet zzaetVar = this.zza;
            zzaetVar.zzr(zzekVar, zza);
            zzaetVar.zzt(j, 1, zza, 0, null);
            return true;
        }
        int zzm = zzekVar.zzm();
        if (zzm == 0 && !this.zzd) {
            int zza2 = zzekVar.zza();
            byte[] bArr = new byte[zza2];
            zzekVar.zzH(bArr, 0, zza2);
            zzaci zza3 = zzack.zza(bArr);
            zzx zzxVar = new zzx();
            zzxVar.zzE(MimeTypes.VIDEO_FLV);
            zzxVar.zzad("audio/mp4a-latm");
            zzxVar.zzC(zza3.zzc);
            zzxVar.zzB(zza3.zzb);
            zzxVar.zzae(zza3.zza);
            zzxVar.zzP(Collections.singletonList(bArr));
            this.zza.zzm(zzxVar.zzaj());
            this.zzd = true;
            return false;
        } else if (this.zze == 10 && zzm != 1) {
            return false;
        } else {
            int zza4 = zzekVar.zza();
            zzaet zzaetVar2 = this.zza;
            zzaetVar2.zzr(zzekVar, zza4);
            zzaetVar2.zzt(j, 1, zza4, 0, null);
            return true;
        }
    }
}
