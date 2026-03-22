package com.bumptech.glide.load.engine.cache;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class MemorySizeCalculator {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f4522Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f4523Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f4524Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f4525Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final int f4526Wwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public float f4530Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public ScreenDimensions f4532Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public ActivityManager f4533Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Context f4534Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public float f4531Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 2.0f;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public float f4529Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0.4f;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public float f4528Wwwwwwwwwwwwwwwwwwwwwwwwwwww = 0.33f;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f4527Wwwwwwwwwwwwwwwwwwwwwwwwwww = 4194304;

        static {
            int i;
            if (Build.VERSION.SDK_INT < 26) {
                i = 4;
            } else {
                i = 1;
            }
            f4526Wwwwwwwwwwwwwwwwwwwwwwwwww = i;
        }

        public Builder(Context context) {
            this.f4530Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = f4526Wwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f4534Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
            this.f4533Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (ActivityManager) context.getSystemService("activity");
            this.f4532Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new DisplayMetricsScreenDimensions(context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT >= 26 && MemorySizeCalculator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4533Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                this.f4530Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0.0f;
            }
        }

        public MemorySizeCalculator Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new MemorySizeCalculator(this);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class DisplayMetricsScreenDimensions implements ScreenDimensions {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DisplayMetrics f4535Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public DisplayMetricsScreenDimensions(DisplayMetrics displayMetrics) {
            this.f4535Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = displayMetrics;
        }

        @Override // com.bumptech.glide.load.engine.cache.MemorySizeCalculator.ScreenDimensions
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f4535Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.widthPixels;
        }

        @Override // com.bumptech.glide.load.engine.cache.MemorySizeCalculator.ScreenDimensions
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f4535Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.heightPixels;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface ScreenDimensions {
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public MemorySizeCalculator(Builder builder) {
        int i;
        this.f4523Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = builder.f4534Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(builder.f4533Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            i = builder.f4527Wwwwwwwwwwwwwwwwwwwwwwwwwww / 2;
        } else {
            i = builder.f4527Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        this.f4522Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(builder.f4533Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, builder.f4529Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, builder.f4528Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
        float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = builder.f4532Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() * builder.f4532Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() * 4;
        int round = Math.round(builder.f4530Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        int round2 = Math.round(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 * builder.f4531Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        int i2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 - i;
        if (round2 + round <= i2) {
            this.f4524Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = round2;
            this.f4525Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = round;
        } else {
            float f = i2;
            float f2 = builder.f4530Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            float f3 = builder.f4531Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            float f4 = f / (f2 + f3);
            this.f4524Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Math.round(f3 * f4);
            this.f4525Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Math.round(f4 * builder.f4530Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4524Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4525Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            builder.f4533Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getMemoryClass();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(builder.f4533Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    @TargetApi(19)
    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ActivityManager activityManager) {
        return activityManager.isLowRamDevice();
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ActivityManager activityManager, float f, float f2) {
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activityManager);
        float memoryClass = activityManager.getMemoryClass() * 1048576;
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            f = f2;
        }
        return Math.round(memoryClass * f);
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return Formatter.formatFileSize(this.f4523Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i);
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4524Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4525Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4522Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
