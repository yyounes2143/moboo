package com.devlxx.disable_screenshots;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.view.WindowManager;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ScreenShotListenManager {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Point f5688Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Handler f5692Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Handler(Looper.getMainLooper());

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MediaContentObserver f5693Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MediaContentObserver f5694Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f5695Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public OnScreenShotListener f5696Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Context f5697Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String[] f5691Wwwwwwwwwwwwwwwwwwwwwwwwwwww = {"_data", "datetaken"};

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String[] f5690Wwwwwwwwwwwwwwwwwwwwwwwwwww = {"_data", "datetaken", "width", "height"};

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String[] f5689Wwwwwwwwwwwwwwwwwwwwwwwwww = {"screenshot", "screen_shot", "screen-shot", "screen shot", "screencapture", "screen_capture", "screen-capture", "screen capture", "screencap", "screen_cap", "screen-cap", "screen cap"};

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final List<String> f5687Wwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class MediaContentObserver extends ContentObserver {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Uri f5699Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public MediaContentObserver(Uri uri, Handler handler) {
            super(handler);
            this.f5699Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = uri;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            ScreenShotListenManager.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5699Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface OnScreenShotListener {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str);
    }

    public ScreenShotListenManager(Context context) {
        if (context != null) {
            this.f5697Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
            if (f5688Wwwwwwwwwwwwwwwwwwwwwwwww == null) {
                Point Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                f5688Wwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    Point point = f5688Wwwwwwwwwwwwwwwwwwwwwwwww;
                    int i = point.x;
                    int i2 = point.y;
                    return;
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException("The context must not be null.");
    }

    public static ScreenShotListenManager Wwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        return new ScreenShotListenManager(context);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        String str;
        if (Looper.myLooper() != Looper.getMainLooper()) {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            if (stackTrace != null && stackTrace.length >= 4) {
                str = stackTrace[3].toString();
            } else {
                str = null;
            }
            throw new IllegalStateException("Call the method must be in main thread: " + str);
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (this.f5694Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            try {
                this.f5697Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getContentResolver().unregisterContentObserver(this.f5694Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            } catch (Exception e) {
                e.printStackTrace();
            }
            this.f5694Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        }
        if (this.f5693Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            try {
                this.f5697Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getContentResolver().unregisterContentObserver(this.f5693Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            this.f5693Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        }
        this.f5695Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0L;
        this.f5696Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f5695Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = System.currentTimeMillis();
        Uri uri = MediaStore.Images.Media.INTERNAL_CONTENT_URI;
        this.f5694Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new MediaContentObserver(uri, this.f5692Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        Uri uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        this.f5693Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new MediaContentObserver(uri2, this.f5692Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f5697Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getContentResolver().registerContentObserver(uri, false, this.f5694Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f5697Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getContentResolver().registerContentObserver(uri2, false, this.f5693Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwww(OnScreenShotListener onScreenShotListener) {
        this.f5696Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = onScreenShotListener;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(String str, long j, int i, int i2) {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, j, i, i2) && this.f5696Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str)) {
            this.f5696Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
        int i;
        int i2;
        Cursor cursor = null;
        try {
            try {
                Cursor query = this.f5697Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getContentResolver().query(uri, f5690Wwwwwwwwwwwwwwwwwwwwwwwwwww, null, null, "date_added desc limit 1");
                if (query == null) {
                    if (query != null && !query.isClosed()) {
                        query.close();
                    }
                } else if (!query.moveToFirst()) {
                    if (!query.isClosed()) {
                        query.close();
                    }
                } else {
                    int columnIndex = query.getColumnIndex("_data");
                    int columnIndex2 = query.getColumnIndex("datetaken");
                    int columnIndex3 = query.getColumnIndex("width");
                    int columnIndex4 = query.getColumnIndex("height");
                    String string = query.getString(columnIndex);
                    long j = query.getLong(columnIndex2);
                    if (columnIndex3 >= 0 && columnIndex4 >= 0) {
                        i2 = query.getInt(columnIndex3);
                        i = query.getInt(columnIndex4);
                    } else {
                        Point Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(string);
                        int i3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.x;
                        i = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.y;
                        i2 = i3;
                    }
                    Wwwwwwwwwwwwwwwwwwwwwwwwwww(string, j, i2, i);
                    if (!query.isClosed()) {
                        query.close();
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                if (0 != 0 && !cursor.isClosed()) {
                    cursor.close();
                }
            }
        } catch (Throwable th) {
            if (0 != 0 && !cursor.isClosed()) {
                cursor.close();
            }
            throw th;
        }
    }

    public final Point Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Point point;
        Exception e;
        try {
            point = new Point();
        } catch (Exception e2) {
            point = null;
            e = e2;
        }
        try {
            ((WindowManager) this.f5697Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getSystemService("window")).getDefaultDisplay().getRealSize(point);
            return point;
        } catch (Exception e3) {
            e = e3;
            e.printStackTrace();
            return point;
        }
    }

    public final Point Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        return new Point(options.outWidth, options.outHeight);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, long j, int i, int i2) {
        Point point;
        int i3;
        if (j < this.f5695Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww || System.currentTimeMillis() - j > 10000 || (((point = f5688Wwwwwwwwwwwwwwwwwwwwwwwww) != null && ((i > (i3 = point.x) || i2 > point.y) && (i2 > i3 || i > point.y))) || TextUtils.isEmpty(str))) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        for (String str2 : f5689Wwwwwwwwwwwwwwwwwwwwwwwwww) {
            if (lowerCase.contains(str2)) {
                return true;
            }
        }
        return false;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        List<String> list = f5687Wwwwwwwwwwwwwwwwwwwwwwww;
        if (list.contains(str)) {
            return true;
        }
        if (list.size() >= 20) {
            for (int i = 0; i < 5; i++) {
                f5687Wwwwwwwwwwwwwwwwwwwwwwww.remove(0);
            }
        }
        f5687Wwwwwwwwwwwwwwwwwwwwwwww.add(str);
        return false;
    }
}
