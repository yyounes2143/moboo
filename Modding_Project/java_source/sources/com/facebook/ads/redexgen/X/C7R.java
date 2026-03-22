package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;
import java.util.Comparator;
import java.util.TreeSet;
import kotlin.io.encoding.Base64;
@MetaExoPlayerCustomization("Exo version is final but in Meta code HeroLeastRecentlyUsedCacheEvictor extends this")
/* renamed from: com.facebook.ads.redexgen.X.7R  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C7R implements InterfaceC1713iw {
    public static byte[] A03;
    public static String[] A04 = {"jtWHdC1JS00IQCACyTEvOJEMPrvoo3Ob", "eCCt1HwS4IToKXyi1WzLFL1R4PlgsDM4", "yXgy4dLxj37Ni2Ba12KifyhgeRBIXCXp", "5p7nRT0g4n3u8StY", "28aCkGMBHBRgMUJ0i4knnGO", "XAmyqmpuCXa4X38XkweYk7F1knbiAlXr", "krkFdswQPRExlipS29WIEjh8hbH7SBjj", "jb"};
    @MetaExoPlayerCustomization("Exo version is private but in Meta code HeroLeastRecentlyUsedCacheEvictor extends this")
    public long A00;
    @MetaExoPlayerCustomization("Exo version is private but in Meta code HeroLeastRecentlyUsedCacheEvictor extends this")
    public final long A01;
    @MetaExoPlayerCustomization("Exo version is private but in Meta code HeroLeastRecentlyUsedCacheEvictor extends this")
    public final TreeSet<C0811Lx> A02 = new TreeSet<>(new Comparator() { // from class: com.facebook.ads.redexgen.X.MB
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return C7R.A00((C0811Lx) obj, (C0811Lx) obj2);
        }
    });

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 28);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A03 = new byte[]{46, Base64.padSymbol, 34, 40, 63, 8, 42, 40, 35, 46};
    }

    static {
        A02();
    }

    public C7R(long j) {
        this.A01 = j;
    }

    @MetaExoPlayerCustomization("Exo version is private but in Meta code HeroLeastRecentlyUsedCacheEvictor extends this")
    public static int A00(C0811Lx c0811Lx, C0811Lx c0811Lx2) {
        if (c0811Lx.A00 - c0811Lx2.A00 == 0) {
            return c0811Lx.compareTo(c0811Lx2);
        }
        return c0811Lx.A00 < c0811Lx2.A00 ? -1 : 1;
    }

    private void A03(InterfaceC0801Ln interfaceC0801Ln, long j) {
        C4S.A02(A01(0, 10, 87));
        while (this.A00 + j > this.A01 && !this.A02.isEmpty()) {
            C0811Lx first = this.A02.first();
            if (A04[1].charAt(10) != 'T') {
                throw new RuntimeException();
            }
            A04[4] = "DjrmhsDHxGC2SVigK1e7Rl2";
            interfaceC0801Ln.AHl(first);
        }
        C4S.A00();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0800Lm
    public final void AFJ(InterfaceC0801Ln interfaceC0801Ln, C0811Lx c0811Lx) {
        this.A02.add(c0811Lx);
        this.A00 += c0811Lx.A01;
        A03(interfaceC0801Ln, 0L);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0800Lm
    public final void AFK(InterfaceC0801Ln interfaceC0801Ln, C0811Lx c0811Lx) {
        this.A02.remove(c0811Lx);
        this.A00 -= c0811Lx.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0800Lm
    public final void AFL(InterfaceC0801Ln interfaceC0801Ln, C0811Lx c0811Lx, C0811Lx c0811Lx2) {
        AFK(interfaceC0801Ln, c0811Lx);
        AFJ(interfaceC0801Ln, c0811Lx2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1713iw
    public final void AFM(InterfaceC0801Ln interfaceC0801Ln, String str, long j, long j2) {
        if (j2 != -1) {
            A03(interfaceC0801Ln, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1713iw
    public final boolean AHz() {
        return true;
    }
}
