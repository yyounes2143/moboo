package com.bumptech.glide.gifdecoder;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class GifHeaderParser {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public GifHeader f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ByteBuffer f4146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final byte[] f4147Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new byte[256];

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4144Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;

    public final void Wwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwww() {
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        do {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f4146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.position(Math.min(this.f4146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.position() + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f4146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.limit()));
        } while (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 > 0);
    }

    public GifHeaderParser Wwwwwwwwwwwwwwwwwww(@NonNull ByteBuffer byteBuffer) {
        Wwwwwwwwwwwwwwwwwwww();
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        this.f4146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = asReadOnlyBuffer;
        asReadOnlyBuffer.position(0);
        this.f4146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }

    public final void Wwwwwwwwwwwwwwwwwwww() {
        this.f4146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        Arrays.fill(this.f4147Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, (byte) 0);
        this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new GifHeader();
        this.f4144Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
    }

    public final int Wwwwwwwwwwwwwwwwwwwww() {
        return this.f4146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getShort();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww() {
        do {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            byte[] bArr = this.f4147Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (bArr[0] == 1) {
                this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4131Wwwwwwwwwwwwwwwwwwwwww = ((bArr[2] & 255) << 8) | (bArr[1] & 255);
            }
            if (this.f4144Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww <= 0) {
                return;
            }
        } while (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww() {
        boolean z;
        this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4138Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwww();
        this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4137Wwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwww();
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        GifHeader gifHeader = this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 & 128) != 0) {
            z = true;
        } else {
            z = false;
        }
        gifHeader.f4136Wwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        gifHeader.f4135Wwwwwwwwwwwwwwwwwwwwwwwwww = (int) Math.pow(2.0d, (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 & 7) + 1);
        this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4134Wwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4133Wwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 6; i++) {
            sb.append((char) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        if (!sb.toString().startsWith("GIF")) {
            this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4142Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 1;
            return;
        }
        Wwwwwwwwwwwwwwwwwwwwwww();
        if (this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4136Wwwwwwwwwwwwwwwwwwwwwwwwwww && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            GifHeader gifHeader = this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            gifHeader.f4143Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(gifHeader.f4135Wwwwwwwwwwwwwwwwwwwwwwwwww);
            GifHeader gifHeader2 = this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            gifHeader2.f4132Wwwwwwwwwwwwwwwwwwwwwww = gifHeader2.f4143Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[gifHeader2.f4134Wwwwwwwwwwwwwwwwwwwwwwwww];
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        GifFrame gifFrame = this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4140Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i = (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 & 28) >> 2;
        gifFrame.f4124Wwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        boolean z = true;
        if (i == 0) {
            gifFrame.f4124Wwwwwwwwwwwwwwwwwwwwwwwwwwww = 1;
        }
        if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 & 1) == 0) {
            z = false;
        }
        gifFrame.f4125Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        int Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwww2 < 2) {
            Wwwwwwwwwwwwwwwwwwwww2 = 10;
        }
        GifFrame gifFrame2 = this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4140Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        gifFrame2.f4122Wwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwww2 * 10;
        gifFrame2.f4123Wwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        boolean z = false;
        while (!z && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() && this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4141Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww <= i) {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 33) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 44) {
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 59) {
                        this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4142Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 1;
                    } else {
                        z = true;
                    }
                } else {
                    GifHeader gifHeader = this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (gifHeader.f4140Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                        gifHeader.f4140Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new GifFrame();
                    }
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
            } else {
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != 1) {
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != 249) {
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != 254) {
                            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != 255) {
                                Wwwwwwwwwwwwwwwwww();
                            } else {
                                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                StringBuilder sb = new StringBuilder();
                                for (int i2 = 0; i2 < 11; i2++) {
                                    sb.append((char) this.f4147Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i2]);
                                }
                                if (sb.toString().equals("NETSCAPE2.0")) {
                                    Wwwwwwwwwwwwwwwwwwwwww();
                                } else {
                                    Wwwwwwwwwwwwwwwwww();
                                }
                            }
                        } else {
                            Wwwwwwwwwwwwwwwwww();
                        }
                    } else {
                        this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4140Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new GifFrame();
                        Wwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                } else {
                    Wwwwwwwwwwwwwwwwww();
                }
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwww(Integer.MAX_VALUE);
    }

    @Nullable
    public final int[] Wwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        byte[] bArr = new byte[i * 3];
        int[] iArr = null;
        try {
            this.f4146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(bArr);
            iArr = new int[256];
            int i2 = 0;
            int i3 = 0;
            while (i2 < i) {
                int i4 = i3 + 2;
                i3 += 3;
                int i5 = i2 + 1;
                iArr[i2] = ((bArr[i3 + 1] & 255) << 8) | ((bArr[i3] & 255) << 16) | ViewCompat.MEASURED_STATE_MASK | (bArr[i4] & 255);
                i2 = i5;
            }
            return iArr;
        } catch (BufferUnderflowException unused) {
            this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4142Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 1;
            return iArr;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f4144Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 > 0) {
            int i = 0;
            while (true) {
                try {
                    int i2 = this.f4144Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (i < i2) {
                        int i3 = i2 - i;
                        this.f4146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(this.f4147Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, i3);
                        i += i3;
                    } else {
                        return;
                    }
                } catch (Exception unused) {
                    this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4142Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 1;
                    return;
                }
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        boolean z;
        this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4140Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4130Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwww();
        this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4140Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4129Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwww();
        this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4140Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4128Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwww();
        this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4140Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4127Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwww();
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        boolean z2 = false;
        if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 & 128) != 0) {
            z = true;
        } else {
            z = false;
        }
        int pow = (int) Math.pow(2.0d, (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 & 7) + 1);
        GifFrame gifFrame = this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4140Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 & 64) != 0) {
            z2 = true;
        }
        gifFrame.f4126Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z2;
        if (z) {
            gifFrame.f4120Wwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(pow);
        } else {
            gifFrame.f4120Wwwwwwwwwwwwwwwwwwwwwwww = null;
        }
        this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4140Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4121Wwwwwwwwwwwwwwwwwwwwwwwww = this.f4146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.position();
        Wwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            return;
        }
        GifHeader gifHeader = this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        gifHeader.f4141Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww++;
        gifHeader.f4139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(gifHeader.f4140Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        try {
            return this.f4146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get() & 255;
        } catch (Exception unused) {
            this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4142Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 1;
            return 0;
        }
    }

    @NonNull
    public GifHeader Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f4146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                return this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            Wwwwwwwwwwwwwwwwwwwwwwww();
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                GifHeader gifHeader = this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (gifHeader.f4141Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww < 0) {
                    gifHeader.f4142Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 1;
                }
            }
            return this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        throw new IllegalStateException("You must call setData() before parseHeader()");
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4142Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != 0) {
            return true;
        }
        return false;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f4146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f4145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
    }
}
