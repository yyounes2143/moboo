package com.tencent.thumbplayer.tcmedia.a;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.tencent.thumbplayer.tcmedia.core.common.TPGeneralError;
import com.tencent.thumbplayer.tcmedia.core.common.TPSystemInfo;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import com.tencent.thumbplayer.tcmedia.utils.o;
import java.io.FileDescriptor;
import java.util.HashMap;
/* loaded from: classes6.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static b f10483a;
    private HandlerThread b;
    private c c;
    private MediaMetadataRetriever d = null;
    private int e = 0;

    /* loaded from: classes6.dex */
    public interface a {
        void a(int i, int i2);

        void a(int i, long j, int i2, int i3, Bitmap bitmap, long j2);
    }

    /* renamed from: com.tencent.thumbplayer.tcmedia.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static class C0216b {

        /* renamed from: a  reason: collision with root package name */
        protected a f10484a;
        private int b;
        private String c;
        private FileDescriptor d;
        private AssetFileDescriptor e;
        private long f;
        private int g;
        private int h;

        private C0216b() {
        }
    }

    /* loaded from: classes6.dex */
    public class c extends Handler {
        public c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i != 1) {
                if (i != 2) {
                    TPLogUtil.i("TPSysPlayerImageCapture", "eventHandler unknow msg");
                    return;
                }
                TPLogUtil.i("TPSysPlayerImageCapture", "eventHandler EV_STOP_CAP_IMAGE");
                if (b.this.d != null) {
                    b.this.d.release();
                    b.this.d = null;
                    return;
                }
                return;
            }
            TPLogUtil.i("TPSysPlayerImageCapture", "eventHandler EV_CAP_IMAGE");
            b.this.a((C0216b) message.obj);
        }
    }

    /* loaded from: classes6.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        public String f10486a;
        public FileDescriptor b;
        public AssetFileDescriptor c;
        public long d;
        public int e;
        public int f;
    }

    private b() {
        this.b = null;
        this.c = null;
        try {
            this.b = o.a().b();
            this.c = new c(this.b.getLooper());
        } catch (Throwable th) {
            TPLogUtil.e("TPSysPlayerImageCapture", th);
            this.c = new c(Looper.getMainLooper());
        }
    }

    public int a(d dVar, a aVar) {
        TPLogUtil.i("TPSysPlayerImageCapture", "captureImageWithPosition, position: " + dVar.d + ", width: " + dVar.e + ", height: " + dVar.f);
        this.e = this.e + 1;
        if (!TextUtils.isEmpty(TPSystemInfo.getDeviceName()) && TPSystemInfo.getDeviceName().equals("Lenovo+K900")) {
            TPLogUtil.i("TPSysPlayerImageCapture", "captureImageWithPosition, Lenovo+K900 no incompatible");
            return -1;
        }
        C0216b c0216b = new C0216b();
        c0216b.b = this.e;
        c0216b.d = dVar.b;
        c0216b.e = dVar.c;
        c0216b.c = dVar.f10486a;
        c0216b.f = dVar.d;
        c0216b.g = dVar.e;
        c0216b.h = dVar.f;
        c0216b.f10484a = aVar;
        Message message = new Message();
        message.what = 1;
        message.obj = c0216b;
        if (!this.c.sendMessage(message)) {
            TPLogUtil.i("TPSysPlayerImageCapture", "captureImageWithPosition, send msg failed ");
        }
        return this.e;
    }

    public static synchronized b a() {
        b bVar;
        synchronized (b.class) {
            try {
                if (f10483a == null) {
                    f10483a = new b();
                }
                bVar = f10483a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(C0216b c0216b) {
        MediaMetadataRetriever mediaMetadataRetriever;
        try {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                MediaMetadataRetriever mediaMetadataRetriever2 = this.d;
                if (mediaMetadataRetriever2 != null) {
                    mediaMetadataRetriever2.release();
                    this.d = null;
                }
                this.d = new MediaMetadataRetriever();
                if (c0216b.d == null) {
                    if (c0216b.e != null) {
                        this.d.setDataSource(c0216b.e.getFileDescriptor(), c0216b.e.getStartOffset(), c0216b.e.getLength());
                    } else {
                        this.d.setDataSource(c0216b.c, new HashMap());
                    }
                } else {
                    this.d.setDataSource(c0216b.d);
                }
                Bitmap frameAtTime = this.d.getFrameAtTime(c0216b.f * 1000, 2);
                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                if (frameAtTime != null) {
                    c0216b.f10484a.a(c0216b.b, c0216b.f, c0216b.g, c0216b.h, frameAtTime, currentTimeMillis2);
                } else {
                    c0216b.f10484a.a(c0216b.b, TPGeneralError.FAILED);
                }
                mediaMetadataRetriever = this.d;
                if (mediaMetadataRetriever == null) {
                    return;
                }
            } catch (Exception e) {
                TPLogUtil.e("TPSysPlayerImageCapture", e);
                TPLogUtil.e("TPSysPlayerImageCapture", "doRealCaptureImage, Exception: " + e.toString());
                c0216b.f10484a.a(c0216b.b, TPGeneralError.FAILED);
                mediaMetadataRetriever = this.d;
                if (mediaMetadataRetriever == null) {
                    return;
                }
            }
            mediaMetadataRetriever.release();
            this.d = null;
        } catch (Throwable th) {
            MediaMetadataRetriever mediaMetadataRetriever3 = this.d;
            if (mediaMetadataRetriever3 != null) {
                mediaMetadataRetriever3.release();
                this.d = null;
            }
            throw th;
        }
    }
}
