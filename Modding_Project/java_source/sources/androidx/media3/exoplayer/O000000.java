package androidx.media3.exoplayer;

import android.annotation.SuppressLint;
import androidx.media3.exoplayer.RendererCapabilities;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public final /* synthetic */ class O000000 {
    public static boolean Wwwwwwwwwwwwwwwwwwwww(int i, boolean z) {
        int Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwww(i);
        if (Wwwwwwwwwwwwwwwwwwwwwwww2 != 4) {
            if (!z || Wwwwwwwwwwwwwwwwwwwwwwww2 != 3) {
                return false;
            }
            return true;
        }
        return true;
    }

    @SuppressLint({"WrongConstant"})
    public static int Wwwwwwwwwwwwwwwwwwwwww(int i) {
        return i & 32;
    }

    @SuppressLint({"WrongConstant"})
    public static int Wwwwwwwwwwwwwwwwwwwwwww(int i) {
        return i & 64;
    }

    @SuppressLint({"WrongConstant"})
    public static int Wwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return i & 7;
    }

    @SuppressLint({"WrongConstant"})
    public static int Wwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return i & RendererCapabilities.DECODER_SUPPORT_MASK;
    }

    @SuppressLint({"WrongConstant"})
    public static int Wwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return i & RendererCapabilities.AUDIO_OFFLOAD_SUPPORT_MASK;
    }

    @SuppressLint({"WrongConstant"})
    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return i & 24;
    }

    @SuppressLint({"WrongConstant"})
    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, int i3, int i4, int i5, int i6) {
        return i | i2 | i3 | i4 | i5 | i6;
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, int i3, int i4, int i5) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, i3, i4, i5, 0);
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, int i3, int i4) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, i3, 0, 128, i4);
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, int i3) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, i3, 0, 128, 0);
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, 0, 0, 0);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RendererCapabilities rendererCapabilities) {
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RendererCapabilities rendererCapabilities, RendererCapabilities.Listener listener) {
    }
}
