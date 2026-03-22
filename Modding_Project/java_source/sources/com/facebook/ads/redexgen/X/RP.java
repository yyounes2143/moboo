package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public class RP extends AsyncTask<RR, Void, Drawable> {
    public static byte[] A03;
    public static String[] A04 = {"Er5x4Nf8UA9tVLePD2EX", "DtYF9X90t5u", "I941X6fzqWLmgCmjxes", "iBgQ7OI2DFUGAw4NUel9vSUdaaiAzSqO", "QcmiodlDN7oY3kgnmckrDpvdiERsjn9V", "z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "KLyCCmbDECCjA8c7XM6gY8wQDdZdMwfW"};
    public final RQ A00;
    public final C1376dL A01;
    public final boolean A02;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private final Drawable A00(RR... rrArr) {
        if (!AbstractC1053Vl.A02(this) && rrArr != null) {
            try {
                if (rrArr.length >= 1) {
                    String str = rrArr[0].A01;
                    String str2 = rrArr[0].A00;
                    Bitmap A0O = new SF(this.A01).A0O(str, -1, -1);
                    if (A0O != null) {
                        return C0917Qc.A05(this.A01, A0O, this.A02, str2);
                    }
                    return null;
                }
            } catch (Throwable th) {
                AbstractC1053Vl.A00(th, this);
                return null;
            }
        }
        return null;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            int i5 = (copyOfRange[i4] ^ i3) ^ 36;
            String[] strArr = A04;
            if (strArr[6].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            A04[2] = "XzO4PGfz9rpTObXE3Krp6";
            copyOfRange[i4] = (byte) i5;
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A03 = new byte[]{71, 69, 78, 69, 82, 73, 67};
    }

    static {
        A02();
    }

    public RP(C1376dL c1376dL, RQ rq, boolean z) {
        this.A01 = c1376dL;
        this.A00 = rq;
        this.A02 = z;
    }

    public /* synthetic */ RP(C1376dL c1376dL, RQ rq, boolean z, C1512fZ c1512fZ) {
        this(c1376dL, rq, z);
    }

    private final void A03(Drawable drawable) {
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            this.A00.ADU(drawable);
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ Drawable doInBackground(RR[] rrArr) {
        if (AbstractC1053Vl.A02(this)) {
            return null;
        }
        try {
            return A00(rrArr);
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(Drawable drawable) {
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            A03(drawable);
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
