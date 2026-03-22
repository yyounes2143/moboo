package com.tencent.thumbplayer.tcmedia.c.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.tencent.thumbplayer.tcmedia.api.resourceloader.ITPAssetResourceLoadingDataRequest;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import com.tencent.thumbplayer.tcmedia.utils.m;
import java.io.RandomAccessFile;
/* loaded from: classes6.dex */
public class c implements ITPAssetResourceLoadingDataRequest {

    /* renamed from: a  reason: collision with root package name */
    private static String f10561a = "TPAssetResourceLoadingDataRequest";
    private long b;
    private long c;
    private boolean d;
    private long e;
    private long f;
    private long g;
    private int h;
    private b i;
    private m j = new m();
    private String k;
    private RandomAccessFile l;

    /* loaded from: classes6.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        long f10562a;
        byte[] b;

        private a() {
        }
    }

    /* loaded from: classes6.dex */
    public class b extends Handler {
        public b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 256) {
                return;
            }
            a aVar = (a) message.obj;
            long j = aVar.f10562a;
            byte[] bArr = aVar.b;
            int i = message.arg1;
            c cVar = c.this;
            if (!cVar.a(j, bArr, cVar.k)) {
                TPLogUtil.e(c.f10561a, "write data failed");
                return;
            }
            c.this.j.writeLock().lock();
            c.this.e = i + j;
            c.this.j.writeLock().unlock();
            String str = c.f10561a;
            TPLogUtil.i(str, "write data from " + j + " , with dataLength" + i);
        }
    }

    public c(long j, long j2, boolean z) {
        this.b = j;
        this.f = j;
        this.e = j;
        this.c = j2;
        this.d = z;
    }

    public int a() {
        return this.h;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.resourceloader.ITPAssetResourceLoadingDataRequest
    public long getCurrentOffset() {
        this.j.readLock().lock();
        long j = this.f;
        this.j.readLock().unlock();
        return j;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.resourceloader.ITPAssetResourceLoadingDataRequest
    public long getRequestedLength() {
        return this.c;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.resourceloader.ITPAssetResourceLoadingDataRequest
    public long getRequestedOffset() {
        return this.b;
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.resourceloader.ITPAssetResourceLoadingDataRequest
    public void notifyDataReady(long j, long j2) {
        long j3 = j2 + j;
        long j4 = this.b;
        if (j3 > this.c + j4) {
            TPLogUtil.e(f10561a, "data exceed the max request offset");
            return;
        }
        if (j < j4) {
            TPLogUtil.w(f10561a, "the notify data offset is less than request offset");
        }
        if (j3 < this.f) {
            TPLogUtil.e(f10561a, "data not reach current offset");
            return;
        }
        this.j.writeLock().lock();
        this.f = j3;
        this.e = j3;
        this.j.writeLock().unlock();
    }

    @Override // com.tencent.thumbplayer.tcmedia.api.resourceloader.ITPAssetResourceLoadingDataRequest
    public void respondWithData(byte[] bArr) {
        if (this.g > this.c) {
            TPLogUtil.i(f10561a, "respond full data");
            return;
        }
        int length = bArr.length;
        a aVar = new a();
        aVar.f10562a = this.f;
        aVar.b = bArr;
        a(256, length, 0, aVar);
        String str = f10561a;
        TPLogUtil.i(str, "respond data from:" + this.f + ", dataLength:" + length);
        this.j.writeLock().lock();
        long j = (long) length;
        this.f = this.f + j;
        this.g = this.g + j;
        this.j.writeLock().unlock();
    }

    public int a(long j) {
        this.j.readLock().lock();
        long j2 = this.e;
        this.j.readLock().unlock();
        if (j >= j2) {
            return -1;
        }
        if (j < this.b) {
            TPLogUtil.e(f10561a, "Offset less than mRequestedOffset");
            return -1;
        }
        return (int) (j2 - j);
    }

    public void b() {
        b bVar = this.i;
        if (bVar != null) {
            bVar.removeCallbacksAndMessages(null);
            this.i = null;
        }
    }

    public void a(int i) {
        this.h = i;
    }

    private void a(int i, int i2, int i3, Object obj) {
        b bVar = this.i;
        if (bVar != null) {
            Message obtainMessage = bVar.obtainMessage();
            obtainMessage.what = i;
            obtainMessage.arg1 = i2;
            obtainMessage.arg2 = i3;
            obtainMessage.obj = obj;
            this.i.sendMessage(obtainMessage);
        }
    }

    public void a(Looper looper) {
        this.i = new b(looper);
    }

    public void a(String str) {
        this.k = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002d, code lost:
        if (r4 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002f, code lost:
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0033, code lost:
        com.tencent.thumbplayer.tcmedia.utils.TPLogUtil.e(com.tencent.thumbplayer.tcmedia.c.a.c.f10561a, "fail to close mRandomAccessFile");
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0042, code lost:
        if (r4 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(long r4, byte[] r6, java.lang.String r7) {
        /*
            r3 = this;
            java.lang.String r0 = "fail to close mRandomAccessFile"
            java.io.RandomAccessFile r1 = new java.io.RandomAccessFile     // Catch: java.lang.Throwable -> L22 java.io.IOException -> L24 java.io.FileNotFoundException -> L39
            java.lang.String r2 = "rw"
            r1.<init>(r7, r2)     // Catch: java.lang.Throwable -> L22 java.io.IOException -> L24 java.io.FileNotFoundException -> L39
            r3.l = r1     // Catch: java.lang.Throwable -> L22 java.io.IOException -> L24 java.io.FileNotFoundException -> L39
            r1.seek(r4)     // Catch: java.lang.Throwable -> L22 java.io.IOException -> L24 java.io.FileNotFoundException -> L39
            java.io.RandomAccessFile r4 = r3.l     // Catch: java.lang.Throwable -> L22 java.io.IOException -> L24 java.io.FileNotFoundException -> L39
            r4.write(r6)     // Catch: java.lang.Throwable -> L22 java.io.IOException -> L24 java.io.FileNotFoundException -> L39
            java.io.RandomAccessFile r4 = r3.l
            if (r4 == 0) goto L20
            r4.close()     // Catch: java.io.IOException -> L1b
            goto L20
        L1b:
            java.lang.String r4 = com.tencent.thumbplayer.tcmedia.c.a.c.f10561a
            com.tencent.thumbplayer.tcmedia.utils.TPLogUtil.e(r4, r0)
        L20:
            r4 = 1
            goto L46
        L22:
            r4 = move-exception
            goto L47
        L24:
            java.lang.String r4 = com.tencent.thumbplayer.tcmedia.c.a.c.f10561a     // Catch: java.lang.Throwable -> L22
            java.lang.String r5 = "fail to write data"
            com.tencent.thumbplayer.tcmedia.utils.TPLogUtil.e(r4, r5)     // Catch: java.lang.Throwable -> L22
            java.io.RandomAccessFile r4 = r3.l
            if (r4 == 0) goto L45
        L2f:
            r4.close()     // Catch: java.io.IOException -> L33
            goto L45
        L33:
            java.lang.String r4 = com.tencent.thumbplayer.tcmedia.c.a.c.f10561a
            com.tencent.thumbplayer.tcmedia.utils.TPLogUtil.e(r4, r0)
            goto L45
        L39:
            java.lang.String r4 = com.tencent.thumbplayer.tcmedia.c.a.c.f10561a     // Catch: java.lang.Throwable -> L22
            java.lang.String r5 = "file not found"
            com.tencent.thumbplayer.tcmedia.utils.TPLogUtil.e(r4, r5)     // Catch: java.lang.Throwable -> L22
            java.io.RandomAccessFile r4 = r3.l
            if (r4 == 0) goto L45
            goto L2f
        L45:
            r4 = 0
        L46:
            return r4
        L47:
            java.io.RandomAccessFile r5 = r3.l
            if (r5 == 0) goto L54
            r5.close()     // Catch: java.io.IOException -> L4f
            goto L54
        L4f:
            java.lang.String r5 = com.tencent.thumbplayer.tcmedia.c.a.c.f10561a
            com.tencent.thumbplayer.tcmedia.utils.TPLogUtil.e(r5, r0)
        L54:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tcmedia.c.a.c.a(long, byte[], java.lang.String):boolean");
    }
}
