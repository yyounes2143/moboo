package com.facebook.ads.redexgen.X;

import androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection;
import com.facebook.ads.androidx.media3.common.Timeline;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
/* renamed from: com.facebook.ads.redexgen.X.m5  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1893m5 implements EA {
    public static String[] A0B = {"ziZaTeBfSFNnIBcgtlZExnB4uOVj2q5B", "5IZt5NWgPCitKNTqtiA", "aLHVXVzU6ljMUMq9dZgrDfQ8JzHl8MF", "mvLcqO7QF6VGSUKAdCZC8bhhp8aLucng", "FQUZNhR4lN6thgMMBkcdaTgoY6ZzypcM", "72R8UBsha86AOqtb805OpiOBiH7oe8El", "AjNBccUrYW9zDFgtuo7TyJwkSvkBJU7y", "GkSBWsvGG5dBFRJxqtw9GV4lDtiTWOM"};
    public final float A00;
    public final float A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final long A07;
    public final C3T A08;
    @MetaExoPlayerCustomization("This is no longer set in the constructor")
    public final EU A09;
    public final int A0A;

    public C1893m5() {
        this(10000, 25000, 25000, 0.75f);
    }

    public C1893m5(int i, int i2, int i3, float f) {
        this(null, -1, i, i2, i3, AdaptiveTrackSelection.DEFAULT_MAX_WIDTH_TO_DISCARD, AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, f, 0.75f, 2000L, C3T.A00);
    }

    public C1893m5(EU eu) {
        this(eu, -1, 10000, 25000, 25000, AdaptiveTrackSelection.DEFAULT_MAX_WIDTH_TO_DISCARD, AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, 0.75f, 0.75f, 2000L, C3T.A00);
    }

    public C1893m5(@MetaExoPlayerCustomization("No longer set through factory") EU eu, @MetaExoPlayerCustomization("Non standard variable; used in oculus") int i, @MetaExoPlayerCustomization("Removed from upstream") int i2, int i3, int i4, int i5, int i6, float f, float f2, long j, C3T c3t) {
        this.A09 = eu;
        this.A0A = i;
        this.A05 = i2;
        this.A02 = i3;
        this.A06 = i4;
        this.A04 = i5;
        this.A03 = i6;
        this.A00 = f;
        this.A01 = f2;
        this.A07 = j;
        this.A08 = c3t;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Am != com.google.common.collect.ImmutableList<com.facebook.ads.androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection$AdaptationCheckpoint> */
    private final C02840y A00(C2027oH c2027oH, int[] iArr, int i, EU eu, AbstractC0517Am<C0599Ds> abstractC0517Am) {
        return new C02840y(c2027oH, iArr, i, eu, this.A0A, this.A05, this.A02, this.A06, this.A04, this.A03, this.A00, this.A01, this.A07, abstractC0517Am, this.A08);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Am != com.google.common.collect.ImmutableList<com.google.common.collect.ImmutableList<com.facebook.ads.androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection$AdaptationCheckpoint>> */
    @Override // com.facebook.ads.redexgen.X.EA
    public final InterfaceC1871lj[] A5T(E9[] e9Arr, EU eu, C1908mL c1908mL, Timeline timeline) {
        InterfaceC1871lj A00;
        AbstractC0517Am A01 = C02840y.A01(e9Arr);
        InterfaceC1871lj[] interfaceC1871ljArr = new InterfaceC1871lj[e9Arr.length];
        for (int i = 0; i < e9Arr.length; i++) {
            E9 e9 = e9Arr[i];
            if (e9 != null && e9.A02.length != 0) {
                int length = e9.A02.length;
                if (A0B[3].length() != 32) {
                    throw new RuntimeException();
                }
                A0B[1] = "4JDRhnBkti3";
                if (length == 1) {
                    A00 = new C02830x(e9.A01, e9.A02[0], e9.A00);
                } else {
                    A00 = A00(e9.A01, e9.A02, e9.A00, eu, (AbstractC0517Am) A01.get(i));
                }
                interfaceC1871ljArr[i] = A00;
            }
        }
        return interfaceC1871ljArr;
    }
}
