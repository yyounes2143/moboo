package com.tencent.liteav.videobase.base;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface GLConstants {

    /* renamed from: a  reason: collision with root package name */
    public static final float[] f10362a = {1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    public static final float[] b = {1.0f, 0.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f};
    public static final float[] c = {-1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f};
    public static final float[] d = {-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f};
    public static final float[] e = {0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f};
    public static final float[] f = {1.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    public static final float[] g = {0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f};
    public static final float[] h = {1.0f, 1.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f};

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum ColorRange {
        UNKNOWN(0),
        VIDEO_RANGE(1),
        FULL_RANGE(2);
        
        private final int mJniValue;

        ColorRange(int i) {
            this.mJniValue = i;
        }

        public final int getValue() {
            return this.mJniValue;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum ColorSpace {
        UNKNOWN(0),
        BT601(1),
        BT709(2);
        
        private final int mJniValue;

        ColorSpace(int i) {
            this.mJniValue = i;
        }

        public final int getValue() {
            return this.mJniValue;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum GLScaleType {
        CENTER_CROP(0),
        FIT_CENTER(1),
        FILL(2);
        
        private static final GLScaleType[] d = values();
        public int mValue;

        GLScaleType(int i) {
            this.mValue = i;
        }

        public static GLScaleType a(int i) {
            GLScaleType[] gLScaleTypeArr;
            for (GLScaleType gLScaleType : d) {
                if (gLScaleType.mValue == i) {
                    return gLScaleType;
                }
            }
            return FIT_CENTER;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum PixelFormatType {
        I420(0),
        NV12(1),
        NV21(2),
        RGB(3),
        YUY2(4),
        RGBA(5),
        BGR(6),
        YV12(7),
        BGRA(8),
        ARGB(9),
        YUV422P(10),
        UYVY(11),
        YUYV(12),
        JPG(13),
        H264(14),
        MAX(100);
        
        private static final PixelFormatType[] q = values();
        private final int mJniValue;

        PixelFormatType(int i) {
            this.mJniValue = i;
        }

        public static PixelFormatType a(int i) {
            PixelFormatType[] pixelFormatTypeArr;
            for (PixelFormatType pixelFormatType : q) {
                if (pixelFormatType.mJniValue == i) {
                    return pixelFormatType;
                }
            }
            return null;
        }

        public final int getValue() {
            return this.mJniValue;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum a {
        BYTE_BUFFER(0),
        TEXTURE_2D(1),
        TEXTURE_OES(2),
        BYTE_ARRAY(3);
        
        private static final a[] e = values();
        public int mValue;

        a(int i) {
            this.mValue = i;
        }

        public static a a(int i) {
            a[] aVarArr;
            for (a aVar : e) {
                if (aVar.mValue == i) {
                    return aVar;
                }
            }
            return TEXTURE_2D;
        }
    }
}
