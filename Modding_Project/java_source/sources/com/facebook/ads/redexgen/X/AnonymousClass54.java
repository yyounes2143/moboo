package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import com.google.common.base.Ascii;
import java.util.Arrays;
import org.json.JSONObject;
/* renamed from: com.facebook.ads.redexgen.X.54  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public class AnonymousClass54 extends DV {
    public static byte[] A01;
    public final /* synthetic */ C1279bl A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 8);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{19, 4, 4, Ascii.EM, 4};
    }

    public AnonymousClass54(C1279bl c1279bl) {
        this.A00 = c1279bl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC0997Tf
    /* renamed from: A02 */
    public final void A03(DW dw) {
        InterfaceC1278bk interfaceC1278bk;
        JSONObject A03;
        new Handler(Looper.getMainLooper()).post(new RunnableC1277bj(this));
        interfaceC1278bk = this.A00.A0B;
        A03 = this.A00.A03();
        interfaceC1278bk.AFh(A00(0, 5, 126), A03);
    }
}
