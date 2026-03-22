package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Looper;
import android.view.accessibility.CaptioningManager;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import kotlin.io.encoding.Base64;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: com.facebook.ads.redexgen.X.35 */
/* loaded from: assets/audience_network.dex */
public class AnonymousClass35 {
    public static byte[] A0R;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08;
    public int A09;
    public int A0A;
    public int A0B;
    public int A0C;
    public int A0D;
    public int A0E;
    public int A0F;
    public HashMap<C2027oH, C2022oC> A0G;
    public HashSet<Integer> A0H;
    public List<String> A0I;
    public List<String> A0J;
    public List<String> A0K;
    @MetaExoPlayerCustomization(type = {"FEATURE_LOGIC"}, value = "D56211926, support language flag in video track")
    public List<String> A0L;
    public List<String> A0M;
    public boolean A0N;
    public boolean A0O;
    public boolean A0P;
    public boolean A0Q;

    static {
        A0P();
    }

    public static String A0H(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0R, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 34);
        }
        return new String(copyOfRange);
    }

    public static void A0P() {
        A0R = new byte[]{63, Base64.padSymbol, 44, 40, 53, 51, 50, 53, 50, 59};
    }

    @Deprecated
    public AnonymousClass35() {
        this.A06 = Integer.MAX_VALUE;
        this.A05 = Integer.MAX_VALUE;
        this.A04 = Integer.MAX_VALUE;
        this.A03 = Integer.MAX_VALUE;
        this.A0F = Integer.MAX_VALUE;
        this.A0E = Integer.MAX_VALUE;
        this.A0Q = true;
        this.A0M = C1658i1.A01();
        this.A0D = 0;
        this.A0L = C1658i1.A01();
        this.A0I = C1658i1.A01();
        this.A0B = 0;
        this.A02 = Integer.MAX_VALUE;
        this.A01 = Integer.MAX_VALUE;
        this.A0J = C1658i1.A01();
        this.A0K = C1658i1.A01();
        this.A0C = 0;
        this.A00 = 0;
        this.A0P = false;
        this.A0O = false;
        this.A0N = false;
        this.A0G = new HashMap<>();
        this.A0H = new HashSet<>();
    }

    public AnonymousClass35(Context context) {
        this();
        A0n(context);
        A0o(context, true);
    }

    public AnonymousClass35(Bundle bundle) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        String str14;
        String str15;
        String str16;
        String str17;
        String str18;
        String str19;
        String str20;
        String str21;
        String str22;
        String str23;
        String str24;
        List A01;
        String str25;
        str = C2020oA.A0e;
        this.A06 = bundle.getInt(str, C2020oA.A0U.A06);
        str2 = C2020oA.A0d;
        this.A05 = bundle.getInt(str2, C2020oA.A0U.A05);
        str3 = C2020oA.A0c;
        this.A04 = bundle.getInt(str3, C2020oA.A0U.A04);
        str4 = C2020oA.A0b;
        this.A03 = bundle.getInt(str4, C2020oA.A0U.A03);
        str5 = C2020oA.A0i;
        this.A0A = bundle.getInt(str5, C2020oA.A0U.A0A);
        str6 = C2020oA.A0h;
        this.A09 = bundle.getInt(str6, C2020oA.A0U.A09);
        this.A08 = bundle.getInt(C2020oA.A0n(), C2020oA.A0U.A08);
        str7 = C2020oA.A0f;
        this.A07 = bundle.getInt(str7, C2020oA.A0U.A07);
        str8 = C2020oA.A0v;
        this.A0F = bundle.getInt(str8, C2020oA.A0U.A0F);
        str9 = C2020oA.A0t;
        this.A0E = bundle.getInt(str9, C2020oA.A0U.A0E);
        str10 = C2020oA.A0u;
        this.A0Q = bundle.getBoolean(str10, C2020oA.A0U.A0Q);
        str11 = C2020oA.A0p;
        this.A0M = AbstractC0517Am.A07((String[]) AbstractC1718j1.A00(bundle.getStringArray(str11), new String[0]));
        str12 = C2020oA.A0q;
        this.A0D = bundle.getInt(str12, C2020oA.A0U.A0D);
        str13 = C2020oA.A0o;
        String[] preferredVideoLanguages1 = (String[]) AbstractC1718j1.A00(bundle.getStringArray(str13), new String[0]);
        this.A0L = A0G(preferredVideoLanguages1);
        str14 = C2020oA.A0j;
        String[] stringArray = bundle.getStringArray(str14);
        String[] preferredVideoLanguages12 = new String[0];
        this.A0I = A0G((String[]) AbstractC1718j1.A00(stringArray, preferredVideoLanguages12));
        str15 = C2020oA.A0l;
        this.A0B = bundle.getInt(str15, C2020oA.A0U.A0B);
        str16 = C2020oA.A0a;
        this.A02 = bundle.getInt(str16, C2020oA.A0U.A02);
        str17 = C2020oA.A0Z;
        this.A01 = bundle.getInt(str17, C2020oA.A0U.A01);
        str18 = C2020oA.A0k;
        String[] stringArray2 = bundle.getStringArray(str18);
        String[] preferredVideoLanguages13 = new String[0];
        this.A0J = AbstractC0517Am.A07((String[]) AbstractC1718j1.A00(stringArray2, preferredVideoLanguages13));
        str19 = C2020oA.A0m;
        String[] stringArray3 = bundle.getStringArray(str19);
        String[] preferredVideoLanguages14 = new String[0];
        this.A0K = A0G((String[]) AbstractC1718j1.A00(stringArray3, preferredVideoLanguages14));
        str20 = C2020oA.A0n;
        this.A0C = bundle.getInt(str20, C2020oA.A0U.A0C);
        this.A00 = bundle.getInt(C2020oA.A0e(), C2020oA.A0U.A00);
        str21 = C2020oA.A0s;
        this.A0P = bundle.getBoolean(str21, C2020oA.A0U.A0P);
        str22 = C2020oA.A0X;
        this.A0O = bundle.getBoolean(str22, C2020oA.A0U.A0O);
        str23 = C2020oA.A0W;
        this.A0N = bundle.getBoolean(str23, C2020oA.A0U.A0N);
        str24 = C2020oA.A0r;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(str24);
        if (parcelableArrayList == null) {
            A01 = C1658i1.A01();
        } else {
            A01 = C3S.A01(C2022oC.A02, parcelableArrayList);
        }
        this.A0G = new HashMap<>();
        for (int i = 0; i < A01.size(); i++) {
            C2022oC c2022oC = (C2022oC) A01.get(i);
            this.A0G.put(c2022oC.A00, c2022oC);
        }
        str25 = C2020oA.A0V;
        int[] iArr = (int[]) AbstractC1718j1.A00(bundle.getIntArray(str25), new int[0]);
        this.A0H = new HashSet<>();
        for (int i2 : iArr) {
            this.A0H.add(Integer.valueOf(i2));
        }
    }

    public AnonymousClass35(C2020oA c2020oA) {
        A0R(c2020oA);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1h != com.google.common.collect.ImmutableList$Builder<java.lang.String> */
    public static AbstractC0517Am<String> A0G(String[] strArr) {
        C02931h A01 = AbstractC0517Am.A01();
        for (String str : (String[]) C3M.A01(strArr)) {
            A01.A04(AbstractC03624a.A0k((String) C3M.A01(str)));
        }
        return A01.A05();
    }

    private void A0Q(Context context) {
        CaptioningManager captioningManager;
        if ((AbstractC03624a.A02 < 23 && Looper.myLooper() == null) || (captioningManager = (CaptioningManager) context.getSystemService(A0H(0, 10, 126))) == null || !captioningManager.isEnabled()) {
            return;
        }
        this.A0C = 1088;
        Locale locale = captioningManager.getLocale();
        if (locale != null) {
            this.A0K = AbstractC0517Am.A04(AbstractC03624a.A0o(locale));
        }
    }

    @EnsuresNonNull({"preferredVideoMimeTypes", "preferredAudioLanguages", "preferredAudioMimeTypes", "preferredTextLanguages", "overrides", "disabledTrackTypes"})
    private void A0R(C2020oA c2020oA) {
        this.A06 = c2020oA.A06;
        this.A05 = c2020oA.A05;
        this.A04 = c2020oA.A04;
        this.A03 = c2020oA.A03;
        this.A0A = c2020oA.A0A;
        this.A09 = c2020oA.A09;
        this.A08 = c2020oA.A08;
        this.A07 = c2020oA.A07;
        this.A0F = c2020oA.A0F;
        this.A0E = c2020oA.A0E;
        this.A0Q = c2020oA.A0Q;
        this.A0M = c2020oA.A0M;
        this.A0D = c2020oA.A0D;
        this.A0L = c2020oA.A0L;
        this.A0I = c2020oA.A0I;
        this.A0B = c2020oA.A0B;
        this.A02 = c2020oA.A02;
        this.A01 = c2020oA.A01;
        this.A0J = c2020oA.A0J;
        this.A0K = c2020oA.A0K;
        this.A0C = c2020oA.A0C;
        this.A00 = c2020oA.A00;
        this.A0P = c2020oA.A0P;
        this.A0O = c2020oA.A0O;
        this.A0N = c2020oA.A0N;
        this.A0H = new HashSet<>(c2020oA.A0H);
        this.A0G = new HashMap<>(c2020oA.A0G);
    }

    public AnonymousClass35 A0W(C2020oA c2020oA) {
        A0R(c2020oA);
        return this;
    }

    public AnonymousClass35 A0m(int i, int i2, boolean z) {
        this.A0F = i;
        this.A0E = i2;
        this.A0Q = z;
        return this;
    }

    public AnonymousClass35 A0n(Context context) {
        if (AbstractC03624a.A02 >= 19) {
            A0Q(context);
        }
        return this;
    }

    public AnonymousClass35 A0o(Context context, boolean z) {
        Point viewportSize = AbstractC03624a.A0W(context);
        return A0m(viewportSize.x, viewportSize.y, z);
    }

    public C2020oA A0p() {
        return new C2020oA(this);
    }
}
