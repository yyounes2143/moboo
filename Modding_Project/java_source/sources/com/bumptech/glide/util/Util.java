package com.bumptech.glide.util;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.model.Model;
import com.google.common.base.Ascii;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Queue;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class Util {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile Handler f5210Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final char[] f5212Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "0123456789abcdef".toCharArray();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final char[] f5211Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new char[64];

    /* compiled from: Proguard */
    /* renamed from: com.bumptech.glide.util.Util$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final /* synthetic */ int[] f5213Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        static {
            Bitmap.Config config;
            int[] iArr = new int[Bitmap.Config.values().length];
            f5213Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iArr;
            try {
                iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5213Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5213Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr2 = f5213Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                config = Bitmap.Config.RGBA_F16;
                iArr2[config.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f5213Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[Bitmap.Config.ARGB_8888.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @NonNull
    public static String Wwwwwwwwwww(@NonNull byte[] bArr) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        char[] cArr = f5211Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        synchronized (cArr) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr, cArr);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public static void Wwwwwwwwwwww(Runnable runnable) {
        Wwwwwwwwwwwwwwwwwwwwwwww().removeCallbacks(runnable);
    }

    public static void Wwwwwwwwwwwww(Runnable runnable) {
        Wwwwwwwwwwwwwwwwwwwwwwww().post(runnable);
    }

    public static boolean Wwwwwwwwwwwwww(int i, int i2) {
        if (Wwwwwwwwwwwwwww(i) && Wwwwwwwwwwwwwww(i2)) {
            return true;
        }
        return false;
    }

    public static boolean Wwwwwwwwwwwwwww(int i) {
        if (i <= 0 && i != Integer.MIN_VALUE) {
            return false;
        }
        return true;
    }

    public static boolean Wwwwwwwwwwwwwwww() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return true;
        }
        return false;
    }

    public static boolean Wwwwwwwwwwwwwwwww() {
        return !Wwwwwwwwwwwwwwww();
    }

    public static int Wwwwwwwwwwwwwwwwww(boolean z, int i) {
        return Wwwwwwwwwwwwwwwwwwww(z ? 1 : 0, i);
    }

    public static int Wwwwwwwwwwwwwwwwwww(@Nullable Object obj, int i) {
        int hashCode;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        return Wwwwwwwwwwwwwwwwwwww(hashCode, i);
    }

    public static int Wwwwwwwwwwwwwwwwwwww(int i, int i2) {
        return (i2 * 31) + i;
    }

    public static int Wwwwwwwwwwwwwwwwwwwww(int i) {
        return Wwwwwwwwwwwwwwwwwwww(i, 17);
    }

    public static int Wwwwwwwwwwwwwwwwwwwwww(float f, int i) {
        return Wwwwwwwwwwwwwwwwwwww(Float.floatToIntBits(f), i);
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwww(float f) {
        return Wwwwwwwwwwwwwwwwwwwwww(f, 17);
    }

    public static Handler Wwwwwwwwwwwwwwwwwwwwwwww() {
        if (f5210Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            synchronized (Util.class) {
                try {
                    if (f5210Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                        f5210Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Handler(Looper.getMainLooper());
                    }
                } finally {
                }
            }
        }
        return f5210Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public static <T> List<T> Wwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (T t : collection) {
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Bitmap.Config config) {
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        int i = AnonymousClass1.f5213Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[config.ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2 && i != 3) {
                if (i != 4) {
                    return 4;
                }
                return 8;
            }
        }
        return i2;
    }

    @TargetApi(19)
    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Bitmap bitmap) {
        if (!bitmap.isRecycled()) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (NullPointerException unused) {
                return bitmap.getHeight() * bitmap.getRowBytes();
            }
        }
        throw new IllegalStateException("Cannot obtain size for recycled Bitmap: " + bitmap + "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig());
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, @Nullable Bitmap.Config config) {
        return i * i2 * Wwwwwwwwwwwwwwwwwwwwwwwwww(config);
    }

    @NonNull
    public static <T> Queue<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return new ArrayDeque(i);
    }

    @NonNull
    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull byte[] bArr, @NonNull char[] cArr) {
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            int i2 = i * 2;
            char[] cArr2 = f5212Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            cArr[i2] = cArr2[(b & 255) >>> 4];
            cArr[i2 + 1] = cArr2[b & Ascii.SI];
        }
        return new String(cArr);
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null) {
            if (obj2 == null) {
                return true;
            }
            return false;
        }
        return obj.equals(obj2);
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null) {
            if (obj2 == null) {
                return true;
            }
            return false;
        } else if (obj instanceof Model) {
            return ((Model) obj).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj2);
        } else {
            return obj.equals(obj2);
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (Wwwwwwwwwwwwwwww()) {
            return;
        }
        throw new IllegalArgumentException("You must call this method on the main thread");
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (Wwwwwwwwwwwwwwwww()) {
            return;
        }
        throw new IllegalArgumentException("You must call this method on a background thread");
    }
}
