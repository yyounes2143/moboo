package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.regex.Pattern;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzalh {
    private static final Pattern zzd = Pattern.compile("\\s+");
    private static final zzfyh zze = zzfyh.zzp("auto", "none");
    private static final zzfyh zzf = zzfyh.zzq(TtmlNode.TEXT_EMPHASIS_MARK_DOT, TtmlNode.TEXT_EMPHASIS_MARK_SESAME, TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE);
    private static final zzfyh zzg = zzfyh.zzp(TtmlNode.TEXT_EMPHASIS_MARK_FILLED, "open");
    private static final zzfyh zzh = zzfyh.zzq(TtmlNode.ANNOTATION_POSITION_AFTER, TtmlNode.ANNOTATION_POSITION_BEFORE, TtmlNode.ANNOTATION_POSITION_OUTSIDE);
    public final int zza;
    public final int zzb;
    public final int zzc;

    private zzalh(int i, int i2, int i3) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
    }

    @Nullable
    public static zzalh zza(@Nullable String str) {
        boolean z;
        int i;
        int i2;
        if (str != null) {
            String zza = zzfui.zza(str.trim());
            if (!zza.isEmpty()) {
                zzfyh zzm = zzfyh.zzm(TextUtils.split(zza, zzd));
                String str2 = (String) zzfyi.zza(zzgae.zzb(zzh, zzm), TtmlNode.ANNOTATION_POSITION_OUTSIDE);
                int hashCode = str2.hashCode();
                int i3 = -1;
                int i4 = 0;
                if (hashCode != -1106037339) {
                    if (hashCode == 92734940 && str2.equals(TtmlNode.ANNOTATION_POSITION_AFTER)) {
                        z = false;
                    }
                    z = true;
                } else {
                    if (str2.equals(TtmlNode.ANNOTATION_POSITION_OUTSIDE)) {
                        z = true;
                    }
                    z = true;
                }
                if (z) {
                    if (!z) {
                        i = 1;
                    } else {
                        i = -2;
                    }
                } else {
                    i = 2;
                }
                zzgac zzb = zzgae.zzb(zze, zzm);
                if (!zzb.isEmpty()) {
                    String str3 = (String) zzb.iterator().next();
                    if (str3.hashCode() == 3387192 && str3.equals("none")) {
                        i3 = 0;
                    }
                } else {
                    zzgac zzb2 = zzgae.zzb(zzg, zzm);
                    zzgac zzb3 = zzgae.zzb(zzf, zzm);
                    if (!zzb2.isEmpty() || !zzb3.isEmpty()) {
                        String str4 = (String) zzfyi.zza(zzb2, TtmlNode.TEXT_EMPHASIS_MARK_FILLED);
                        if (str4.hashCode() == 3417674 && str4.equals("open")) {
                            i2 = 2;
                        } else {
                            i2 = 1;
                        }
                        String str5 = (String) zzfyi.zza(zzb3, TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE);
                        int hashCode2 = str5.hashCode();
                        if (hashCode2 != -905816648) {
                            if (hashCode2 == 99657 && str5.equals(TtmlNode.TEXT_EMPHASIS_MARK_DOT)) {
                                i3 = 0;
                            }
                        } else if (str5.equals(TtmlNode.TEXT_EMPHASIS_MARK_SESAME)) {
                            i3 = 1;
                        }
                        if (i3 != 0) {
                            if (i3 != 1) {
                                i4 = i2;
                                i3 = 1;
                            } else {
                                i3 = 3;
                            }
                        } else {
                            i3 = 2;
                        }
                        i4 = i2;
                    }
                }
                return new zzalh(i3, i4, i);
            }
            return null;
        }
        return null;
    }
}
