package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Di  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0589Di extends AbstractC0997Tf<C03393d> {
    public static String[] A01 = {"Xm4oO1fgaoMOjj45N8r00LATVp4gHrYG", "MO5WiyOQHdAIBAUWSCIdsXDipyRYP8jB", "8ZD7midsUGLLHTawsvmUwyHXKE63ocNK", "eXsxAyUW", "", "KTVY2IhXiCn688zdyYvQYy9fTV", "AuZpLEz4ubgydEKdqdaVeIvdhtRZUWrW", "O3ESmZOEeO27LGblO6LyKeoijHa02l1o"};
    public final /* synthetic */ C03443i A00;

    public C0589Di(C03443i c03443i) {
        this.A00 = c03443i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC0997Tf
    /* renamed from: A00 */
    public final void A03(C03393d c03393d) {
        int A00 = c03393d.A00();
        int duration = c03393d.A01();
        int currentPosition = this.A00.A00;
        if (currentPosition > 0 && A00 == duration) {
            int currentPosition2 = this.A00.A00;
            if (duration > currentPosition2) {
                return;
            }
        }
        int currentPosition3 = A00 + 500;
        if (duration < currentPosition3) {
            if (duration == 0) {
                C03443i c03443i = this.A00;
                int currentPosition4 = this.A00.A00;
                c03443i.A0j(currentPosition4);
                return;
            }
            this.A00.A0j(duration);
            return;
        }
        C03443i c03443i2 = this.A00;
        String[] strArr = A01;
        String str = strArr[7];
        String str2 = strArr[0];
        int duration2 = str.charAt(6);
        int currentPosition5 = str2.charAt(6);
        if (duration2 == currentPosition5) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[5] = "eYEuq0G9XeIp1YNIhTPdTiyuyz";
        strArr2[3] = "ZD2QUH1g";
        c03443i2.A0j(A00);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0997Tf
    public final Class<C03393d> A01() {
        return C03393d.class;
    }
}
