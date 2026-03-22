package com.tencent.thumbplayer.tcmedia.c.a;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.util.TimeUtils;
import com.tencent.thumbplayer.tcmedia.api.resourceloader.ITPAssetResourceLoaderListener;
import com.tencent.thumbplayer.tcmedia.api.resourceloader.TPAssetResourceLoadingContentInformationRequest;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.utils.TPDLFileSystem;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.utils.TPDLIOUtil;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import com.tencent.thumbplayer.tcmedia.utils.o;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
/* loaded from: classes6.dex */
public class b implements com.tencent.thumbplayer.tcmedia.c.a.a {

    /* renamed from: a  reason: collision with root package name */
    private static String f10558a = "TPAssetResourceLoader";
    private Context b;
    private ITPAssetResourceLoaderListener c;
    private long d = 0;
    private String e = "";
    private String f = "";
    private String g = "";
    private String h = ".mp4";
    private int i = 0;
    private ArrayList<d> j = new ArrayList<>();
    private TPAssetResourceLoadingContentInformationRequest k;
    private HandlerThread l;
    private HandlerThread m;
    private a n;

    /* loaded from: classes6.dex */
    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        private void a(long j, long j2, String str, int i, int i2) {
            d dVar = new d(j, j2, i2, a(j, j2));
            dVar.a(b.this.m.getLooper());
            dVar.a(b.this.b(i, str));
            dVar.a(b.this.k);
            if (b.this.c.shouldWaitForLoadingOfRequestedResource(dVar)) {
                b.this.a(dVar);
                TPLogUtil.i(b.f10558a, "add to mLoadingRequests, requestId: ".concat(String.valueOf(i2)));
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            String str = b.f10558a;
            TPLogUtil.d(str, "mCallbackForResourceLoaderHandler msg : " + message.what);
            if (b.this.c != null) {
                int i = message.what;
                if (i != 256) {
                    if (i != 257) {
                        return;
                    }
                    TPLogUtil.i(b.f10558a, "stop read data");
                    b.this.b(message.arg1);
                    return;
                }
                TPLogUtil.i(b.f10558a, "start read data");
                C0222b c0222b = (C0222b) message.obj;
                long j = c0222b.f10560a;
                long j2 = c0222b.b;
                String str2 = c0222b.c;
                int i2 = message.arg1;
                int i3 = message.arg2;
                String str3 = b.f10558a;
                TPLogUtil.i(str3, "start read data, requestStart: " + j + " requestEnd:" + j2 + " requestId:" + i3);
                long a2 = b.this.a(j, j2);
                if (a2 <= 0) {
                    TPLogUtil.e(b.f10558a, "requestLength invalid, check requestStart and requestEnd");
                } else {
                    a(j, a2, str2, i2, i3);
                }
            }
        }

        private boolean a(long j, long j2) {
            boolean z = b.this.d > 0 && j2 + j >= b.this.d;
            if (z) {
                b.this.f();
            }
            return z;
        }
    }

    /* renamed from: com.tencent.thumbplayer.tcmedia.c.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static class C0222b {

        /* renamed from: a  reason: collision with root package name */
        long f10560a;
        long b;
        String c;

        private C0222b() {
        }
    }

    public b(Context context, Looper looper) {
        this.b = context;
        if (looper == null) {
            HandlerThread b = o.a().b();
            this.l = b;
            looper = b.getLooper();
        }
        this.n = new a(looper);
        this.m = o.a().a("TPAssetResourceLoader-dataWriteThread");
    }

    private String e() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void f() {
        try {
            ArrayList<d> arrayList = this.j;
            if (arrayList != null) {
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    d dVar = arrayList.get(i);
                    i++;
                    d dVar2 = dVar;
                    dVar2.b();
                    this.c.didCancelLoadingRequest(dVar2);
                }
                this.j.clear();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a.a
    public int a(int i, String str, int i2) {
        if (this.c == null) {
            TPLogUtil.e(f10558a, "listener not set");
            return 0;
        }
        a(257, i2, 0, (Object) null);
        return 0;
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a.a
    public int b(int i, String str, long j, long j2) {
        String str2 = f10558a;
        TPLogUtil.d(str2, "read data, offset:" + j + ", length:" + j2);
        int min = (int) Math.min((long) a(j), j2);
        if (min <= 0) {
            return -1;
        }
        String str3 = f10558a;
        TPLogUtil.d(str3, "on read data, fileId: " + i + " readOffset: " + j + " readLength:" + j2 + " readyLength:" + min);
        return min;
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a.a
    public int a(int i, String str, long j, long j2) {
        if (this.c == null) {
            TPLogUtil.e(f10558a, "listener not set");
            return 0;
        }
        String str2 = f10558a;
        TPLogUtil.i(str2, "onStartReadData, fileId:" + i + ", fileKey:" + str + ", requestStart:" + j + ", requestEnd:" + j2);
        int i2 = this.i + 1;
        C0222b c0222b = new C0222b();
        c0222b.f10560a = j;
        c0222b.b = j2;
        c0222b.c = str;
        a(256, i, i2, c0222b);
        this.i = i2;
        return i2;
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a.a
    public String c(int i, String str) {
        return this.e;
    }

    private synchronized int a(long j) {
        if (this.j == null) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < this.j.size(); i2++) {
            i = Math.max(i, this.j.get(i2).a(j));
        }
        return i;
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a.a
    public String b(int i, String str) {
        String e = e();
        return !TextUtils.isEmpty(e) ? e : a(this.b, i);
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a.a
    public void c() {
        TPLogUtil.i(f10558a, "release start");
        b();
        o.a().a(this.l, this.n);
        o.a().a(this.m, (Handler) null);
        this.l = null;
        this.m = null;
        this.n = null;
        this.j = null;
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a.a
    public long a(int i, String str) {
        return this.d;
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a.a
    public void b() {
        TPLogUtil.i(f10558a, "reset start");
        f();
        this.d = 0L;
        this.e = "";
        this.f = "";
        if (!TextUtils.isEmpty(this.g)) {
            try {
                new File(this.g).deleteOnExit();
                this.g = "";
            } catch (Exception e) {
                String str = f10558a;
                TPLogUtil.e(str, "reset, delete cache file has exception:" + e.toString());
            }
        }
        a aVar = this.n;
        if (aVar != null) {
            aVar.removeCallbacksAndMessages(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long a(long j, long j2) {
        if (j2 > 0) {
            return j2 - j;
        }
        long j3 = this.d;
        if (j3 <= 0) {
            return 536870912L;
        }
        return j3 - j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        d a2 = a(i);
        if (a2 != null) {
            a2.b();
            TPLogUtil.i(f10558a, "handleStopReadData, cancel the loading request with id ".concat(String.valueOf(i)));
            b(a2);
            this.c.didCancelLoadingRequest(a2);
            return;
        }
        String str = f10558a;
        TPLogUtil.e(str, "TPAssetLoader can't find the request " + i + " with current loading requests");
    }

    private synchronized void b(d dVar) {
        ArrayList<d> arrayList = this.j;
        if (arrayList != null) {
            arrayList.remove(dVar);
        }
    }

    private synchronized d a(int i) {
        if (this.j == null) {
            return null;
        }
        for (int i2 = 0; i2 < this.j.size(); i2++) {
            d dVar = this.j.get(i2);
            if (dVar.getLoadingDataRequest().a() == i) {
                return dVar;
            }
        }
        return null;
    }

    private String a(Context context, int i) {
        if (TextUtils.isEmpty(this.g)) {
            String format = new SimpleDateFormat(TimeUtils.YYYY_MM_DD).format(new Date());
            File externalCacheFile = TPDLFileSystem.getExternalCacheFile(context, "resourceLoader", format + "-" + i + this.h);
            TPDLIOUtil.createFile(externalCacheFile);
            this.g = externalCacheFile.getAbsolutePath();
        }
        return this.g;
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a.a
    public void a() {
        if (this.c == null) {
            TPLogUtil.e(f10558a, "listener not set");
            return;
        }
        TPAssetResourceLoadingContentInformationRequest tPAssetResourceLoadingContentInformationRequest = new TPAssetResourceLoadingContentInformationRequest();
        this.k = tPAssetResourceLoadingContentInformationRequest;
        this.c.fillInContentInformation(tPAssetResourceLoadingContentInformationRequest);
        TPAssetResourceLoadingContentInformationRequest tPAssetResourceLoadingContentInformationRequest2 = this.k;
        this.e = tPAssetResourceLoadingContentInformationRequest2.contentType;
        this.d = tPAssetResourceLoadingContentInformationRequest2.dataTotalSize;
        this.f = tPAssetResourceLoadingContentInformationRequest2.dataFilePath;
        String str = f10558a;
        TPLogUtil.i(str, "proxy start, mDataTotalSize: " + this.d + " businessPath:" + this.f);
    }

    private void a(int i, int i2, int i3, Object obj) {
        a aVar = this.n;
        if (aVar != null) {
            Message obtainMessage = aVar.obtainMessage();
            obtainMessage.what = i;
            obtainMessage.arg1 = i2;
            obtainMessage.arg2 = i3;
            obtainMessage.obj = obj;
            this.n.sendMessage(obtainMessage);
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.c.a.a
    public void a(ITPAssetResourceLoaderListener iTPAssetResourceLoaderListener) {
        this.c = iTPAssetResourceLoaderListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(d dVar) {
        ArrayList<d> arrayList = this.j;
        if (arrayList != null) {
            arrayList.add(dVar);
        }
    }
}
