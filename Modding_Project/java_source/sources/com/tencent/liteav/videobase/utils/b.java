package com.tencent.liteav.videobase.utils;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaFormat;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public int f10395a;
    public int b;
    public String c;
    public boolean d;
    private a e;
    private MediaFormat f;
    private JSONArray g;

    /* compiled from: Proguard */
    /* renamed from: com.tencent.liteav.videobase.utils.b$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10396a;

        static {
            int[] iArr = new int[a.values().length];
            f10396a = iArr;
            try {
                iArr[a.kQcom.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10396a[a.kHisi.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10396a[a.kExynos.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f10396a[a.kAmlogic.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum a {
        kUnKnown,
        kQcom,
        kHisi,
        kExynos,
        kAmlogic
    }

    public b() {
        a aVar = a.kUnKnown;
        this.e = aVar;
        a b = b();
        if (b == aVar) {
            String lowerCase = LiteavSystemInfo.getHardware().toLowerCase();
            if (lowerCase.contains("qcom")) {
                aVar = a.kQcom;
            } else if (lowerCase.contains("kirin")) {
                aVar = a.kHisi;
            } else if (lowerCase.contains("exynos")) {
                aVar = a.kExynos;
            }
            b = aVar;
        }
        this.e = b;
        LiteavLog.i("HardwareDecoderMediaFormatBuilder", "hardware name:" + LiteavSystemInfo.getHardware().toLowerCase() + " chip brand:" + this.e);
    }

    private static a b() {
        if (LiteavSystemInfo.getSystemOSVersionInt() < 21) {
            return a.kUnKnown;
        }
        try {
            for (MediaCodecInfo mediaCodecInfo : new MediaCodecList(0).getCodecInfos()) {
                String lowerCase = mediaCodecInfo.getName().toLowerCase();
                if (lowerCase.contains("hisi")) {
                    return a.kHisi;
                }
                if (lowerCase.contains("amlogic")) {
                    return a.kAmlogic;
                }
                if (!lowerCase.contains("qcom") && !lowerCase.contains("qti")) {
                }
                return a.kQcom;
            }
        } catch (Throwable th) {
            LiteavLog.e("HardwareDecoderMediaFormatBuilder", "get mediacode info error:" + th.getMessage());
        }
        return a.kUnKnown;
    }

    public final MediaFormat a() {
        MediaFormat mediaFormat = this.f;
        if (mediaFormat == null) {
            mediaFormat = MediaFormat.createVideoFormat(this.c, this.f10395a, this.b);
        }
        if (this.d) {
            int systemOSVersionInt = LiteavSystemInfo.getSystemOSVersionInt();
            if (systemOSVersionInt >= 30 && this.e != a.kHisi) {
                mediaFormat.setInteger("low-latency", 1);
            }
            if (systemOSVersionInt > 23 || !LiteavSystemInfo.getManufacturer().toLowerCase().contains("xiaomi")) {
                mediaFormat.setInteger("vdec-lowlatency", 1);
            }
            if (systemOSVersionInt >= 26) {
                int i = AnonymousClass1.f10396a[this.e.ordinal()];
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i == 4) {
                                mediaFormat.setInteger("vendor.low-latency.enable", 1);
                            }
                        } else {
                            mediaFormat.setInteger("vendor.rtc-ext-dec-low-latency.enable", 1);
                        }
                    } else {
                        mediaFormat.setInteger("vendor.hisi-ext-low-latency-video-dec.video-scene-for-low-latency-req", 1);
                        mediaFormat.setInteger("vendor.hisi-ext-low-latency-video-dec.video-scene-for-low-latency-rdy", -1);
                    }
                } else {
                    mediaFormat.setInteger("vendor.qti-ext-dec-low-latency.enable", 1);
                    mediaFormat.setInteger("vendor.qti-ext-dec-picture-order.enable", 1);
                }
            }
        }
        JSONArray jSONArray = this.g;
        if (jSONArray != null) {
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                try {
                    JSONObject jSONObject = jSONArray.getJSONObject(i2);
                    mediaFormat.setInteger(jSONObject.optString("key"), jSONObject.optInt("value"));
                } catch (JSONException e) {
                    LiteavLog.e("HardwareDecoderMediaFormatBuilder", "set MediaCodec device related params failed.", e);
                }
            }
        }
        return mediaFormat;
    }
}
