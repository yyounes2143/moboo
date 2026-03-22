package com.bumptech.glide.gifdecoder;

import android.graphics.Bitmap;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentTransaction;
import com.bumptech.glide.gifdecoder.GifDecoder;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class StandardGifDecoder implements GifDecoder {

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f4148Wwwwwwwwwwwwww = "StandardGifDecoder";
    @NonNull

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public Bitmap.Config f4149Wwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public Boolean f4150Wwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4151Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4152Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4153Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4154Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4155Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Bitmap f4156Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public GifHeader f4157Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4158Wwwwwwwwwwwwwwwwwwwwwwww;
    @ColorInt

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int[] f4159Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public byte[] f4160Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public byte[] f4161Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public byte[] f4162Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public short[] f4163Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public byte[] f4164Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ByteBuffer f4165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final GifDecoder.BitmapProvider f4166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @ColorInt

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int[] f4167Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @ColorInt

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int[] f4168Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public StandardGifDecoder(@NonNull GifDecoder.BitmapProvider bitmapProvider, GifHeader gifHeader, ByteBuffer byteBuffer, int i) {
        this(bitmapProvider);
        Wwwwwwwwwwwwwwwwww(gifHeader, byteBuffer, i);
    }

    public final Bitmap Wwwwwwwwwwwwwwwww(GifFrame gifFrame, GifFrame gifFrame2) {
        int i;
        int i2;
        Bitmap bitmap;
        int[] iArr = this.f4159Wwwwwwwwwwwwwwwwwwwwwwwww;
        int i3 = 0;
        if (gifFrame2 == null) {
            Bitmap bitmap2 = this.f4156Wwwwwwwwwwwwwwwwwwwwww;
            if (bitmap2 != null) {
                this.f4166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap2);
            }
            this.f4156Wwwwwwwwwwwwwwwwwwwwww = null;
            Arrays.fill(iArr, 0);
        }
        if (gifFrame2 != null && gifFrame2.f4124Wwwwwwwwwwwwwwwwwwwwwwwwwwww == 3 && this.f4156Wwwwwwwwwwwwwwwwwwwwww == null) {
            Arrays.fill(iArr, 0);
        }
        if (gifFrame2 != null && (i2 = gifFrame2.f4124Wwwwwwwwwwwwwwwwwwwwwwwwwwww) > 0) {
            if (i2 == 2) {
                if (!gifFrame.f4125Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    GifHeader gifHeader = this.f4157Wwwwwwwwwwwwwwwwwwwwwww;
                    int i4 = gifHeader.f4132Wwwwwwwwwwwwwwwwwwwwwww;
                    if (gifFrame.f4120Wwwwwwwwwwwwwwwwwwwwwwww == null || gifHeader.f4134Wwwwwwwwwwwwwwwwwwwwwwwww != gifFrame.f4123Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                        i3 = i4;
                    }
                }
                int i5 = gifFrame2.f4127Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                int i6 = this.f4153Wwwwwwwwwwwwwwwwwww;
                int i7 = i5 / i6;
                int i8 = gifFrame2.f4129Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww / i6;
                int i9 = gifFrame2.f4128Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww / i6;
                int i10 = gifFrame2.f4130Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww / i6;
                int i11 = this.f4151Wwwwwwwwwwwwwwwww;
                int i12 = (i8 * i11) + i10;
                int i13 = (i7 * i11) + i12;
                while (i12 < i13) {
                    int i14 = i12 + i9;
                    for (int i15 = i12; i15 < i14; i15++) {
                        iArr[i15] = i3;
                    }
                    i12 += this.f4151Wwwwwwwwwwwwwwwww;
                }
            } else if (i2 == 3 && (bitmap = this.f4156Wwwwwwwwwwwwwwwwwwwwww) != null) {
                int i16 = this.f4151Wwwwwwwwwwwwwwwww;
                bitmap.getPixels(iArr, 0, i16, 0, 0, i16, this.f4152Wwwwwwwwwwwwwwwwww);
            }
        }
        Wwwwwwwwwwwwwwwwwwwwwww(gifFrame);
        if (!gifFrame.f4126Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f4153Wwwwwwwwwwwwwwwwwww == 1) {
            Wwwwwwwwwwwwwwwwwwwwwwww(gifFrame);
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwww(gifFrame);
        }
        if (this.f4155Wwwwwwwwwwwwwwwwwwwww && ((i = gifFrame.f4124Wwwwwwwwwwwwwwwwwwwwwwwwwwww) == 0 || i == 1)) {
            if (this.f4156Wwwwwwwwwwwwwwwwwwwwww == null) {
                this.f4156Wwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwww();
            }
            Bitmap bitmap3 = this.f4156Wwwwwwwwwwwwwwwwwwwwww;
            int i17 = this.f4151Wwwwwwwwwwwwwwwww;
            bitmap3.setPixels(iArr, 0, i17, 0, 0, i17, this.f4152Wwwwwwwwwwwwwwwwww);
        }
        Bitmap Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww();
        int i18 = this.f4151Wwwwwwwwwwwwwwwww;
        Wwwwwwwwwwwwwwwwwwwww2.setPixels(iArr, 0, i18, 0, 0, i18, this.f4152Wwwwwwwwwwwwwwwwww);
        return Wwwwwwwwwwwwwwwwwwwww2;
    }

    public synchronized void Wwwwwwwwwwwwwwwwww(@NonNull GifHeader gifHeader, @NonNull ByteBuffer byteBuffer, int i) {
        try {
            if (i > 0) {
                int highestOneBit = Integer.highestOneBit(i);
                this.f4154Wwwwwwwwwwwwwwwwwwww = 0;
                this.f4157Wwwwwwwwwwwwwwwwwwwwwww = gifHeader;
                this.f4158Wwwwwwwwwwwwwwwwwwwwwwww = -1;
                ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                this.f4165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = asReadOnlyBuffer;
                asReadOnlyBuffer.position(0);
                this.f4165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.order(ByteOrder.LITTLE_ENDIAN);
                this.f4155Wwwwwwwwwwwwwwwwwwwww = false;
                Iterator<GifFrame> it = gifHeader.f4139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else if (it.next().f4124Wwwwwwwwwwwwwwwwwwwwwwwwwwww == 3) {
                        this.f4155Wwwwwwwwwwwwwwwwwwwww = true;
                        break;
                    }
                }
                this.f4153Wwwwwwwwwwwwwwwwwww = highestOneBit;
                int i2 = gifHeader.f4138Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                this.f4151Wwwwwwwwwwwwwwwww = i2 / highestOneBit;
                int i3 = gifHeader.f4137Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                this.f4152Wwwwwwwwwwwwwwwwww = i3 / highestOneBit;
                this.f4160Wwwwwwwwwwwwwwwwwwwwwwwwww = this.f4166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2 * i3);
                this.f4159Wwwwwwwwwwwwwwwwwwwwwwwww = this.f4166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4151Wwwwwwwwwwwwwwwww * this.f4152Wwwwwwwwwwwwwwwwww);
            } else {
                throw new IllegalArgumentException("Sample size must be >=0, not: " + i);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final int Wwwwwwwwwwwwwwwwwww() {
        return this.f4165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get() & 255;
    }

    public final int Wwwwwwwwwwwwwwwwwwww() {
        int Wwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwww2 <= 0) {
            return Wwwwwwwwwwwwwwwwwww2;
        }
        ByteBuffer byteBuffer = this.f4165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        byteBuffer.get(this.f4164Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, 0, Math.min(Wwwwwwwwwwwwwwwwwww2, byteBuffer.remaining()));
        return Wwwwwwwwwwwwwwwwwww2;
    }

    public final Bitmap Wwwwwwwwwwwwwwwwwwwww() {
        Bitmap.Config config;
        Boolean bool = this.f4150Wwwwwwwwwwwwwwww;
        if (bool != null && !bool.booleanValue()) {
            config = this.f4149Wwwwwwwwwwwwwww;
        } else {
            config = Bitmap.Config.ARGB_8888;
        }
        Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4151Wwwwwwwwwwwwwwwww, this.f4152Wwwwwwwwwwwwwwwwww, config);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.setHasAlpha(true);
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public int Wwwwwwwwwwwwwwwwwwwwww(int i) {
        if (i >= 0) {
            GifHeader gifHeader = this.f4157Wwwwwwwwwwwwwwwwwwwwwww;
            if (i < gifHeader.f4141Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return gifHeader.f4139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i).f4122Wwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            return -1;
        }
        return -1;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww(GifFrame gifFrame) {
        int i;
        int i2;
        byte[] bArr;
        short s;
        StandardGifDecoder standardGifDecoder = this;
        if (gifFrame != null) {
            standardGifDecoder.f4165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.position(gifFrame.f4121Wwwwwwwwwwwwwwwwwwwwwwwww);
        }
        if (gifFrame == null) {
            GifHeader gifHeader = standardGifDecoder.f4157Wwwwwwwwwwwwwwwwwwwwwww;
            i = gifHeader.f4138Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            i2 = gifHeader.f4137Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } else {
            i = gifFrame.f4128Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            i2 = gifFrame.f4127Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        int i3 = i * i2;
        byte[] bArr2 = standardGifDecoder.f4160Wwwwwwwwwwwwwwwwwwwwwwwwww;
        if (bArr2 == null || bArr2.length < i3) {
            standardGifDecoder.f4160Wwwwwwwwwwwwwwwwwwwwwwwwww = standardGifDecoder.f4166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i3);
        }
        byte[] bArr3 = standardGifDecoder.f4160Wwwwwwwwwwwwwwwwwwwwwwwwww;
        if (standardGifDecoder.f4163Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            standardGifDecoder.f4163Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new short[4096];
        }
        short[] sArr = standardGifDecoder.f4163Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (standardGifDecoder.f4162Wwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            standardGifDecoder.f4162Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new byte[4096];
        }
        byte[] bArr4 = standardGifDecoder.f4162Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (standardGifDecoder.f4161Wwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            standardGifDecoder.f4161Wwwwwwwwwwwwwwwwwwwwwwwwwww = new byte[FragmentTransaction.TRANSIT_FRAGMENT_OPEN];
        }
        byte[] bArr5 = standardGifDecoder.f4161Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        int Wwwwwwwwwwwwwwwwwww2 = standardGifDecoder.Wwwwwwwwwwwwwwwwwww();
        int i4 = 1 << Wwwwwwwwwwwwwwwwwww2;
        int i5 = i4 + 1;
        int i6 = i4 + 2;
        int i7 = Wwwwwwwwwwwwwwwwwww2 + 1;
        int i8 = (1 << i7) - 1;
        byte b = 0;
        for (int i9 = 0; i9 < i4; i9++) {
            sArr[i9] = 0;
            bArr4[i9] = (byte) i9;
        }
        byte[] bArr6 = standardGifDecoder.f4164Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i10 = i7;
        int i11 = i6;
        int i12 = i8;
        int i13 = 0;
        int i14 = 0;
        byte b2 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = -1;
        while (true) {
            if (i13 >= i3) {
                break;
            }
            if (i14 == 0) {
                i14 = standardGifDecoder.Wwwwwwwwwwwwwwwwwwww();
                if (i14 <= 0) {
                    standardGifDecoder.f4154Wwwwwwwwwwwwwwwwwwww = 3;
                    break;
                }
                b2 = b;
            }
            i16 += (bArr6[b2] & 255) << i15;
            b2++;
            i14--;
            int i21 = i15 + 8;
            int i22 = i11;
            int i23 = i10;
            int i24 = i20;
            short[] sArr2 = sArr;
            int i25 = i18;
            while (true) {
                bArr = bArr4;
                if (i21 >= i23) {
                    int i26 = i16 & i12;
                    i16 >>= i23;
                    i21 -= i23;
                    if (i26 == i4) {
                        i23 = i7;
                        i22 = i6;
                        i12 = i8;
                        bArr4 = bArr;
                        i24 = -1;
                    } else if (i26 == i5) {
                        i18 = i25;
                        i11 = i22;
                        break;
                    } else {
                        byte[] bArr7 = bArr5;
                        if (i24 == -1) {
                            bArr3[i17] = bArr[i26];
                            i17++;
                            i13++;
                            i24 = i26;
                            i25 = i24;
                            bArr4 = bArr;
                            bArr5 = bArr7;
                        } else {
                            if (i26 >= i22) {
                                bArr7[i19] = (byte) i25;
                                i19++;
                                s = i24;
                            } else {
                                s = i26;
                            }
                            while (s >= i4) {
                                bArr7[i19] = bArr[s];
                                i19++;
                                s = sArr2[s];
                            }
                            int i27 = bArr[s] & 255;
                            byte b3 = (byte) i27;
                            bArr3[i17] = b3;
                            while (true) {
                                i17++;
                                i13++;
                                if (i19 <= 0) {
                                    break;
                                }
                                i19--;
                                bArr3[i17] = bArr7[i19];
                            }
                            if (i22 < 4096) {
                                sArr2[i22] = (short) i24;
                                bArr[i22] = b3;
                                i22++;
                                if ((i22 & i12) == 0 && i22 < 4096) {
                                    i23++;
                                    i12 += i22;
                                }
                            }
                            i24 = i26;
                            bArr4 = bArr;
                            bArr5 = bArr7;
                            i25 = i27;
                        }
                    }
                } else {
                    i11 = i22;
                    i18 = i25;
                    break;
                }
            }
            i15 = i21;
            sArr = sArr2;
            bArr4 = bArr;
            b = 0;
            i20 = i24;
            i10 = i23;
            standardGifDecoder = this;
        }
        Arrays.fill(bArr3, i17, i3, b);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(GifFrame gifFrame) {
        boolean z;
        boolean z2;
        GifFrame gifFrame2 = gifFrame;
        int[] iArr = this.f4159Wwwwwwwwwwwwwwwwwwwwwwwww;
        int i = gifFrame2.f4127Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i2 = gifFrame2.f4129Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i3 = gifFrame2.f4128Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i4 = gifFrame2.f4130Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (this.f4158Wwwwwwwwwwwwwwwwwwwwwwww == 0) {
            z = true;
        } else {
            z = false;
        }
        int i5 = this.f4151Wwwwwwwwwwwwwwwww;
        byte[] bArr = this.f4160Wwwwwwwwwwwwwwwwwwwwwwwwww;
        int[] iArr2 = this.f4168Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i6 = 0;
        byte b = -1;
        while (i6 < i) {
            int i7 = (i6 + i2) * i5;
            int i8 = i7 + i4;
            int i9 = i8 + i3;
            int i10 = i7 + i5;
            if (i10 < i9) {
                i9 = i10;
            }
            int i11 = gifFrame2.f4128Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww * i6;
            int i12 = i8;
            while (i12 < i9) {
                byte b2 = bArr[i11];
                int[] iArr3 = iArr;
                int i13 = b2 & 255;
                if (i13 != b) {
                    int i14 = iArr2[i13];
                    if (i14 != 0) {
                        iArr3[i12] = i14;
                    } else {
                        b = b2;
                    }
                }
                i11++;
                i12++;
                iArr = iArr3;
            }
            i6++;
            gifFrame2 = gifFrame;
        }
        Boolean bool = this.f4150Wwwwwwwwwwwwwwww;
        if ((bool != null && bool.booleanValue()) || (this.f4150Wwwwwwwwwwwwwwww == null && z && b != -1)) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.f4150Wwwwwwwwwwwwwwww = Boolean.valueOf(z2);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(GifFrame gifFrame) {
        boolean z;
        boolean booleanValue;
        int i;
        int i2;
        boolean z2;
        int i3;
        int i4;
        int[] iArr = this.f4159Wwwwwwwwwwwwwwwwwwwwwwwww;
        int i5 = gifFrame.f4127Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i6 = this.f4153Wwwwwwwwwwwwwwwwwww;
        int i7 = i5 / i6;
        int i8 = gifFrame.f4129Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww / i6;
        int i9 = gifFrame.f4128Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww / i6;
        int i10 = gifFrame.f4130Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww / i6;
        if (this.f4158Wwwwwwwwwwwwwwwwwwwwwwww == 0) {
            z = true;
        } else {
            z = false;
        }
        int i11 = this.f4151Wwwwwwwwwwwwwwwww;
        int i12 = this.f4152Wwwwwwwwwwwwwwwwww;
        byte[] bArr = this.f4160Wwwwwwwwwwwwwwwwwwwwwwwwww;
        int[] iArr2 = this.f4168Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        Boolean bool = this.f4150Wwwwwwwwwwwwwwww;
        int i13 = 8;
        int i14 = 0;
        int i15 = 0;
        int i16 = 1;
        while (i15 < i7) {
            int[] iArr3 = iArr;
            if (gifFrame.f4126Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                if (i14 >= i7) {
                    int i17 = i16 + 1;
                    i = i7;
                    if (i17 != 2) {
                        if (i17 != 3) {
                            if (i17 != 4) {
                                i16 = i17;
                            } else {
                                i16 = i17;
                                i14 = 1;
                                i13 = 2;
                            }
                        } else {
                            i16 = i17;
                            i13 = 4;
                            i14 = 2;
                        }
                    } else {
                        i16 = i17;
                        i14 = 4;
                    }
                } else {
                    i = i7;
                }
                i2 = i14 + i13;
            } else {
                i = i7;
                i2 = i14;
                i14 = i15;
            }
            int i18 = i14 + i8;
            if (i6 == 1) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (i18 < i12) {
                int i19 = i18 * i11;
                int i20 = i19 + i10;
                int i21 = i20 + i9;
                int i22 = i19 + i11;
                if (i22 < i21) {
                    i21 = i22;
                }
                i3 = i2;
                int i23 = i15 * i6 * gifFrame.f4128Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (z2) {
                    int i24 = i20;
                    while (i24 < i21) {
                        int i25 = i24;
                        int i26 = iArr2[bArr[i23] & 255];
                        if (i26 != 0) {
                            iArr3[i25] = i26;
                        } else if (z && bool == null) {
                            bool = Boolean.TRUE;
                        }
                        i23 += i6;
                        i24 = i25 + 1;
                    }
                } else {
                    int i27 = ((i21 - i20) * i6) + i23;
                    i4 = i6;
                    int i28 = i20;
                    while (i28 < i21) {
                        int i29 = i21;
                        int Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww(i23, i27, gifFrame.f4128Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 != 0) {
                            iArr3[i28] = Wwwwwwwwwwwwwwwwwwwwwwwwww2;
                        } else if (z && bool == null) {
                            bool = Boolean.TRUE;
                        }
                        i23 += i4;
                        i28++;
                        i21 = i29;
                    }
                    i15++;
                    i6 = i4;
                    iArr = iArr3;
                    i7 = i;
                    i14 = i3;
                }
            } else {
                i3 = i2;
            }
            i4 = i6;
            i15++;
            i6 = i4;
            iArr = iArr3;
            i7 = i;
            i14 = i3;
        }
        if (this.f4150Wwwwwwwwwwwwwwww == null) {
            if (bool == null) {
                booleanValue = false;
            } else {
                booleanValue = bool.booleanValue();
            }
            this.f4150Wwwwwwwwwwwwwwww = Boolean.valueOf(booleanValue);
        }
    }

    @ColorInt
    public final int Wwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, int i3) {
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        for (int i9 = i; i9 < this.f4153Wwwwwwwwwwwwwwwwwww + i; i9++) {
            byte[] bArr = this.f4160Wwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i9 >= bArr.length || i9 >= i2) {
                break;
            }
            int i10 = this.f4168Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[bArr[i9] & 255];
            if (i10 != 0) {
                i4 += (i10 >> 24) & 255;
                i5 += (i10 >> 16) & 255;
                i6 += (i10 >> 8) & 255;
                i7 += i10 & 255;
                i8++;
            }
        }
        int i11 = i + i3;
        for (int i12 = i11; i12 < this.f4153Wwwwwwwwwwwwwwwwwww + i11; i12++) {
            byte[] bArr2 = this.f4160Wwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i12 >= bArr2.length || i12 >= i2) {
                break;
            }
            int i13 = this.f4168Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[bArr2[i12] & 255];
            if (i13 != 0) {
                i4 += (i13 >> 24) & 255;
                i5 += (i13 >> 16) & 255;
                i6 += (i13 >> 8) & 255;
                i7 += i13 & 255;
                i8++;
            }
        }
        if (i8 == 0) {
            return 0;
        }
        return ((i4 / i8) << 24) | ((i5 / i8) << 16) | ((i6 / i8) << 8) | (i7 / i8);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.limit() + this.f4160Wwwwwwwwwwwwwwwwwwwwwwwwww.length + (this.f4159Wwwwwwwwwwwwwwwwwwwwwwwww.length * 4);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4158Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f4158Wwwwwwwwwwwwwwwwwwwwwwww = -1;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        int i;
        if (this.f4157Wwwwwwwwwwwwwwwwwwwwwww.f4141Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww > 0 && (i = this.f4158Wwwwwwwwwwwwwwwwwwwwwwww) >= 0) {
            return Wwwwwwwwwwwwwwwwwwwwww(i);
        }
        return 0;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Bitmap.Config config) {
        Bitmap.Config config2;
        Bitmap.Config config3 = Bitmap.Config.ARGB_8888;
        if (config != config3 && config != (config2 = Bitmap.Config.RGB_565)) {
            throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + config3 + " or " + config2);
        }
        this.f4149Wwwwwwwwwwwwwww = config;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4157Wwwwwwwwwwwwwwwwwwwwwww.f4141Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f4158Wwwwwwwwwwwwwwwwwwwwwwww = (this.f4158Wwwwwwwwwwwwwwwwwwwwwwww + 1) % this.f4157Wwwwwwwwwwwwwwwwwwwwwww.f4141Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x002f A[Catch: all -> 0x000d, TryCatch #0 {all -> 0x000d, blocks: (B:3:0x0001, B:5:0x0008, B:14:0x001f, B:19:0x0028, B:21:0x002f, B:22:0x0039, B:24:0x004a, B:26:0x0056, B:30:0x005f, B:32:0x0063, B:35:0x0067, B:37:0x006b, B:39:0x007d, B:41:0x0081, B:42:0x0085, B:29:0x005b, B:10:0x0010, B:12:0x0019, B:13:0x001d), top: B:49:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004a A[Catch: all -> 0x000d, TryCatch #0 {all -> 0x000d, blocks: (B:3:0x0001, B:5:0x0008, B:14:0x001f, B:19:0x0028, B:21:0x002f, B:22:0x0039, B:24:0x004a, B:26:0x0056, B:30:0x005f, B:32:0x0063, B:35:0x0067, B:37:0x006b, B:39:0x007d, B:41:0x0081, B:42:0x0085, B:29:0x005b, B:10:0x0010, B:12:0x0019, B:13:0x001d), top: B:49:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005b A[Catch: all -> 0x000d, TryCatch #0 {all -> 0x000d, blocks: (B:3:0x0001, B:5:0x0008, B:14:0x001f, B:19:0x0028, B:21:0x002f, B:22:0x0039, B:24:0x004a, B:26:0x0056, B:30:0x005f, B:32:0x0063, B:35:0x0067, B:37:0x006b, B:39:0x007d, B:41:0x0081, B:42:0x0085, B:29:0x005b, B:10:0x0010, B:12:0x0019, B:13:0x001d), top: B:49:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0063 A[Catch: all -> 0x000d, TRY_LEAVE, TryCatch #0 {all -> 0x000d, blocks: (B:3:0x0001, B:5:0x0008, B:14:0x001f, B:19:0x0028, B:21:0x002f, B:22:0x0039, B:24:0x004a, B:26:0x0056, B:30:0x005f, B:32:0x0063, B:35:0x0067, B:37:0x006b, B:39:0x007d, B:41:0x0081, B:42:0x0085, B:29:0x005b, B:10:0x0010, B:12:0x0019, B:13:0x001d), top: B:49:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0067 A[Catch: all -> 0x000d, TRY_ENTER, TryCatch #0 {all -> 0x000d, blocks: (B:3:0x0001, B:5:0x0008, B:14:0x001f, B:19:0x0028, B:21:0x002f, B:22:0x0039, B:24:0x004a, B:26:0x0056, B:30:0x005f, B:32:0x0063, B:35:0x0067, B:37:0x006b, B:39:0x007d, B:41:0x0081, B:42:0x0085, B:29:0x005b, B:10:0x0010, B:12:0x0019, B:13:0x001d), top: B:49:0x0001 }] */
    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized android.graphics.Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        /*
            r7 = this;
            monitor-enter(r7)
            com.bumptech.glide.gifdecoder.GifHeader r0 = r7.f4157Wwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Ld
            int r0 = r0.f4141Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Ld
            r1 = 1
            if (r0 <= 0) goto L10
            int r0 = r7.f4158Wwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Ld
            if (r0 >= 0) goto L1f
            goto L10
        Ld:
            r0 = move-exception
            goto L8d
        L10:
            java.lang.String r0 = com.bumptech.glide.gifdecoder.StandardGifDecoder.f4148Wwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Ld
            r2 = 3
            boolean r0 = android.util.Log.isLoggable(r0, r2)     // Catch: java.lang.Throwable -> Ld
            if (r0 == 0) goto L1d
            com.bumptech.glide.gifdecoder.GifHeader r0 = r7.f4157Wwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Ld
            int r0 = r0.f4141Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Ld
        L1d:
            r7.f4154Wwwwwwwwwwwwwwwwwwww = r1     // Catch: java.lang.Throwable -> Ld
        L1f:
            int r0 = r7.f4154Wwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Ld
            r2 = 0
            if (r0 == r1) goto L8b
            r3 = 2
            if (r0 != r3) goto L28
            goto L8b
        L28:
            r0 = 0
            r7.f4154Wwwwwwwwwwwwwwwwwwww = r0     // Catch: java.lang.Throwable -> Ld
            byte[] r4 = r7.f4164Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Ld
            if (r4 != 0) goto L39
            com.bumptech.glide.gifdecoder.GifDecoder$BitmapProvider r4 = r7.f4166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Ld
            r5 = 255(0xff, float:3.57E-43)
            byte[] r4 = r4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r5)     // Catch: java.lang.Throwable -> Ld
            r7.f4164Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r4     // Catch: java.lang.Throwable -> Ld
        L39:
            com.bumptech.glide.gifdecoder.GifHeader r4 = r7.f4157Wwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Ld
            java.util.List<com.bumptech.glide.gifdecoder.GifFrame> r4 = r4.f4139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Ld
            int r5 = r7.f4158Wwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Ld
            java.lang.Object r4 = r4.get(r5)     // Catch: java.lang.Throwable -> Ld
            com.bumptech.glide.gifdecoder.GifFrame r4 = (com.bumptech.glide.gifdecoder.GifFrame) r4     // Catch: java.lang.Throwable -> Ld
            int r5 = r7.f4158Wwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Ld
            int r5 = r5 - r1
            if (r5 < 0) goto L55
            com.bumptech.glide.gifdecoder.GifHeader r6 = r7.f4157Wwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Ld
            java.util.List<com.bumptech.glide.gifdecoder.GifFrame> r6 = r6.f4139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Ld
            java.lang.Object r5 = r6.get(r5)     // Catch: java.lang.Throwable -> Ld
            com.bumptech.glide.gifdecoder.GifFrame r5 = (com.bumptech.glide.gifdecoder.GifFrame) r5     // Catch: java.lang.Throwable -> Ld
            goto L56
        L55:
            r5 = r2
        L56:
            int[] r6 = r4.f4120Wwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Ld
            if (r6 == 0) goto L5b
            goto L5f
        L5b:
            com.bumptech.glide.gifdecoder.GifHeader r6 = r7.f4157Wwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Ld
            int[] r6 = r6.f4143Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Ld
        L5f:
            r7.f4168Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r6     // Catch: java.lang.Throwable -> Ld
            if (r6 != 0) goto L67
            r7.f4154Wwwwwwwwwwwwwwwwwwww = r1     // Catch: java.lang.Throwable -> Ld
            monitor-exit(r7)
            return r2
        L67:
            boolean r1 = r4.f4125Wwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Ld
            if (r1 == 0) goto L85
            int[] r1 = r7.f4167Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Ld
            int r2 = r6.length     // Catch: java.lang.Throwable -> Ld
            java.lang.System.arraycopy(r6, r0, r1, r0, r2)     // Catch: java.lang.Throwable -> Ld
            int[] r1 = r7.f4167Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Ld
            r7.f4168Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r1     // Catch: java.lang.Throwable -> Ld
            int r2 = r4.f4123Wwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Ld
            r1[r2] = r0     // Catch: java.lang.Throwable -> Ld
            int r0 = r4.f4124Wwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Ld
            if (r0 != r3) goto L85
            int r0 = r7.f4158Wwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Ld
            if (r0 != 0) goto L85
            java.lang.Boolean r0 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> Ld
            r7.f4150Wwwwwwwwwwwwwwww = r0     // Catch: java.lang.Throwable -> Ld
        L85:
            android.graphics.Bitmap r0 = r7.Wwwwwwwwwwwwwwwww(r4, r5)     // Catch: java.lang.Throwable -> Ld
            monitor-exit(r7)
            return r0
        L8b:
            monitor-exit(r7)
            return r2
        L8d:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> Ld
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.gifdecoder.StandardGifDecoder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww():android.graphics.Bitmap");
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public void clear() {
        this.f4157Wwwwwwwwwwwwwwwwwwwwwww = null;
        byte[] bArr = this.f4160Wwwwwwwwwwwwwwwwwwwwwwwwww;
        if (bArr != null) {
            this.f4166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr);
        }
        int[] iArr = this.f4159Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (iArr != null) {
            this.f4166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(iArr);
        }
        Bitmap bitmap = this.f4156Wwwwwwwwwwwwwwwwwwwwww;
        if (bitmap != null) {
            this.f4166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap);
        }
        this.f4156Wwwwwwwwwwwwwwwwwwwwww = null;
        this.f4165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f4150Wwwwwwwwwwwwwwww = null;
        byte[] bArr2 = this.f4164Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (bArr2 != null) {
            this.f4166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr2);
        }
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    @NonNull
    public ByteBuffer getData() {
        return this.f4165Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public StandardGifDecoder(@NonNull GifDecoder.BitmapProvider bitmapProvider) {
        this.f4167Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new int[256];
        this.f4149Wwwwwwwwwwwwwww = Bitmap.Config.ARGB_8888;
        this.f4166Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bitmapProvider;
        this.f4157Wwwwwwwwwwwwwwwwwwwwwww = new GifHeader();
    }
}
