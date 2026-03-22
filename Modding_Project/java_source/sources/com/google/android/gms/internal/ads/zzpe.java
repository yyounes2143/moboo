package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioProfile;
import android.media.AudioTrack;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import j$.util.Objects;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzpe {
    @VisibleForTesting
    static final zzfyf zzb;
    private final SparseArray zzd = new SparseArray();
    private final int zze;
    public static final zzpe zza = new zzpe(zzfyc.zzo(zzpd.zza));
    @SuppressLint({"InlinedApi"})
    private static final zzfyc zzc = zzfyc.zzq(2, 5, 6);

    static {
        zzfye zzfyeVar = new zzfye();
        zzfyeVar.zza(5, 6);
        zzfyeVar.zza(17, 6);
        zzfyeVar.zza(7, 6);
        zzfyeVar.zza(30, 10);
        zzfyeVar.zza(18, 6);
        zzfyeVar.zza(6, 8);
        zzfyeVar.zza(8, 8);
        zzfyeVar.zza(14, 8);
        zzb = zzfyeVar.zzc();
    }

    private zzpe(List list) {
        for (int i = 0; i < list.size(); i++) {
            zzpd zzpdVar = (zzpd) list.get(i);
            this.zzd.put(zzpdVar.zzb, zzpdVar);
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzd.size(); i3++) {
            i2 = Math.max(i2, ((zzpd) this.zzd.valueAt(i3)).zzc);
        }
        this.zze = i2;
    }

    @Nullable
    public static Uri zza() {
        if (zzf()) {
            return Settings.Global.getUriFor("external_surround_sound_enabled");
        }
        return null;
    }

    @SuppressLint({"UnprotectedReceiver"})
    public static zzpe zzc(Context context, zze zzeVar, @Nullable zzpk zzpkVar) {
        return zzd(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")), zzeVar, zzpkVar);
    }

    @SuppressLint({"InlinedApi"})
    public static zzpe zzd(Context context, @Nullable Intent intent, zze zzeVar, @Nullable zzpk zzpkVar) {
        AudioDeviceInfo[] audioDeviceInfoArr;
        boolean z;
        boolean isDirectPlaybackSupported;
        List directProfilesForAttributes;
        int encapsulationType;
        int format;
        int[] channelMasks;
        int[] channelMasks2;
        List audioDevicesForAttributes;
        AudioManager zzc2 = zzcj.zzc(context);
        if (zzpkVar == null) {
            zzpk zzpkVar2 = null;
            if (Build.VERSION.SDK_INT >= 33) {
                try {
                    audioDevicesForAttributes = zzc2.getAudioDevicesForAttributes(zzeVar.zza().zza);
                    if (!audioDevicesForAttributes.isEmpty()) {
                        zzpkVar2 = new zzpk((AudioDeviceInfo) audioDevicesForAttributes.get(0));
                    }
                } catch (RuntimeException unused) {
                }
            }
            zzpkVar = zzpkVar2;
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 33 && (zzeu.zzN(context) || zzeu.zzJ(context))) {
            directProfilesForAttributes = zzc2.getDirectProfilesForAttributes(zzeVar.zza().zza);
            HashMap hashMap = new HashMap();
            hashMap.put(2, new HashSet(zzgbf.zzh(12)));
            for (int i2 = 0; i2 < directProfilesForAttributes.size(); i2++) {
                AudioProfile Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = androidx.media3.exoplayer.audio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(directProfilesForAttributes.get(i2));
                encapsulationType = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getEncapsulationType();
                if (encapsulationType != 1) {
                    format = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getFormat();
                    if (zzeu.zzK(format) || zzb.containsKey(Integer.valueOf(format))) {
                        Integer valueOf = Integer.valueOf(format);
                        if (!hashMap.containsKey(valueOf)) {
                            channelMasks = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getChannelMasks();
                            hashMap.put(valueOf, new HashSet(zzgbf.zzh(channelMasks)));
                        } else {
                            Set set = (Set) hashMap.get(valueOf);
                            set.getClass();
                            channelMasks2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getChannelMasks();
                            set.addAll(zzgbf.zzh(channelMasks2));
                        }
                    }
                }
            }
            int i3 = zzfyc.zzd;
            zzfxz zzfxzVar = new zzfxz();
            for (Map.Entry entry : hashMap.entrySet()) {
                zzfxzVar.zzf(new zzpd(((Integer) entry.getKey()).intValue(), (Set) entry.getValue()));
            }
            return new zzpe(zzfxzVar.zzi());
        }
        if (zzpkVar == null) {
            audioDeviceInfoArr = zzc2.getDevices(2);
        } else {
            audioDeviceInfoArr = new AudioDeviceInfo[]{zzpkVar.zza};
        }
        zzfyg zzfygVar = new zzfyg();
        zzfygVar.zzg(8, 7);
        if (i >= 31) {
            zzfygVar.zzg(26, 27);
        }
        if (i >= 33) {
            zzfygVar.zzf((Object) 30);
        }
        zzfyh zzi = zzfygVar.zzi();
        for (AudioDeviceInfo audioDeviceInfo : audioDeviceInfoArr) {
            if (zzi.contains(Integer.valueOf(audioDeviceInfo.getType()))) {
                return zza;
            }
        }
        zzfyg zzfygVar2 = new zzfyg();
        zzfygVar2.zzf((Object) 2);
        if (Build.VERSION.SDK_INT >= 29 && (zzeu.zzN(context) || zzeu.zzJ(context))) {
            int i4 = zzfyc.zzd;
            zzfxz zzfxzVar2 = new zzfxz();
            zzgai it = zzb.keySet().iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                int intValue = num.intValue();
                if (Build.VERSION.SDK_INT >= zzeu.zzh(intValue)) {
                    isDirectPlaybackSupported = AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(intValue).setSampleRate(48000).build(), zzeVar.zza().zza);
                    if (isDirectPlaybackSupported) {
                        zzfxzVar2.zzf(num);
                    }
                }
            }
            zzfxzVar2.zzf((Object) 2);
            zzfygVar2.zzh(zzfxzVar2.zzi());
            return new zzpe(zze(zzgbf.zzi(zzfygVar2.zzi()), 10));
        }
        ContentResolver contentResolver = context.getContentResolver();
        if (Settings.Global.getInt(contentResolver, "use_external_surround_sound_flag", 0) == 1) {
            z = true;
        } else {
            z = false;
        }
        if ((z || zzf()) && Settings.Global.getInt(contentResolver, "external_surround_sound_enabled", 0) == 1) {
            zzfygVar2.zzh(zzc);
        }
        if (intent != null && !z && intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 1) {
            int[] intArrayExtra = intent.getIntArrayExtra("android.media.extra.ENCODINGS");
            if (intArrayExtra != null) {
                zzfygVar2.zzh(zzgbf.zzh(intArrayExtra));
            }
            return new zzpe(zze(zzgbf.zzi(zzfygVar2.zzi()), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 10)));
        }
        return new zzpe(zze(zzgbf.zzi(zzfygVar2.zzi()), 10));
    }

    private static zzfyc zze(@Nullable int[] iArr, int i) {
        int i2 = zzfyc.zzd;
        zzfxz zzfxzVar = new zzfxz();
        for (int i3 : iArr) {
            zzfxzVar.zzf(new zzpd(i3, i));
        }
        return zzfxzVar.zzi();
    }

    private static boolean zzf() {
        String str = Build.MANUFACTURER;
        if (!str.equals("Amazon") && !str.equals("Xiaomi")) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001c, code lost:
        if (r1 != false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(@androidx.annotation.Nullable java.lang.Object r9) {
        /*
            r8 = this;
            r0 = 1
            if (r8 != r9) goto L4
            return r0
        L4:
            boolean r1 = r9 instanceof com.google.android.gms.internal.ads.zzpe
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            com.google.android.gms.internal.ads.zzpe r9 = (com.google.android.gms.internal.ads.zzpe) r9
            android.util.SparseArray r1 = r8.zzd
            android.util.SparseArray r3 = r9.zzd
            java.lang.String r4 = com.google.android.gms.internal.ads.zzeu.zza
            int r4 = android.os.Build.VERSION.SDK_INT
            r5 = 31
            if (r4 < r5) goto L1f
            boolean r1 = androidx.media3.common.util.Wwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r1, r3)
            if (r1 == 0) goto L47
            goto L40
        L1f:
            int r4 = r1.size()
            int r5 = r3.size()
            if (r4 != r5) goto L47
            r5 = r2
        L2a:
            if (r5 >= r4) goto L40
            int r6 = r1.keyAt(r5)
            java.lang.Object r7 = r1.valueAt(r5)
            java.lang.Object r6 = r3.get(r6)
            boolean r6 = j$.util.Objects.equals(r7, r6)
            if (r6 == 0) goto L47
            int r5 = r5 + r0
            goto L2a
        L40:
            int r1 = r8.zze
            int r9 = r9.zze
            if (r1 != r9) goto L47
            return r0
        L47:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpe.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        int i;
        String str = zzeu.zza;
        int i2 = Build.VERSION.SDK_INT;
        SparseArray sparseArray = this.zzd;
        if (i2 >= 31) {
            i = sparseArray.contentHashCode();
        } else {
            int i3 = 17;
            for (int i4 = 0; i4 < sparseArray.size(); i4++) {
                i3 = (((i3 * 31) + sparseArray.keyAt(i4)) * 31) + Objects.hashCode(sparseArray.valueAt(i4));
            }
            i = i3;
        }
        return this.zze + (i * 31);
    }

    public final String toString() {
        String obj = this.zzd.toString();
        return "AudioCapabilities[maxChannelCount=" + this.zze + ", audioProfiles=" + obj + "]";
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0044, code lost:
        if (com.google.android.gms.internal.ads.zzeu.zzH(r9.zzd, 30) == false) goto L57;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00bf A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[RETURN, SYNTHETIC] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair zzb(com.google.android.gms.internal.ads.zzz r10, com.google.android.gms.internal.ads.zze r11) {
        /*
            r9 = this;
            java.lang.String r0 = r10.zzo
            r0.getClass()
            java.lang.String r1 = r10.zzk
            int r1 = com.google.android.gms.internal.ads.zzay.zza(r0, r1)
            com.google.android.gms.internal.ads.zzfyf r2 = com.google.android.gms.internal.ads.zzpe.zzb
            java.lang.Integer r3 = java.lang.Integer.valueOf(r1)
            boolean r2 = r2.containsKey(r3)
            if (r2 != 0) goto L19
            goto Lbf
        L19:
            r2 = 7
            r3 = 8
            r4 = 6
            r5 = 18
            if (r1 != r5) goto L2c
            android.util.SparseArray r1 = r9.zzd
            boolean r1 = com.google.android.gms.internal.ads.zzeu.zzH(r1, r5)
            if (r1 != 0) goto L2b
            r1 = r4
            goto L47
        L2b:
            r1 = r5
        L2c:
            if (r1 != r3) goto L3a
            android.util.SparseArray r1 = r9.zzd
            boolean r1 = com.google.android.gms.internal.ads.zzeu.zzH(r1, r3)
            if (r1 == 0) goto L38
            r1 = r3
            goto L3a
        L38:
            r1 = r2
            goto L47
        L3a:
            r6 = 30
            if (r1 != r6) goto L47
            android.util.SparseArray r7 = r9.zzd
            boolean r6 = com.google.android.gms.internal.ads.zzeu.zzH(r7, r6)
            if (r6 != 0) goto L47
            goto L38
        L47:
            android.util.SparseArray r6 = r9.zzd
            boolean r7 = com.google.android.gms.internal.ads.zzeu.zzH(r6, r1)
            if (r7 == 0) goto Lbf
            java.lang.Object r6 = r6.get(r1)
            com.google.android.gms.internal.ads.zzpd r6 = (com.google.android.gms.internal.ads.zzpd) r6
            r6.getClass()
            int r7 = r10.zzE
            r8 = -1
            if (r7 == r8) goto L7a
            if (r1 != r5) goto L60
            goto L7a
        L60:
            java.lang.String r10 = "audio/vnd.dts.uhd;profile=p2"
            boolean r10 = r0.equals(r10)
            if (r10 == 0) goto L73
            int r10 = android.os.Build.VERSION.SDK_INT
            r11 = 33
            if (r10 >= r11) goto L73
            r10 = 10
            if (r7 <= r10) goto L85
            goto Lbf
        L73:
            boolean r10 = r6.zzb(r7)
            if (r10 != 0) goto L85
            goto Lbf
        L7a:
            int r10 = r10.zzF
            if (r10 != r8) goto L81
            r10 = 48000(0xbb80, float:6.7262E-41)
        L81:
            int r7 = r6.zza(r10, r11)
        L85:
            int r10 = android.os.Build.VERSION.SDK_INT
            r11 = 28
            if (r10 > r11) goto L99
            if (r7 != r2) goto L8e
            goto L9a
        L8e:
            r11 = 3
            if (r7 == r11) goto L97
            r11 = 4
            if (r7 == r11) goto L97
            r11 = 5
            if (r7 != r11) goto L99
        L97:
            r3 = r4
            goto L9a
        L99:
            r3 = r7
        L9a:
            r11 = 26
            if (r10 > r11) goto Lac
            java.lang.String r10 = "fugu"
            java.lang.String r11 = android.os.Build.DEVICE
            boolean r10 = r10.equals(r11)
            if (r10 == 0) goto Lac
            r10 = 1
            if (r3 != r10) goto Lac
            r3 = 2
        Lac:
            int r10 = com.google.android.gms.internal.ads.zzeu.zzi(r3)
            if (r10 == 0) goto Lbf
            java.lang.Integer r11 = java.lang.Integer.valueOf(r1)
            java.lang.Integer r10 = java.lang.Integer.valueOf(r10)
            android.util.Pair r10 = android.util.Pair.create(r11, r10)
            return r10
        Lbf:
            r10 = 0
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpe.zzb(com.google.android.gms.internal.ads.zzz, com.google.android.gms.internal.ads.zze):android.util.Pair");
    }
}
