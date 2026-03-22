package com.tencent.liteav.txcvodplayer.renderer;

import android.view.View;
import java.lang.ref.WeakReference;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    int f10348a;
    int b;
    int c;
    int d = 0;
    private WeakReference<View> e;
    private int f;
    private int g;
    private int h;
    private int i;

    public b(View view) {
        this.e = new WeakReference<>(view);
    }

    public final void a(int i, int i2) {
        this.f = i;
        this.g = i2;
    }

    public final void b(int i, int i2) {
        this.h = i;
        this.i = i2;
    }

    public final void c(int i, int i2) {
        int i3;
        float f;
        boolean z;
        int i4;
        int i5 = this.f10348a;
        if (i5 == 90 || i5 == 270) {
            i2 = i;
            i = i2;
        }
        int defaultSize = View.getDefaultSize(this.f, i);
        int defaultSize2 = View.getDefaultSize(this.g, i2);
        if (this.d != 3) {
            if (this.f > 0 && this.g > 0) {
                int mode = View.MeasureSpec.getMode(i);
                i = View.MeasureSpec.getSize(i);
                int mode2 = View.MeasureSpec.getMode(i2);
                i2 = View.MeasureSpec.getSize(i2);
                if (mode == Integer.MIN_VALUE && mode2 == Integer.MIN_VALUE) {
                    float f2 = i / i2;
                    int i6 = this.d;
                    if (i6 != 4) {
                        if (i6 != 5) {
                            f = this.f / this.g;
                            int i7 = this.h;
                            if (i7 > 0 && (i4 = this.i) > 0) {
                                f = (f * i7) / i4;
                            }
                        } else {
                            int i8 = this.f10348a;
                            f = (i8 == 90 || i8 == 270) ? 0.75f : 1.3333334f;
                        }
                    } else {
                        int i9 = this.f10348a;
                        f = (i9 == 90 || i9 == 270) ? 0.5625f : 1.7777778f;
                    }
                    if (f > f2) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (i6 != 0) {
                        if (i6 != 1) {
                            if (i6 != 4 && i6 != 5) {
                                if (z) {
                                    int min = Math.min(this.f, i);
                                    this.b = min;
                                    this.c = (int) (min / f);
                                    return;
                                }
                                int min2 = Math.min(this.g, i2);
                                this.c = min2;
                                this.b = (int) (min2 * f);
                                return;
                            }
                        } else if (z) {
                            this.c = i2;
                            this.b = (int) (i2 * f);
                            return;
                        } else {
                            this.b = i;
                            this.c = (int) (i / f);
                            return;
                        }
                    }
                    if (z) {
                        this.b = i;
                        this.c = (int) (i / f);
                        return;
                    }
                    this.c = i2;
                    this.b = (int) (i2 * f);
                    return;
                } else if (mode == 1073741824 && mode2 == 1073741824) {
                    int i10 = this.f;
                    int i11 = i10 * i2;
                    int i12 = this.g;
                    if (i11 < i * i12) {
                        i = (i10 * i2) / i12;
                    } else if (i10 * i2 > i * i12) {
                        i2 = (i12 * i) / i10;
                    }
                } else if (mode == 1073741824) {
                    int i13 = (this.g * i) / this.f;
                    if (mode2 != Integer.MIN_VALUE || i13 <= i2) {
                        i2 = i13;
                    }
                } else if (mode2 == 1073741824) {
                    int i14 = (this.f * i2) / this.g;
                    if (mode != Integer.MIN_VALUE || i14 <= i) {
                        i = i14;
                    }
                } else {
                    int i15 = this.f;
                    int i16 = this.g;
                    if (mode2 == Integer.MIN_VALUE && i16 > i2) {
                        i3 = (i2 * i15) / i16;
                    } else {
                        i3 = i15;
                        i2 = i16;
                    }
                    if (mode == Integer.MIN_VALUE && i3 > i) {
                        i2 = (i16 * i) / i15;
                    } else {
                        i = i3;
                    }
                }
            } else {
                i = defaultSize;
                i2 = defaultSize2;
            }
        }
        this.b = i;
        this.c = i2;
    }
}
