package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.ads.NativeAd;
/* renamed from: com.facebook.ads.redexgen.X.fm  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1525fm implements InterfaceC1276bi {
    public static String[] A03 = {"nDiRY7f5TVWQOdU6I2mqi9PFa0bJ0VdN", "dUUtDl8unUO3GnPy3lwgtNvfo3F9XuVE", "auWwlwtRUPVHuGctx8NQwZ9fHxwXm1Rl", "TBzFY5XPxTfovmrmdBuO6vWMd6W8Cva2", "LKANgRtOSZEoLNHfrBEFH87LShAEPYie", "UCBlHB7WfBTqWuynAgT0g", "VPae1XPQy5IfYkfssFJoJg5Ye50RabOh", "Wz70ndlImsTWQI2daID25L24SXF8SnWJ"};
    public final /* synthetic */ NativeAd A00;
    public final /* synthetic */ C1520fh A01;
    public final /* synthetic */ C0917Qc A02;

    public C1525fm(C1520fh c1520fh, C0917Qc c0917Qc, NativeAd nativeAd) {
        this.A01 = c1520fh;
        this.A02 = c0917Qc;
        this.A00 = nativeAd;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1276bi
    public final void AAe() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1276bi
    public final void AD8(C5G c5g) {
        new Handler(Looper.getMainLooper()).postDelayed(new C1526fn(this, c5g), 1L);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1276bi
    public final void ADO() {
        C5G c5g;
        C5G c5g2;
        c5g = this.A01.A0A;
        if (c5g != null) {
            c5g2 = this.A01.A0A;
            String[] strArr = A03;
            if (strArr[4].charAt(31) == strArr[0].charAt(31)) {
                throw new RuntimeException();
            }
            A03[1] = "TOeEN4NbTJF6yCcoA7wHZFJASn52oXHD";
            c5g2.A08();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1276bi
    public final void AFS(View view, MotionEvent motionEvent) {
        C1376dL c1376dL;
        boolean A0J;
        XH A1A = this.A02.A1A();
        c1376dL = this.A01.A07;
        A1A.A06(c1376dL, motionEvent, view, view);
        if (motionEvent.getAction() == 1) {
            A0J = this.A01.A0J(this.A00);
            if (!A0J && this.A02.A13() != null) {
                this.A02.A13().onClick(view);
            }
        }
    }
}
