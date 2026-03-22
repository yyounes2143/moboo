package com.tencent.thumbplayer.tcmedia.a;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import com.tencent.thumbplayer.tcmedia.core.common.TPVideoFrame;
import java.nio.ByteBuffer;
/* loaded from: classes6.dex */
public class a {
    public static Bitmap a(TPVideoFrame tPVideoFrame) {
        int i;
        int i2;
        byte[][] bArr = tPVideoFrame.data;
        if (bArr.length <= 0 || (i = tPVideoFrame.height) == 0 || (i2 = tPVideoFrame.width) == 0) {
            return null;
        }
        return a(bArr[0], i2, i, tPVideoFrame.rotation);
    }

    public static Bitmap[] b(TPVideoFrame tPVideoFrame) {
        byte[][] bArr = tPVideoFrame.data;
        if (bArr.length > 0 && tPVideoFrame.height != 0 && tPVideoFrame.width != 0) {
            Bitmap[] bitmapArr = new Bitmap[bArr.length];
            int i = 0;
            while (true) {
                byte[][] bArr2 = tPVideoFrame.data;
                if (i < bArr2.length) {
                    bitmapArr[i] = a(bArr2[i], tPVideoFrame.width, tPVideoFrame.height, tPVideoFrame.rotation);
                    i++;
                } else {
                    return bitmapArr;
                }
            }
        } else {
            return null;
        }
    }

    private static Bitmap a(byte[] bArr, int i, int i2, int i3) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.RGB_565);
        createBitmap.copyPixelsFromBuffer(wrap);
        if (i3 != 0) {
            Matrix matrix = new Matrix();
            matrix.postRotate(i3);
            return Bitmap.createBitmap(createBitmap, 0, 0, createBitmap.getWidth(), createBitmap.getHeight(), matrix, true);
        }
        return createBitmap;
    }
}
