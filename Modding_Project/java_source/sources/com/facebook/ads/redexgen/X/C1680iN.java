package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.io.encoding.Base64;
import org.json.JSONObject;
/* renamed from: com.facebook.ads.redexgen.X.iN  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1680iN implements MK, MP {
    public static byte[] A0C;
    public static String[] A0D = {"axrzCdv0FVVdCRJ2G5bzsKW6gzdnjkd", "bTiRlDodVRVUvI5asAv5OrmPjdR2kQoL", "0F0kzsbgf", "9OhtkIX5JTQzZAf31yyS0L6RFdCICf7G", "a5UohLNEI7iVSyxaj4LiJgBVL6R7sy1L", "7foeJoxu0TAivWs2uWCvQbVxkZa0ERHH", "EHJaWrfXkxbvFmDXjSXoaOL8kiGJisUm", "EwwWMCMqNj"};
    public static final String A0E;
    public int A00;
    public C1668iB A01;
    public InterfaceC0818Me A02;
    public C0819Mf A03;
    public InterfaceC1031Uo A04;
    public List<C0917Qc> A05;
    public boolean A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public final C1376dL A0A;
    public final String A0B;

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 27);
            if (A0D[0].length() != 31) {
                throw new RuntimeException();
            }
            String[] strArr = A0D;
            strArr[4] = "ypXQoKhxcHRWJrqojmqi5sMtZ7xfThaX";
            strArr[6] = "2LOy6kLjroQDrfbojOuFHdbjLd88ORkx";
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A0C = new byte[]{55, Ascii.DC2, Ascii.ETB, 6, 2, 19, 4, 86, Ascii.ETB, Ascii.SUB, 4, 19, Ascii.ETB, Ascii.DC2, Ascii.SI, 86, Ascii.SUB, Ascii.EM, Ascii.ETB, Ascii.DC2, 19, Ascii.DC2, 86, Ascii.DC2, Ascii.ETB, 2, Ascii.ETB, 2, 45, 40, 34, 42, 97, 41, 32, 49, 49, 36, 47, 36, 37, 97, 46, 47, 97, 45, 46, 34, 42, 50, 34, 51, 36, 36, 47, 97, 32, 37, 87, 120, 125, 119, Byte.MAX_VALUE, 52, 120, 123, 115, 115, 113, 112, 119, 117, 120, 120, 113, 102, SignedBytes.MAX_POWER_OF_TWO, 109, 100, 113, 46, 44, 63, 41, 46, 35, 57, 85, 87, 68, 82, 95, 88, 82, 114, 101, 58, 53, 32, Base64.padSymbol, 34, 49, Ascii.FF, 17, Ascii.RS, Ascii.SI, Ascii.FF, Ascii.ETB, Ascii.DLE, Ascii.VT, 100, Byte.MAX_VALUE, 120, 96, 100, 116, 88, 117, 33, 62, 50, 32};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 7 out of bounds for length 7
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    private void A06(Map<String, String> map, Map<String, String> map2) {
        try {
            new Handler().postDelayed(new C1681iO(this, map2, A03(map)), this.A01.A07() * 1000);
        } catch (Exception unused) {
        }
    }

    static {
        A04();
        A0E = C1680iN.class.getSimpleName();
    }

    public C1680iN(C1376dL c1376dL) {
        this(c1376dL, new C1668iB());
    }

    public C1680iN(C1376dL c1376dL, C1668iB c1668iB) {
        this.A0B = UUID.randomUUID().toString();
        this.A00 = 200;
        this.A01 = c1668iB;
        this.A0A = c1376dL;
    }

    private Map<String, String> A03(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        String A02 = A02(118, 4, 76);
        if (map.containsKey(A02)) {
            hashMap.put(A02, map.get(A02));
        }
        String A022 = A02(102, 8, 100);
        if (map.containsKey(A022)) {
            hashMap.put(A022, map.get(A022));
        }
        return hashMap;
    }

    private void A05(C1668iB c1668iB) {
        if (!this.A06) {
            this.A01 = c1668iB;
            List<C1668iB> A0c = this.A01.A0c();
            if (A0c != null && A0c.size() > 0) {
                int size = A0c.size();
                ArrayList arrayList = new ArrayList(size);
                for (int i = 0; i < size; i++) {
                    C1680iN adapter = new C1680iN(this.A0A);
                    adapter.A05(A0c.get(i));
                    arrayList.add(new C0917Qc(this.A0A, adapter, (TF) null, this.A04));
                }
                this.A05 = arrayList;
            }
            this.A06 = true;
            this.A07 = A07();
            return;
        }
        throw new IllegalStateException(A02(0, 27, 109));
    }

    private boolean A07() {
        return (!(this.A01.A0e() || TextUtils.isEmpty(this.A01.A0V())) || (!TextUtils.isEmpty(this.A01.A0S()) && this.A01.A0e())) && (this.A01.A0F() != null || this.A01.A0e()) && (this.A01.A0E() != null || A8c() == AdPlacementType.NATIVE_BANNER);
    }

    public final int A08() {
        return this.A01.A02();
    }

    public final int A09() {
        return this.A01.A05();
    }

    public final int A0A() {
        int A06 = this.A01.A06();
        if (A06 < 0 || A06 > 100) {
            return 0;
        }
        return A06;
    }

    public final int A0B() {
        return this.A00;
    }

    public final int A0C() {
        return this.A01.A08();
    }

    public final int A0D() {
        return this.A01.A09();
    }

    public final C1668iB A0E() {
        return this.A01;
    }

    public final InterfaceC0818Me A0F() {
        return this.A02;
    }

    public final String A0G() {
        return this.A01.A0Y();
    }

    public final List<C0917Qc> A0H() {
        if (!A0R()) {
            return null;
        }
        return this.A05;
    }

    public final void A0I() {
        if (!this.A09) {
            String A0Z = A0E().A0Z();
            if (A0Z != null) {
                US A0A = this.A0A.A0A();
                String[] strArr = A0D;
                if (strArr[1].charAt(25) != strArr[3].charAt(25)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0D;
                strArr2[4] = "MHNGbcOaMZIG61BxjY7eI95TuiNlx0Gr";
                strArr2[6] = "kvjKrlZQ6RBIZv1Jj5ESJw4vFB55PB3z";
                A0A.AGF(A0Z);
            }
            this.A09 = true;
        }
    }

    public final void A0J() {
        if (this.A05 != null && !this.A05.isEmpty()) {
            for (C0917Qc c0917Qc : this.A05) {
                c0917Qc.unregisterView();
            }
        }
    }

    public final void A0K(InterfaceC0818Me interfaceC0818Me) {
        this.A02 = interfaceC0818Me;
    }

    public final void A0L(C1376dL c1376dL, InterfaceC0818Me interfaceC0818Me, US us, NU nu, InterfaceC1031Uo interfaceC1031Uo) {
        int i;
        this.A02 = interfaceC0818Me;
        this.A04 = interfaceC1031Uo;
        JSONObject A03 = nu.A03();
        TF A01 = nu.A01();
        if (A01 != null) {
            i = A01.A06();
        } else {
            i = 200;
        }
        this.A00 = i;
        A05(AbstractC0820Mg.A00(c1376dL, A03, AbstractC1083Wr.A02(A03, A02(94, 2, 10))));
        if (ML.A06(c1376dL, this, us)) {
            c1376dL.A0F().A4u();
            interfaceC0818Me.AEK(this, V1.A00(AdErrorType.NO_FILL));
            return;
        }
        if (interfaceC0818Me != null) {
            interfaceC0818Me.AEH(this);
        }
        this.A03 = new C0819Mf(c1376dL, this.A0B, this, interfaceC0818Me);
        this.A03.A02();
    }

    public final void A0M(Map<String, String> extraData) {
        N3 n3;
        if (!A0R()) {
            return;
        }
        boolean shouldBlockLockscreenClicks = U7.A20(this.A0A);
        if (shouldBlockLockscreenClicks) {
            boolean shouldBlockLockscreenClicks2 = XQ.A03(extraData);
            if (shouldBlockLockscreenClicks2) {
                Log.e(A0E, A02(27, 31, 90));
                return;
            }
        }
        HashMap hashMap = new HashMap();
        if (extraData != null) {
            hashMap.putAll(extraData);
        }
        boolean shouldBlockLockscreenClicks3 = this.A01.A0e();
        if (shouldBlockLockscreenClicks3) {
            hashMap.put(A02(87, 7, 45), String.valueOf(A0E().A04()));
            hashMap.put(A02(80, 7, 86), String.valueOf(A0E().A03()));
        }
        hashMap.put(A02(70, 10, 15), AdPlacementType.NATIVE.name());
        hashMap.put(A02(110, 8, 10), this.A0B);
        C1376dL c1376dL = this.A0A;
        US A0A = this.A0A.A0A();
        String A7G = this.A01.A7G();
        Uri A0B = this.A01.A0B();
        if (this.A01.A0C() != null) {
            n3 = this.A01.A0C().A21();
        } else {
            n3 = null;
        }
        MH A00 = MI.A00(c1376dL, A0A, A7G, A0B, hashMap, n3);
        ME me2 = ME.A09;
        if (A00 != null) {
            me2 = A00.A0G(null);
        }
        if (me2 != ME.A06) {
            WX.A04(this.A0A, A02(58, 12, 15));
            if (this.A02 != null) {
                this.A02.AEG(this);
            }
        }
    }

    public final void A0N(Map<String, String> extraData) {
        this.A0A.A0A().AAs(this.A01.A7G(), extraData);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0103, code lost:
        if (r4 != false) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A0O(java.util.Map<java.lang.String, java.lang.String> r9) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1680iN.A0O(java.util.Map):void");
    }

    public final boolean A0P() {
        return true;
    }

    public final boolean A0Q() {
        return A0R() && this.A01.A0B() != null;
    }

    public final boolean A0R() {
        return this.A06 && this.A07;
    }

    public final boolean A0S() {
        return this.A01.A0d();
    }

    public final boolean A0T() {
        return U7.A1W(this.A0A) && A0R() && this.A01.A0f();
    }

    public final boolean A0U() {
        return U7.A1W(this.A0A) && A0R() && this.A01.A0g();
    }

    @Override // com.facebook.ads.redexgen.X.MK
    public final String A7G() {
        return this.A01.A7G();
    }

    @Override // com.facebook.ads.redexgen.X.MK
    public final Collection<String> A7h() {
        return A0E().A7h();
    }

    @Override // com.facebook.ads.redexgen.X.MK
    public final MJ A8C() {
        return A0E().A8C();
    }

    public AdPlacementType A8c() {
        return AdPlacementType.NATIVE;
    }

    @Override // com.facebook.ads.redexgen.X.MP
    public final boolean AJa() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.MP
    public final void onDestroy() {
        if (this.A03 != null) {
            C0819Mf c0819Mf = this.A03;
            String[] strArr = A0D;
            if (strArr[4].charAt(16) != strArr[6].charAt(16)) {
                throw new RuntimeException();
            }
            A0D[7] = "xLZjaQWgus";
            c0819Mf.A03();
        }
    }
}
