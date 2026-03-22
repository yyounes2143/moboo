package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdPlacementType;
/* loaded from: assets/audience_network.dex */
public final class MU {
    public static MP A00;

    public final MP A00(final C1376dL c1376dL, AdPlacementType adPlacementType) {
        if (A00 != null) {
            return A00;
        }
        switch (MT.A00[adPlacementType.ordinal()]) {
            case 1:
                return new C7L();
            case 2:
                if (U7.A1N(c1376dL)) {
                    return new C7K();
                }
                return new C7L();
            case 3:
                return new C1685iS();
            case 4:
                return new C1680iN(c1376dL);
            case 5:
                return new C1680iN(c1376dL) { // from class: com.facebook.ads.redexgen.X.7F
                    @Override // com.facebook.ads.redexgen.X.C1680iN, com.facebook.ads.redexgen.X.MP
                    public final AdPlacementType A8c() {
                        return AdPlacementType.NATIVE_BANNER;
                    }
                };
            case 6:
                return new C7B();
            default:
                return null;
        }
    }
}
