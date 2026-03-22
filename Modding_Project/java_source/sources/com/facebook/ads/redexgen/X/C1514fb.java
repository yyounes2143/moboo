package com.facebook.ads.redexgen.X;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.ads.NativeAd;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.fb  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1514fb implements S7 {
    public static String[] A02 = {"XqTxzibSN1zAjaiM9LtVSqsxSG", "xqN5bEwB0Nihon7KSuA", "FVkOY26I4teb9ftOLmk9A45ZS3TS2DIY", "wzTDEcMKt7VvW9W8eKeIWksTnJ0tE", "iGRCr9OHUARnshCNCmKS3XNzEIA09VDm", "MJLgHxMJm3Fw", ExifInterface.LATITUDE_SOUTH, "m77T1m6dtAhGTcgbhkAg"};
    public final List<C1680iN> A00;
    public final /* synthetic */ C1513fa A01;

    public C1514fb(C1513fa c1513fa, List<C1680iN> list) {
        this.A01 = c1513fa;
        this.A00 = list;
    }

    private void A00() {
        RO ro;
        RO ro2;
        RO ro3;
        C1376dL c1376dL;
        RO ro4;
        RO ro5;
        C1376dL c1376dL2;
        ro = this.A01.A00;
        ro.A05(true);
        ro2 = this.A01.A00;
        ro2.A02();
        ro3 = this.A01.A00;
        ro3.A03(0);
        Iterator<C1680iN> it = this.A00.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            if (A02[4].charAt(3) == 'E') {
                throw new RuntimeException();
            }
            A02[0] = "GKxyFdZ7ADxfGJ";
            if (hasNext) {
                c1376dL = this.A01.A01;
                S3 A0K = C0917Qc.A0K();
                ro4 = this.A01.A00;
                C0917Qc c0917Qc = new C0917Qc(c1376dL, it.next(), null, A0K, ro4.A01());
                if (c0917Qc.A0z() != null && c0917Qc.A0z().A0F() != null) {
                    ((AbstractC1618hL) c0917Qc.A0z().A0F()).A00(c0917Qc);
                }
                ro5 = this.A01.A00;
                c1376dL2 = this.A01.A01;
                ro5.A04(new NativeAd(c1376dL2, c0917Qc));
            } else {
                AbstractC1052Vk.A00(new C1515fc(this));
                return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.S7
    public final void ACh() {
        A00();
    }

    @Override // com.facebook.ads.redexgen.X.S7
    public final void ACq() {
        A00();
    }
}
