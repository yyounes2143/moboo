package com.tencent.rtmp.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.rtmp.TXImageSprite;
import j$.util.DesugarCollections;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class a extends TXImageSprite {

    /* renamed from: a  reason: collision with root package name */
    private final BitmapFactory.Options f10460a;
    private HandlerThread b;
    private Handler c;
    private List<c> d;
    private Map<String, BitmapRegionDecoder> e;

    /* compiled from: Proguard */
    /* renamed from: com.tencent.rtmp.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static class RunnableC0215a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<a> f10462a;
        private String b;

        public RunnableC0215a(a aVar, String str) {
            this.f10462a = new WeakReference<>(aVar);
            this.b = str;
        }

        private static float a(String str) {
            String str2;
            String str3;
            String[] split = str.split(":");
            if (split.length == 3) {
                String str4 = split[0];
                str3 = split[1];
                str2 = split[2];
            } else if (split.length == 2) {
                str3 = split[0];
                str2 = split[1];
            } else if (split.length == 1) {
                str2 = split[0];
                str3 = null;
            } else {
                str2 = null;
                str3 = null;
            }
            float f = 0.0f;
            if (str3 != null) {
                f = 0.0f + (Float.valueOf(str3).floatValue() * 60.0f);
            }
            if (str2 != null) {
                return f + Float.valueOf(str2).floatValue();
            }
            return f;
        }

        @Override // java.lang.Runnable
        public final void run() {
            String readLine;
            int i;
            a aVar = this.f10462a.get();
            BufferedReader bufferedReader = null;
            try {
                try {
                    try {
                        InputStream a2 = a.a(this.b);
                        if (a2 != null) {
                            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(a2));
                            try {
                                String readLine2 = bufferedReader2.readLine();
                                if (readLine2 != null && readLine2.length() != 0 && readLine2.contains("WEBVTT")) {
                                    do {
                                        readLine = bufferedReader2.readLine();
                                        if (readLine != null && readLine.contains("-->")) {
                                            String[] split = readLine.split(" --> ");
                                            if (split.length == 2) {
                                                String readLine3 = bufferedReader2.readLine();
                                                c cVar = new c((byte) 0);
                                                cVar.f10464a = a(split[0]);
                                                cVar.b = a(split[1]);
                                                cVar.c = readLine3;
                                                int indexOf = readLine3.indexOf("#");
                                                if (indexOf != -1) {
                                                    cVar.d = readLine3.substring(0, indexOf);
                                                }
                                                int indexOf2 = readLine3.indexOf("=");
                                                if (indexOf2 != -1 && (i = indexOf2 + 1) < readLine3.length()) {
                                                    String[] split2 = readLine3.substring(i, readLine3.length()).split(",");
                                                    if (split2.length == 4) {
                                                        cVar.e = Integer.valueOf(split2[0]).intValue();
                                                        cVar.f = Integer.valueOf(split2[1]).intValue();
                                                        cVar.g = Integer.valueOf(split2[2]).intValue();
                                                        cVar.h = Integer.valueOf(split2[3]).intValue();
                                                    }
                                                }
                                                if (aVar != null && aVar.d != null) {
                                                    aVar.d.add(cVar);
                                                    continue;
                                                }
                                            } else {
                                                continue;
                                            }
                                        }
                                    } while (readLine != null);
                                    bufferedReader2.close();
                                }
                                LiteavLog.e("TXImageSprite", "DownloadAndParseVTTFileTask : getVTT File Error!");
                                if (aVar != null) {
                                    aVar.a();
                                }
                                bufferedReader2.close();
                            } catch (IOException e) {
                                e = e;
                                bufferedReader = bufferedReader2;
                                LiteavLog.e("TXImageSprite", "load image sprite failed.", e);
                                if (bufferedReader != null) {
                                    bufferedReader.close();
                                }
                            } catch (Throwable th) {
                                th = th;
                                bufferedReader = bufferedReader2;
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException unused) {
                                    }
                                }
                                throw th;
                            }
                        }
                    } catch (IOException e2) {
                        e = e2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException unused2) {
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<a> f10463a;
        private String b;
        private String c;

        public b(a aVar, String str, String str2) {
            this.f10463a = new WeakReference<>(aVar);
            this.b = str;
            this.c = str2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            a aVar = this.f10463a.get();
            if (this.f10463a != null && aVar != null) {
                InputStream inputStream = null;
                try {
                    try {
                        try {
                            inputStream = a.a(this.c);
                            String lastPathSegment = Uri.parse(this.c).getLastPathSegment();
                            if (aVar.e != null) {
                                aVar.e.put(lastPathSegment, BitmapRegionDecoder.newInstance(inputStream, true));
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                        } catch (IOException e) {
                            LiteavLog.e("TXImageSprite", "load bitmap from network failed.", e);
                            if (inputStream != null) {
                                inputStream.close();
                            }
                        }
                    } catch (Throwable th) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException unused) {
                            }
                        }
                        throw th;
                    }
                } catch (IOException unused2) {
                }
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public float f10464a;
        public float b;
        public String c;
        public String d;
        public int e;
        public int f;
        public int g;
        public int h;

        private c() {
        }

        public /* synthetic */ c(byte b) {
            this();
        }
    }

    public a(Context context) {
        super(context);
        this.f10460a = new BitmapFactory.Options();
        ArrayList arrayList = new ArrayList();
        this.d = arrayList;
        this.d = Collections.synchronizedList(arrayList);
        HashMap hashMap = new HashMap();
        this.e = hashMap;
        this.e = DesugarCollections.synchronizedMap(hashMap);
    }

    @Override // com.tencent.rtmp.TXImageSprite
    public final Bitmap getThumbnail(float f) {
        c cVar;
        if (this.d.size() == 0) {
            return null;
        }
        int size = this.d.size() - 1;
        int i = 0;
        while (true) {
            int i2 = ((size - i) / 2) + i;
            if (this.d.get(i2).f10464a <= f && this.d.get(i2).b > f) {
                cVar = this.d.get(i2);
                break;
            } else if (i >= size) {
                cVar = this.d.get(i);
                break;
            } else if (f >= this.d.get(i2).b) {
                i = i2 + 1;
            } else if (f < this.d.get(i2).f10464a) {
                size = i2 - 1;
            } else {
                cVar = null;
                break;
            }
        }
        if (cVar == null) {
            return null;
        }
        BitmapRegionDecoder bitmapRegionDecoder = this.e.get(cVar.d);
        if (bitmapRegionDecoder == null) {
            return null;
        }
        Rect rect = new Rect();
        int i3 = cVar.e;
        rect.left = i3;
        int i4 = cVar.f;
        rect.top = i4;
        rect.right = i3 + cVar.g;
        rect.bottom = i4 + cVar.h;
        return bitmapRegionDecoder.decodeRegion(rect, this.f10460a);
    }

    @Override // com.tencent.rtmp.TXImageSprite
    public final void release() {
        a();
        if (this.b != null && this.c != null) {
            if (LiteavSystemInfo.getSystemOSVersionInt() >= 18) {
                this.b.quitSafely();
            } else {
                this.b.quit();
            }
            this.c = null;
            this.b = null;
        }
    }

    @Override // com.tencent.rtmp.TXImageSprite
    public final void setVTTUrlAndImageUrls(String str, List<String> list) {
        if (TextUtils.isEmpty(str)) {
            LiteavLog.e("TXImageSprite", "setVTTUrlAndImageUrls: vttUrl can't be null!");
            return;
        }
        a();
        if (this.b == null) {
            HandlerThread handlerThread = new HandlerThread("SuperVodThumbnailsWorkThread");
            this.b = handlerThread;
            handlerThread.start();
            this.c = new Handler(this.b.getLooper());
        }
        this.c.post(new RunnableC0215a(this, str));
        if (list != null && list.size() != 0) {
            for (String str2 : list) {
                this.c.post(new b(this, str, str2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.c != null) {
            LiteavLog.i("TXImageSprite", " remove all tasks!");
            this.c.removeCallbacksAndMessages(null);
            this.c.post(new Runnable() { // from class: com.tencent.rtmp.a.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (a.this.d != null) {
                        a.this.d.clear();
                    }
                    if (a.this.e != null) {
                        for (BitmapRegionDecoder bitmapRegionDecoder : a.this.e.values()) {
                            if (bitmapRegionDecoder != null) {
                                bitmapRegionDecoder.recycle();
                            }
                        }
                        a.this.e.clear();
                    }
                }
            });
        }
    }

    public static /* synthetic */ InputStream a(String str) throws IOException {
        URLConnection openConnection = new URL(str).openConnection();
        openConnection.connect();
        openConnection.getInputStream();
        openConnection.setConnectTimeout(DefaultLoadControl.DEFAULT_MIN_BUFFER_MS);
        openConnection.setReadTimeout(DefaultLoadControl.DEFAULT_MIN_BUFFER_MS);
        return openConnection.getInputStream();
    }
}
