package com.facebook.ads.redexgen.X;

import android.os.Looper;
import com.facebook.ads.androidx.media3.common.Timeline;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.nF  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public interface InterfaceC1964nF extends InterfaceC03282s, CX, ET, C9Q {
    @MetaExoPlayerCustomization(type = {"TEMPORARY"}, value = "Temporary Noop Implementation until we completely migrate")
    public static final InterfaceC1964nF A00 = new InterfaceC1964nF() { // from class: com.facebook.ads.redexgen.X.9S
        @Override // com.facebook.ads.redexgen.X.InterfaceC03282s
        public final /* synthetic */ void ACv(C2010o0 c2010o0) {
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC03282s
        public final /* synthetic */ void ACw(List list) {
        }

        @Override // com.facebook.ads.redexgen.X.CX
        public final /* synthetic */ void AD6(int i, C1908mL c1908mL, CG cg) {
        }

        @Override // com.facebook.ads.redexgen.X.CX
        public final /* synthetic */ void ADw(int i, C1908mL c1908mL, CE ce, CG cg) {
        }

        @Override // com.facebook.ads.redexgen.X.CX
        public final /* synthetic */ void ADy(int i, C1908mL c1908mL, CE ce, CG cg, Object obj, Object obj2) {
        }

        @Override // com.facebook.ads.redexgen.X.CX
        public final /* synthetic */ void AE1(int i, C1908mL c1908mL, CE ce, CG cg, IOException iOException, boolean z) {
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC03282s
        public final /* synthetic */ void AEb(C2045ob c2045ob) {
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC03282s
        public final /* synthetic */ void AEd(C2047od c2047od) {
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC03282s
        public final /* synthetic */ void AEf(boolean z, int i) {
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC03282s
        public final /* synthetic */ void AFB() {
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC03282s
        public final /* synthetic */ void AFQ(Timeline timeline, int i) {
            AbstractC03272r.A00(this, timeline, i);
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC03282s
        public final /* synthetic */ void AFU(C2016o6 c2016o6) {
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC1964nF
        public final void AC5() {
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC1964nF
        public final void AIv(InterfaceC03352z interfaceC03352z, Looper looper) {
        }
    };

    void AC5();

    void AIv(InterfaceC03352z interfaceC03352z, Looper looper);
}
