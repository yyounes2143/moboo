package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import androidx.annotation.RequiresApi;
import j$.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@RequiresApi(23)
/* loaded from: classes4.dex */
public final class zzpf extends AudioDeviceCallback {
    final /* synthetic */ zzpj zza;

    public /* synthetic */ zzpf(zzpj zzpjVar, zzpi zzpiVar) {
        this.zza = zzpjVar;
    }

    @Override // android.media.AudioDeviceCallback
    public final void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
        Context context;
        zze zzeVar;
        zzpk zzpkVar;
        zzpj zzpjVar = this.zza;
        context = zzpjVar.zza;
        zzeVar = zzpjVar.zzh;
        zzpkVar = zzpjVar.zzg;
        zzpjVar.zzj(zzpe.zzc(context, zzeVar, zzpkVar));
    }

    @Override // android.media.AudioDeviceCallback
    public final void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
        zzpk zzpkVar;
        Context context;
        zze zzeVar;
        zzpk zzpkVar2;
        zzpj zzpjVar = this.zza;
        zzpkVar = zzpjVar.zzg;
        String str = zzeu.zza;
        int length = audioDeviceInfoArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            } else if (Objects.equals(audioDeviceInfoArr[i], zzpkVar)) {
                zzpjVar.zzg = null;
                break;
            } else {
                i++;
            }
        }
        context = zzpjVar.zza;
        zzeVar = zzpjVar.zzh;
        zzpkVar2 = zzpjVar.zzg;
        zzpjVar.zzj(zzpe.zzc(context, zzeVar, zzpkVar2));
    }
}
