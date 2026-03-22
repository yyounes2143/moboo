package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.File;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class HardwareConfigState {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile int f4780Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile HardwareConfigState f4781Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final File f4782Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final boolean f4783Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final boolean f4784Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @GuardedBy("this")

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4787Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f4788Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f4789Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @GuardedBy("this")

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4786Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AtomicBoolean f4785Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicBoolean(false);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f4790Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    static {
        boolean z;
        int i = Build.VERSION.SDK_INT;
        boolean z2 = false;
        if (i < 29) {
            z = true;
        } else {
            z = false;
        }
        f4784Wwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        if (i >= 26) {
            z2 = true;
        }
        f4783Wwwwwwwwwwwwwwwwwwwwwwwwwww = z2;
        f4782Wwwwwwwwwwwwwwwwwwwwwwwwww = new File("/proc/self/fd");
        f4780Wwwwwwwwwwwwwwwwwwwwwwww = -1;
    }

    @VisibleForTesting
    public HardwareConfigState() {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f4789Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 20000;
            this.f4788Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
            return;
        }
        this.f4789Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = TypedValues.TransitionType.TYPE_DURATION;
        this.f4788Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 128;
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (Build.VERSION.SDK_INT != 27) {
            return false;
        }
        return Arrays.asList("LG-M250", "LG-M320", "LG-Q710AL", "LG-Q710PL", "LGM-K121K", "LGM-K121L", "LGM-K121S", "LGM-X320K", "LGM-X320L", "LGM-X320S", "LGM-X401L", "LGM-X401S", "LM-Q610.FG", "LM-Q610.FGN", "LM-Q617.FG", "LM-Q617.FGN", "LM-Q710.FG", "LM-Q710.FGN", "LM-X220PM", "LM-X220QMA", "LM-X410PM").contains(Build.MODEL);
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (Build.VERSION.SDK_INT != 26) {
            return false;
        }
        for (String str : Arrays.asList("SC-04J", "SM-N935", "SM-J720", "SM-G570F", "SM-G570M", "SM-G960", "SM-G965", "SM-G935", "SM-G930", "SM-A520", "SM-A720F", "moto e5", "moto e5 play", "moto e5 plus", "moto e5 cruise", "moto g(6) forge", "moto g(6) play")) {
            if (Build.MODEL.startsWith(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwww() && !Wwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            return true;
        }
        return false;
    }

    public static HardwareConfigState Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (f4781Wwwwwwwwwwwwwwwwwwwwwwwww == null) {
            synchronized (HardwareConfigState.class) {
                try {
                    if (f4781Wwwwwwwwwwwwwwwwwwwwwwwww == null) {
                        f4781Wwwwwwwwwwwwwwwwwwwwwwwww = new HardwareConfigState();
                    }
                } finally {
                }
            }
        }
        return f4781Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @TargetApi(26)
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, BitmapFactory.Options options, boolean z, boolean z2) {
        Bitmap.Config config;
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, z, z2);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            config = Bitmap.Config.HARDWARE;
            options.inPreferredConfig = config;
            options.inMutable = false;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, boolean z, boolean z2) {
        int i3;
        if (!z || !this.f4790Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww || !f4783Wwwwwwwwwwwwwwwwwwwwwwwwwww || Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() || z2 || i < (i3 = this.f4788Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) || i2 < i3 || !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            return false;
        }
        return true;
    }

    public final synchronized boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        try {
            boolean z = true;
            int i = this.f4787Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + 1;
            this.f4787Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            if (i >= 50) {
                this.f4787Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
                if (f4782Wwwwwwwwwwwwwwwwwwwwwwwwww.list().length >= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    z = false;
                }
                this.f4786Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f4786Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (f4780Wwwwwwwwwwwwwwwwwwwwwwww != -1) {
            return f4780Wwwwwwwwwwwwwwwwwwwwwwww;
        }
        return this.f4789Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (f4784Wwwwwwwwwwwwwwwwwwwwwwwwwwww && !this.f4785Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.get()) {
            return true;
        }
        return false;
    }
}
