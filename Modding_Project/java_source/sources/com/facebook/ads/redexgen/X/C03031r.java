package com.facebook.ads.redexgen.X;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.ts.TsExtractor;
import com.facebook.ads.sync.SyncModifiableBundle;
import com.google.common.base.Ascii;
import com.tencent.thumbplayer.tcmedia.core.player.ITPNativePlayerMessageCallback;
import com.vungle.ads.internal.protos.Sdk;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
/* renamed from: com.facebook.ads.redexgen.X.1r  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C03031r implements InterfaceC0544Bn, f7 {
    public static byte[] A0A;
    public static String[] A0B = {"IFN7jxPm5iUVHezzrmxS", "S0eu2eNSRgR", "zAFRaPaLH2briFok", "kmV", "0tQTfhSJ7", "pW9DdJxYDevwUXMYU", "23M9j", "tE9Nw4uJT9AR2sagm"};
    public final SQ A00;
    public final InterfaceC0973Sh A01;
    public final InterfaceC1455ed A02;
    public final InterfaceC1485f8 A03;
    public final C1493fG A04;
    public final InterfaceC1494fH A05;
    public final String A06;
    public final Map<EnumC1481f3, By> A09 = new HashMap();
    public final Map<EnumC1481f3, AbstractC03111z> A08 = new HashMap();
    public final List<InterfaceC1498fL> A07 = new ArrayList();

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 21);
        }
        return new String(copyOfRange);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A04() throws Throwable {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        HashMap hashMap4 = new HashMap();
        synchronized (this) {
            for (By by : this.A09.values()) {
                if (by.AAV()) {
                    hashMap.put(by, EnumC1501fO.A05);
                } else {
                    hashMap.put(by, EnumC1501fO.A04);
                }
            }
            new AtomicReference();
            new AtomicReference();
            Iterator<AbstractC03111z> it = this.A08.values().iterator();
            while (it.hasNext()) {
                it.next();
                InterfaceC1480f2 interfaceC1480f2 = null;
                if (interfaceC1480f2.AAV()) {
                    throw new NullPointerException(A01(349, 20, 51));
                }
            }
            Iterator<InterfaceC1498fL> it2 = this.A07.iterator();
            if (it2.hasNext()) {
                it2.next();
                throw new NullPointerException(A01(TypedValues.CycleType.TYPE_WAVE_OFFSET, 22, 120));
            }
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        AtomicReference atomicReference = new AtomicReference();
        AtomicReference atomicReference2 = new AtomicReference();
        JSONObject A03 = A03(hashMap, hashMap2, hashMap3, hashMap4);
        String.format(Locale.US, A01(TsExtractor.TS_PACKET_SIZE, 33, 57), this.A06, A03.toString(2));
        this.A02.AGE(this.A06, (A01(327, 8, 121) + URLEncoder.encode(A03.toString())).getBytes(), new C0541Bk(this, atomicReference, atomicReference2, countDownLatch));
        while (countDownLatch.getCount() > 0) {
            try {
                countDownLatch.await();
            } catch (InterruptedException unused) {
            }
        }
        synchronized (this) {
            if (atomicReference2.get() != null) {
                throw ((Throwable) atomicReference2.get());
            }
            Set<InterfaceC1497fK> A02 = A02((JSONObject) atomicReference.get());
            HashMap hashMap5 = new HashMap();
            HashMap hashMap6 = new HashMap();
            for (InterfaceC1497fK interfaceC1497fK : A02) {
                interfaceC1497fK.A45(hashMap5, hashMap6);
            }
            this.A03.A6T(A00((JSONObject) atomicReference.get()));
            Iterator<InterfaceC1498fL> it3 = this.A07.iterator();
            if (it3.hasNext()) {
                it3.next();
                throw new NullPointerException(A01(401, 23, 20));
            }
        }
    }

    public static void A05() {
        A0A = new byte[]{102, -81, -71, 102, -72, -85, -71, -70, -72, -81, -87, -70, -85, -86, 116, 102, -103, -79, -81, -74, -74, -81, -76, -83, 102, -71, -65, -76, -87, -43, 4, 4, -76, -3, 2, -76, -10, -11, -9, -1, -5, 6, 3, 9, 2, -8, -62, -67, -37, -24, -24, -23, -18, -102, -35, -20, -33, -37, -18, -33, -102, -19, -33, -20, -16, -33, -20, -102, -36, -17, -24, -34, -26, -33, -102, -15, -29, -18, -30, -102, -24, -23, -24, -89, -19, -33, -20, -16, -33, -20, -102, -23, -15, -24, -33, -34, -102, -36, -17, -24, -34, -26, -33, -102, -61, -66, 123, -104, -85, -104, 87, -89, -87, -90, -102, -100, -86, -86, -96, -91, -98, 87, -90, -89, -85, -96, -90, -91, 87, -118, -81, -73, -94, -83, -86, -91, 97, -77, -90, -89, -77, -90, -76, -87, 97, -75, -86, -82, -90, 123, 97, 102, -91, -34, -11, 7, -80, 3, -11, 2, 6, -11, 2, -67, -1, 7, -2, -11, -12, -80, -14, 5, -2, -12, -4, -11, -80, -13, 2, -11, -15, 4, -11, -12, -54, -80, -75, 3, -95, -57, -68, -79, -74, -64, -67, -68, -73, -56, -81, -62, -73, -67, -68, 110, -64, -77, -65, -61, -77, -63, -62, 110, -62, -67, 110, 115, -63, -120, 88, 115, -63, -34, 4, -7, -18, -13, -3, -6, -7, -12, 5, -20, -1, -12, -6, -7, -85, -3, -16, -2, -5, -6, -7, -2, -16, -59, -107, -80, -2, -43, -5, -16, -27, -22, -12, -15, -16, -21, -4, -29, -10, -21, -15, -16, -94, -12, -9, -16, -94, -24, -29, -21, -18, -25, -26, -67, -94, -24, -15, -12, -27, -21, -16, -23, -94, -21, -16, -94, -89, -26, -94, -11, -25, -27, -15, -16, -26, -11, -28, -9, -16, -26, -18, -25, -11, -61, -49, -50, -44, -59, -40, -44, 124, 121, -116, 121, -90, -87, -82, -89, -91, -78, -80, -78, -87, -82, -76, -2, -17, 7, -6, -3, -17, -14, -53, -116, Byte.MAX_VALUE, Byte.MIN_VALUE, -116, Byte.MAX_VALUE, -115, -126, -10, -23, -11, -7, -23, -9, -8, -70, -83, -71, -67, -79, -70, -83, -69, -101, -63, -74, -85, -119, -74, -84, -102, -83, -69, -83, -68, -69, -82, -68, -71, -72, -73, -68, -82, 0, -14, -1, 3, -14, -1, -36, 4, -5, -14, -15, -49, 2, -5, -15, -7, -14, -48, -1, -14, -18, 1, -14, -15, -100, -94, -105, -116, -111, -101, -104, -105, -110, -93, -118, -99, -110, -104, -105, 111, -110, -105, -110, -100, -111, -114, -115, 0, 6, -5, -16, -11, -1, -4, -5, -10, 7, -18, 1, -10, -4, -5, -32, 1, -18, -1, 1, -14, -15, -11, -30, -13, -24, -26, -11, -32, -13, -26, -25, -13, -26, -12, -23, -32, -12};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private synchronized void A08(Throwable th) {
        Iterator<InterfaceC1498fL> it = this.A07.iterator();
        if (it.hasNext()) {
            it.next();
            new HashMap();
            new HashMap();
            throw new NullPointerException(A01(401, 23, 20));
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.InterfaceC0544Bn
    public final synchronized InterfaceC1480f2 A5M(EnumC1481f3 enumC1481f3) {
        if (enumC1481f3.A03() == EnumC1483f5.A04) {
            if (this.A09.containsKey(enumC1481f3)) {
                return this.A09.get(enumC1481f3);
            }
            By by = new By(enumC1481f3);
            this.A09.put(enumC1481f3, by);
            Iterator<InterfaceC1498fL> it = this.A07.iterator();
            if (it.hasNext()) {
                it.next();
                throw new NullPointerException(A01(377, 24, 120));
            }
            String.format(Locale.US, A01(ITPNativePlayerMessageCallback.INFO_LONG1_CLIP_EOS, 35, 123), enumC1481f3);
            return by;
        }
        throw new IllegalArgumentException(A01(47, 59, 101));
    }

    static {
        A05();
    }

    public C03031r(SQ sq, InterfaceC0973Sh interfaceC0973Sh, InterfaceC1455ed interfaceC1455ed, String str, InterfaceC1494fH interfaceC1494fH, C1493fG c1493fG, InterfaceC1484f6 interfaceC1484f6) {
        this.A00 = sq;
        this.A01 = interfaceC0973Sh;
        this.A02 = interfaceC1455ed;
        this.A06 = str;
        this.A05 = interfaceC1494fH;
        this.A04 = c1493fG;
        this.A03 = interfaceC1484f6.A56(this);
    }

    public static int A00(JSONObject jSONObject) throws JSONException {
        int time = jSONObject.getJSONObject(A01(335, 7, 5)).getInt(A01(446, 16, 108));
        if (time > 0) {
            return time;
        }
        throw new JSONException(String.format(Locale.US, A01(129, 24, 44), Integer.valueOf(time)));
    }

    private Set<InterfaceC1497fK> A02(JSONObject jSONObject) throws JSONException {
        HashSet hashSet = new HashSet();
        JSONObject jSONObject2 = jSONObject.getJSONObject(A01(369, 8, 52));
        JSONObject data = jSONObject.getJSONObject(A01(298, 7, 109));
        Iterator<By> it = this.A09.values().iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            String[] strArr = A0B;
            if (strArr[6].length() != strArr[0].length()) {
                String[] strArr2 = A0B;
                strArr2[1] = "GiFNWD8Qhge";
                strArr2[3] = "8JT";
                if (hasNext) {
                    final By next = it.next();
                    switch (C1496fJ.A01[EnumC1502fP.A00(jSONObject2.getString(next.A87().A04())).ordinal()]) {
                        case 1:
                            final JSONObject fingerprint = data.getJSONObject(next.A87().A04()).getJSONObject(A01(312, 4, 3));
                            final JSONObject responseObject = data.getJSONObject(next.A87().A04()).optJSONObject(A01(316, 11, 43));
                            hashSet.add(new AbstractC0539Bi(next, fingerprint, responseObject) { // from class: com.facebook.ads.redexgen.X.1u
                                public final JSONObject A00;
                                public final JSONObject A01;

                                {
                                    EnumC1502fP enumC1502fP = EnumC1502fP.A03;
                                    this.A00 = fingerprint;
                                    this.A01 = responseObject;
                                }

                                @Override // com.facebook.ads.redexgen.X.AbstractC0539Bi, com.facebook.ads.redexgen.X.InterfaceC1497fK
                                public final void A45(Map<InterfaceC1480f2, EnumC1502fP> map, Map<SyncModifiableBundle, EnumC1489fC> map2) {
                                    super.A00.A03(this.A00, this.A01);
                                    super.A45(map, map2);
                                }
                            });
                            break;
                        case 2:
                            hashSet.add(new AbstractC0539Bi(next) { // from class: com.facebook.ads.redexgen.X.1t
                                {
                                    EnumC1502fP enumC1502fP = EnumC1502fP.A04;
                                }
                            });
                            break;
                        default:
                            throw new AssertionError();
                    }
                } else {
                    Iterator<AbstractC03111z> it2 = this.A08.values().iterator();
                    while (it2.hasNext()) {
                        it2.next();
                        InterfaceC1480f2 interfaceC1480f2 = null;
                        switch (C1496fJ.A00[EnumC1489fC.A00(jSONObject2.getString(interfaceC1480f2.A87().A04())).ordinal()]) {
                            case 1:
                                hashSet.add(new AbstractC0540Bj(null) { // from class: com.facebook.ads.redexgen.X.1v
                                    {
                                        EnumC1489fC enumC1489fC = EnumC1489fC.A03;
                                    }
                                });
                                break;
                            case 2:
                                hashSet.add(new AbstractC0540Bj(null) { // from class: com.facebook.ads.redexgen.X.1s
                                    public static byte[] A00;

                                    static {
                                        A01();
                                    }

                                    public static String A00(int i, int i2, int i3) {
                                        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
                                        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
                                            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 102);
                                        }
                                        return new String(copyOfRange);
                                    }

                                    public static void A01() {
                                        A00 = new byte[]{48, 34, 49, Ascii.SI, 34, 46, 50, 38, 47, 34, 48, Ascii.DLE, 54, 43, 32};
                                    }

                                    {
                                        EnumC1489fC enumC1489fC = EnumC1489fC.A04;
                                    }

                                    @Override // com.facebook.ads.redexgen.X.AbstractC0540Bj, com.facebook.ads.redexgen.X.InterfaceC1497fK
                                    public final void A45(Map<InterfaceC1480f2, EnumC1502fP> map, Map<SyncModifiableBundle, EnumC1489fC> map2) {
                                        throw new NullPointerException(A00(0, 15, 87));
                                    }
                                });
                                break;
                            default:
                                throw new AssertionError();
                        }
                    }
                    return hashSet;
                }
            } else {
                throw new RuntimeException();
            }
        }
    }

    private JSONObject A03(Map<InterfaceC1480f2, EnumC1501fO> map, Map<SyncModifiableBundle, EnumC1488fB> map2, Map<SyncModifiableBundle, JSONObject> clientBundleData, Map<SyncModifiableBundle, JSONObject> clientBundleFingerprint) throws JSONException {
        String A01;
        JSONObject syncRequest = new JSONObject();
        for (Map.Entry<InterfaceC1480f2, EnumC1501fO> entry : map.entrySet()) {
            syncRequest.put(entry.getKey().A87().A04(), entry.getValue().A03());
        }
        for (Map.Entry<SyncModifiableBundle, EnumC1488fB> entry2 : map2.entrySet()) {
            entry2.getKey();
            InterfaceC1480f2 interfaceC1480f2 = null;
            String A04 = interfaceC1480f2.A87().A04();
            String A03 = entry2.getValue().A03();
            String[] strArr = A0B;
            if (strArr[1].length() == strArr[3].length()) {
                throw new RuntimeException();
            }
            A0B[4] = "GjL9vB6wh";
            syncRequest.put(A04, A03);
        }
        JSONObject jSONObject = new JSONObject();
        Iterator<Map.Entry<InterfaceC1480f2, EnumC1501fO>> it = map.entrySet().iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            A01 = A01(316, 11, 43);
            if (!hasNext) {
                break;
            }
            Map.Entry<InterfaceC1480f2, EnumC1501fO> next = it.next();
            if (next.getValue() == EnumC1501fO.A05) {
                JSONObject updateData = new JSONObject();
                InterfaceC1480f2 key = next.getKey();
                jSONObject.put(key.A87().A04(), updateData);
                if (next.getKey().A87().A05()) {
                    JSONObject request = key.A80();
                    updateData.put(A01, request);
                } else {
                    updateData.put(A01, JSONObject.NULL);
                }
                EnumC1481f3 A87 = key.A87();
                String[] strArr2 = A0B;
                if (strArr2[7].length() != strArr2[2].length()) {
                    String[] strArr3 = A0B;
                    strArr3[1] = "cfjTgROdu8b";
                    strArr3[3] = "qIs";
                    jSONObject.put(A87.A04(), updateData);
                } else {
                    A0B[4] = "vaTQWmMwm";
                    jSONObject.put(A87.A04(), updateData);
                }
            }
        }
        for (Map.Entry<SyncModifiableBundle, EnumC1488fB> entry3 : map2.entrySet()) {
            JSONObject updateData2 = new JSONObject();
            InterfaceC1480f2 key2 = entry3.getKey();
            JSONObject request2 = clientBundleFingerprint.get(entry3.getKey());
            updateData2.put(A01, request2);
            if (entry3.getValue() == EnumC1488fB.A05) {
                String A012 = A01(312, 4, 3);
                JSONObject request3 = clientBundleData.get(key2);
                updateData2.put(A012, request3);
                jSONObject.put(key2.A87().A04(), updateData2);
            } else {
                jSONObject.put(key2.A87().A04(), updateData2);
            }
        }
        JSONObject jSONObject2 = new JSONObject();
        for (Map.Entry<String, String> entry4 : this.A05.A7r().entrySet()) {
            if (entry4.getValue() != null) {
                jSONObject2.put(entry4.getKey(), entry4.getValue());
            }
        }
        JSONObject bundleData = new JSONObject();
        bundleData.put(A01(342, 7, 111), syncRequest);
        bundleData.put(A01(298, 7, 109), jSONObject);
        bundleData.put(A01(305, 7, 75), jSONObject2);
        return bundleData;
    }

    public static void A06(String str, AtomicReference<JSONObject> atomicReference, AtomicReference<Throwable> atomicReference2) {
        String.format(Locale.US, A01(Sdk.SDKError.Reason.AD_LOAD_FAIL_RETRY_AFTER_VALUE, 28, 118), str);
        try {
            atomicReference.set((JSONObject) new JSONTokener(str).nextValue());
        } catch (ClassCastException | JSONException e) {
            atomicReference2.set(e);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0544Bn, com.facebook.ads.redexgen.X.SW
    public final void A6V() {
        this.A03.A6U();
    }

    @Override // com.facebook.ads.redexgen.X.f7
    public final void AI4() {
        if (this.A01.AAY()) {
            String str = A01(106, 23, 34) + this.A01.A7c().A07() + A01(0, 29, 49);
            A08(new C1500fN());
            return;
        }
        try {
            if (!U7.A21(this.A00) || this.A00.A04().AAL()) {
                A04();
                return;
            }
            throw new IllegalStateException(A01(29, 18, 127));
        } catch (Throwable th) {
            String.format(Locale.US, A01(249, 49, 109), Integer.valueOf(this.A04.A01()));
            A08(th);
            this.A03.A6T(this.A04.A01());
        }
    }
}
