package com.bytedance.shadowhook;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class ShadowHook {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final int f5222Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = Mode.SHARED.getValue();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ILibLoader f5223Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static long f5224Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = -1;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static int f5225Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 2;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f5226Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f5227Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;

    /* compiled from: Proguard */
    /* renamed from: com.bytedance.shadowhook.ShadowHook$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final /* synthetic */ int[] f5228Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        static {
            int[] iArr = new int[RecordItem.values().length];
            f5228Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iArr;
            try {
                iArr[RecordItem.TIMESTAMP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5228Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[RecordItem.CALLER_LIB_NAME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5228Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[RecordItem.OP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f5228Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[RecordItem.LIB_NAME.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f5228Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[RecordItem.SYM_NAME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f5228Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[RecordItem.SYM_ADDR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f5228Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[RecordItem.NEW_ADDR.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f5228Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[RecordItem.BACKUP_LEN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f5228Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[RecordItem.ERRNO.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f5228Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[RecordItem.STUB.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f5228Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[RecordItem.FLAGS.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class Config {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f5229Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f5230Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f5231Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f5232Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public ILibLoader f5233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public void Wwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            this.f5230Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            this.f5232Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(ILibLoader iLibLoader) {
            this.f5233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iLibLoader;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            this.f5229Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            this.f5231Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f5230Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f5232Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public ILibLoader Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f5233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f5229Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f5231Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class ConfigBuilder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public ILibLoader f5238Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = ShadowHook.f5223Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f5237Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = ShadowHook.f5222Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f5236Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f5235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f5234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;

        public ConfigBuilder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Mode mode) {
            this.f5237Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = mode.getValue();
            return this;
        }

        public Config Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Config config = new Config();
            config.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5238Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            config.Wwwwwwwwwwwwwwwwwwwwwwwwww(this.f5237Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            config.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5236Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            config.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f5235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            config.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            return config;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface ILibLoader {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str);
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum Mode {
        SHARED(0),
        UNIQUE(1),
        MULTI(2);
        
        private final int value;

        Mode(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum RecordItem {
        TIMESTAMP,
        CALLER_LIB_NAME,
        OP,
        LIB_NAME,
        SYM_NAME,
        SYM_ADDR,
        NEW_ADDR,
        BACKUP_LEN,
        ERRNO,
        STUB,
        FLAGS
    }

    public static synchronized boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Config config) {
        synchronized (ShadowHook.class) {
            if (f5227Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return true;
            }
            if (config != null) {
                try {
                    if (config.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                        config.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("shadowhook");
                        f5227Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                        return true;
                    }
                } catch (Throwable unused) {
                    return false;
                }
            }
            System.loadLibrary("shadowhook");
            f5227Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            return true;
        }
    }

    public static synchronized int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Config config) {
        synchronized (ShadowHook.class) {
            if (f5226Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return f5225Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            f5226Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            long currentTimeMillis = System.currentTimeMillis();
            if (config == null) {
                config = new ConfigBuilder().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(config)) {
                f5225Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 100;
                f5224Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = System.currentTimeMillis() - currentTimeMillis;
                return f5225Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            if (config.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                nativeSetDisable(true);
            }
            if (config.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                nativeSetRecordable(config.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
            f5225Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = nativeInit(config.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), config.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            f5224Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = System.currentTimeMillis() - currentTimeMillis;
            return f5225Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    private static native String nativeGetArch();

    private static native boolean nativeGetDebuggable();

    private static native boolean nativeGetDisable();

    private static native int nativeGetInitErrno();

    private static native int nativeGetMode();

    private static native boolean nativeGetRecordable();

    private static native String nativeGetRecords(int i);

    private static native String nativeGetVersion();

    private static native int nativeInit(int i, boolean z);

    private static native void nativeSetDebuggable(boolean z);

    private static native void nativeSetDisable(boolean z);

    private static native void nativeSetRecordable(boolean z);

    private static native String nativeToErrmsg(int i);
}
