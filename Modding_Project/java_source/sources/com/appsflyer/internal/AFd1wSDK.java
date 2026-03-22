package com.appsflyer.internal;

import android.graphics.PointF;
import android.os.Build;
import androidx.annotation.WorkerThread;
import com.appsflyer.internal.AFd1xSDK;
import com.unity3d.services.core.di.ServiceProvider;
import com.vungle.ads.internal.protos.Sdk;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFd1wSDK implements AFd1xSDK {
    private static int $10 = 0;
    private static int $11 = 1;
    private static int AFKeystoreWrapper = 1;
    private static char copy = 10357;
    private static int copydefault = 0;
    private static char equals = 787;
    private static char hashCode = 7956;
    private static char toString = 48673;
    @NotNull
    private AFd1zSDK AFAdRevenueData;
    @Nullable
    private AFd1xSDK.AFa1vSDK component1;
    @NotNull
    private final Lazy getRevenue = LazyKt.lazy(new Function0<AFf1kSDK>() { // from class: com.appsflyer.internal.AFd1wSDK.4
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: getRevenue */
        public final AFf1kSDK invoke() {
            return AFd1wSDK.getCurrencyIso4217Code(AFd1wSDK.this).component1();
        }
    });
    @NotNull
    private final Lazy getMediationNetwork = LazyKt.lazy(new Function0<AFc1oSDK>() { // from class: com.appsflyer.internal.AFd1wSDK.3
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: getCurrencyIso4217Code */
        public final AFc1oSDK invoke() {
            return AFd1wSDK.getCurrencyIso4217Code(AFd1wSDK.this).AFAdRevenueData();
        }
    });
    @NotNull
    private final Lazy getMonetizationNetwork = LazyKt.lazy(new Function0<AFc1qSDK>() { // from class: com.appsflyer.internal.AFd1wSDK.2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: getCurrencyIso4217Code */
        public final AFc1qSDK invoke() {
            return AFd1wSDK.getCurrencyIso4217Code(AFd1wSDK.this).component4();
        }
    });
    @NotNull
    private final Lazy getCurrencyIso4217Code = LazyKt.lazy(new Function0<AFf1eSDK>() { // from class: com.appsflyer.internal.AFd1wSDK.6
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: getRevenue */
        public final AFf1eSDK invoke() {
            return AFd1wSDK.getCurrencyIso4217Code(AFd1wSDK.this).AFInAppEventType();
        }
    });
    @NotNull
    private final Lazy component2 = LazyKt.lazy(new Function0<ExecutorService>() { // from class: com.appsflyer.internal.AFd1wSDK.5
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: getMediationNetwork */
        public final ExecutorService invoke() {
            return AFd1wSDK.getCurrencyIso4217Code(AFd1wSDK.this).getMonetizationNetwork();
        }
    });
    @NotNull
    private final String component4 = "6.17.5";
    @NotNull
    private final Lazy component3 = LazyKt.lazy(new Function0<AFd1ySDK>() { // from class: com.appsflyer.internal.AFd1wSDK.1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: AFAdRevenueData */
        public final AFd1ySDK invoke() {
            return new AFd1ySDK(AFd1wSDK.getCurrencyIso4217Code(AFd1wSDK.this).AFInAppEventParameterName());
        }
    });
    @NotNull
    private final Lazy areAllFieldsValid = LazyKt.lazy(new Function0<AFd1vSDK>() { // from class: com.appsflyer.internal.AFd1wSDK.7
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: getMediationNetwork */
        public final AFd1vSDK invoke() {
            return new AFd1vSDK(AFd1wSDK.this.getRevenue());
        }
    });

    public AFd1wSDK(@NotNull AFd1zSDK aFd1zSDK) {
        this.AFAdRevenueData = aFd1zSDK;
    }

    private static /* synthetic */ Object AFAdRevenueData(Object[] objArr) {
        AFi1zSDK aFi1zSDK;
        AFKeystoreWrapper = (copydefault + 77) % 128;
        AFi1vSDK aFi1vSDK = ((AFd1wSDK) objArr[0]).getCurrencyIso4217Code().AFAdRevenueData.getCurrencyIso4217Code;
        if (aFi1vSDK == null || (aFi1zSDK = aFi1vSDK.getMonetizationNetwork) == null) {
            return null;
        }
        int i = AFKeystoreWrapper + 109;
        copydefault = i % 128;
        if (i % 2 == 0) {
            return aFi1zSDK.getCurrencyIso4217Code;
        }
        AFh1aSDK aFh1aSDK = aFi1zSDK.getCurrencyIso4217Code;
        throw null;
    }

    private static void a(String str, int i, Object[] objArr) {
        char[] cArr;
        if (str != null) {
            $11 = ($10 + 51) % 128;
            cArr = str.toCharArray();
        } else {
            cArr = str;
        }
        char[] cArr2 = cArr;
        AFk1qSDK aFk1qSDK = new AFk1qSDK();
        char[] cArr3 = new char[cArr2.length];
        aFk1qSDK.getRevenue = 0;
        char[] cArr4 = new char[2];
        while (true) {
            int i2 = aFk1qSDK.getRevenue;
            if (i2 >= cArr2.length) {
                break;
            }
            cArr4[0] = cArr2[i2];
            cArr4[1] = cArr2[i2 + 1];
            int i3 = 58224;
            for (int i4 = 0; i4 < 16; i4++) {
                char c = cArr4[1];
                char c2 = cArr4[0];
                char c3 = (char) (c - (((c2 + i3) ^ ((c2 << 4) + ((char) (toString ^ (-1199070254561146252L))))) ^ ((c2 >>> 5) + ((char) (copy ^ (-1199070254561146252L))))));
                cArr4[1] = c3;
                cArr4[0] = (char) (c2 - (((c3 >>> 5) + ((char) (hashCode ^ (-1199070254561146252L)))) ^ ((c3 + i3) ^ ((c3 << 4) + ((char) (equals ^ (-1199070254561146252L)))))));
                i3 -= 40503;
            }
            int i5 = aFk1qSDK.getRevenue;
            cArr3[i5] = cArr4[0];
            cArr3[i5 + 1] = cArr4[1];
            aFk1qSDK.getRevenue = i5 + 2;
        }
        String str2 = new String(cArr3, 0, i);
        int i6 = $10 + 97;
        $11 = i6 % 128;
        if (i6 % 2 == 0) {
            int i7 = 2 / 0;
            objArr[0] = str2;
            return;
        }
        objArr[0] = str2;
    }

    private final ExecutorService areAllFieldsValid() {
        copydefault = (AFKeystoreWrapper + 53) % 128;
        ExecutorService executorService = (ExecutorService) this.component2.getValue();
        AFKeystoreWrapper = (copydefault + 119) % 128;
        return executorService;
    }

    private final AFf1eSDK component1() {
        AFKeystoreWrapper = (copydefault + 109) % 128;
        AFf1eSDK aFf1eSDK = (AFf1eSDK) this.getCurrencyIso4217Code.getValue();
        copydefault = (AFKeystoreWrapper + 117) % 128;
        return aFf1eSDK;
    }

    private final AFc1qSDK component2() {
        return (AFc1qSDK) getMediationNetwork(new Object[]{this}, 1891172040, -1891172038, System.identityHashCode(this));
    }

    @NotNull
    private AFd1uSDK component3() {
        copydefault = (AFKeystoreWrapper + 75) % 128;
        AFd1uSDK aFd1uSDK = (AFd1uSDK) this.areAllFieldsValid.getValue();
        int i = copydefault + 77;
        AFKeystoreWrapper = i % 128;
        if (i % 2 == 0) {
            int i2 = 15 / 0;
        }
        return aFd1uSDK;
    }

    private final AFh1aSDK component4() {
        return (AFh1aSDK) getMediationNetwork(new Object[]{this}, -2108652204, 2108652208, System.identityHashCode(this));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003d, code lost:
        if (getMediationNetwork(r4) == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003f, code lost:
        com.appsflyer.internal.AFd1wSDK.copydefault = (com.appsflyer.internal.AFd1wSDK.AFKeystoreWrapper + 121) % 128;
        r5 = component1().getMediationNetwork();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x004f, code lost:
        if (r5 == null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0051, code lost:
        getMediationNetwork(new java.lang.Object[]{r10, new org.json.JSONObject(getMonetizationNetwork(getRevenue(r4), getRevenue().getRevenue())).toString(), r5}, -1856843688, 1856843689, java.lang.System.identityHashCode(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x007f, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0080, code lost:
        com.appsflyer.internal.AFh1ySDK.v$default(com.appsflyer.AFLogger.INSTANCE, com.appsflyer.internal.AFg1cSDK.EXCEPTION_MANAGER, "skipping", false, 4, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x008c, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x008d, code lost:
        r2 = com.appsflyer.internal.AFd1wSDK.AFKeystoreWrapper + 3;
        com.appsflyer.internal.AFd1wSDK.copydefault = r2 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0095, code lost:
        if ((r2 % 2) == 0) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0097, code lost:
        r0 = 18 / 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x009a, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0026, code lost:
        if (r4 != null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0037, code lost:
        if (r4 != null) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void copy() {
        /*
            r10 = this;
            r0 = 3
            r1 = 2
            r2 = 1
            r3 = 0
            int r4 = com.appsflyer.internal.AFd1wSDK.copydefault
            int r4 = r4 + 15
            int r5 = r4 % 128
            com.appsflyer.internal.AFd1wSDK.AFKeystoreWrapper = r5
            int r4 = r4 % r1
            r5 = 2108652208(0x7daf7ab0, float:2.915649E37)
            r6 = -2108652204(0xffffffff82508554, float:-1.531969E-37)
            if (r4 != 0) goto L29
            java.lang.Object[] r4 = new java.lang.Object[r2]
            r4[r3] = r10
            int r7 = java.lang.System.identityHashCode(r10)
            java.lang.Object r4 = getMediationNetwork(r4, r6, r5, r7)
            com.appsflyer.internal.AFh1aSDK r4 = (com.appsflyer.internal.AFh1aSDK) r4
            r5 = 33
            int r5 = r5 / r3
            if (r4 == 0) goto L8d
            goto L39
        L29:
            java.lang.Object[] r4 = new java.lang.Object[r2]
            r4[r3] = r10
            int r7 = java.lang.System.identityHashCode(r10)
            java.lang.Object r4 = getMediationNetwork(r4, r6, r5, r7)
            com.appsflyer.internal.AFh1aSDK r4 = (com.appsflyer.internal.AFh1aSDK) r4
            if (r4 == 0) goto L8d
        L39:
            boolean r5 = r10.getMediationNetwork(r4)
            if (r5 == 0) goto L80
            int r5 = com.appsflyer.internal.AFd1wSDK.AFKeystoreWrapper
            int r5 = r5 + 121
            int r5 = r5 % 128
            com.appsflyer.internal.AFd1wSDK.copydefault = r5
            com.appsflyer.internal.AFf1eSDK r5 = r10.component1()
            java.lang.String r5 = r5.getMediationNetwork()
            if (r5 == 0) goto L9a
            java.util.Map r4 = r10.getRevenue(r4)
            com.appsflyer.internal.AFc1cSDK r6 = r10.getRevenue()
            java.util.List r6 = r6.getRevenue()
            java.util.Map r4 = getMonetizationNetwork(r4, r6)
            org.json.JSONObject r6 = new org.json.JSONObject
            r6.<init>(r4)
            java.lang.String r4 = r6.toString()
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r0[r3] = r10
            r0[r2] = r4
            r0[r1] = r5
            int r1 = java.lang.System.identityHashCode(r10)
            r2 = -1856843688(0xffffffff9152d058, float:-1.663028E-28)
            r3 = 1856843689(0x6ead2fa9, float:2.6799262E28)
            getMediationNetwork(r0, r2, r3, r1)
            return
        L80:
            com.appsflyer.AFLogger r4 = com.appsflyer.AFLogger.INSTANCE
            com.appsflyer.internal.AFg1cSDK r5 = com.appsflyer.internal.AFg1cSDK.EXCEPTION_MANAGER
            r8 = 4
            r9 = 0
            java.lang.String r6 = "skipping"
            r7 = 0
            com.appsflyer.internal.AFh1ySDK.v$default(r4, r5, r6, r7, r8, r9)
            return
        L8d:
            int r2 = com.appsflyer.internal.AFd1wSDK.AFKeystoreWrapper
            int r2 = r2 + r0
            int r0 = r2 % 128
            com.appsflyer.internal.AFd1wSDK.copydefault = r0
            int r2 = r2 % r1
            if (r2 == 0) goto L9a
            r0 = 18
            int r0 = r0 / r3
        L9a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFd1wSDK.copy():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x013a, code lost:
        if (r10 != null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0141, code lost:
        if (r10 != null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0143, code lost:
        r10 = com.appsflyer.internal.AFd1rSDK.getMonetizationNetwork(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x017a, code lost:
        if (r2.intValue() == (-1)) goto L80;
     */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0168 A[Catch: all -> 0x0024, TryCatch #2 {all -> 0x0024, blocks: (B:4:0x0003, B:6:0x0021, B:10:0x0029, B:12:0x003d, B:15:0x0065, B:17:0x0075, B:19:0x007b, B:21:0x008e, B:23:0x0092, B:25:0x009f, B:27:0x00a9, B:29:0x00af, B:31:0x00bd, B:33:0x00c3, B:35:0x00d1, B:37:0x00d7, B:39:0x00dd, B:41:0x00e8, B:47:0x00f1, B:49:0x00ff, B:51:0x0105, B:53:0x010b, B:55:0x0111, B:57:0x0114, B:59:0x011a, B:61:0x012a, B:63:0x0135, B:72:0x0143, B:74:0x0149, B:76:0x0159, B:78:0x015d, B:80:0x0168, B:81:0x016d, B:90:0x017e, B:97:0x0205, B:99:0x0209, B:101:0x0219, B:102:0x021d, B:92:0x0196, B:94:0x01b4, B:95:0x01d0, B:87:0x0176, B:70:0x013f, B:96:0x01eb, B:82:0x0170, B:65:0x0139, B:43:0x00ed), top: B:109:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x016d A[Catch: all -> 0x0024, TRY_LEAVE, TryCatch #2 {all -> 0x0024, blocks: (B:4:0x0003, B:6:0x0021, B:10:0x0029, B:12:0x003d, B:15:0x0065, B:17:0x0075, B:19:0x007b, B:21:0x008e, B:23:0x0092, B:25:0x009f, B:27:0x00a9, B:29:0x00af, B:31:0x00bd, B:33:0x00c3, B:35:0x00d1, B:37:0x00d7, B:39:0x00dd, B:41:0x00e8, B:47:0x00f1, B:49:0x00ff, B:51:0x0105, B:53:0x010b, B:55:0x0111, B:57:0x0114, B:59:0x011a, B:61:0x012a, B:63:0x0135, B:72:0x0143, B:74:0x0149, B:76:0x0159, B:78:0x015d, B:80:0x0168, B:81:0x016d, B:90:0x017e, B:97:0x0205, B:99:0x0209, B:101:0x0219, B:102:0x021d, B:92:0x0196, B:94:0x01b4, B:95:0x01d0, B:87:0x0176, B:70:0x013f, B:96:0x01eb, B:82:0x0170, B:65:0x0139, B:43:0x00ed), top: B:109:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0176 A[Catch: all -> 0x0024, TryCatch #2 {all -> 0x0024, blocks: (B:4:0x0003, B:6:0x0021, B:10:0x0029, B:12:0x003d, B:15:0x0065, B:17:0x0075, B:19:0x007b, B:21:0x008e, B:23:0x0092, B:25:0x009f, B:27:0x00a9, B:29:0x00af, B:31:0x00bd, B:33:0x00c3, B:35:0x00d1, B:37:0x00d7, B:39:0x00dd, B:41:0x00e8, B:47:0x00f1, B:49:0x00ff, B:51:0x0105, B:53:0x010b, B:55:0x0111, B:57:0x0114, B:59:0x011a, B:61:0x012a, B:63:0x0135, B:72:0x0143, B:74:0x0149, B:76:0x0159, B:78:0x015d, B:80:0x0168, B:81:0x016d, B:90:0x017e, B:97:0x0205, B:99:0x0209, B:101:0x0219, B:102:0x021d, B:92:0x0196, B:94:0x01b4, B:95:0x01d0, B:87:0x0176, B:70:0x013f, B:96:0x01eb, B:82:0x0170, B:65:0x0139, B:43:0x00ed), top: B:109:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x017e A[Catch: all -> 0x0024, TryCatch #2 {all -> 0x0024, blocks: (B:4:0x0003, B:6:0x0021, B:10:0x0029, B:12:0x003d, B:15:0x0065, B:17:0x0075, B:19:0x007b, B:21:0x008e, B:23:0x0092, B:25:0x009f, B:27:0x00a9, B:29:0x00af, B:31:0x00bd, B:33:0x00c3, B:35:0x00d1, B:37:0x00d7, B:39:0x00dd, B:41:0x00e8, B:47:0x00f1, B:49:0x00ff, B:51:0x0105, B:53:0x010b, B:55:0x0111, B:57:0x0114, B:59:0x011a, B:61:0x012a, B:63:0x0135, B:72:0x0143, B:74:0x0149, B:76:0x0159, B:78:0x015d, B:80:0x0168, B:81:0x016d, B:90:0x017e, B:97:0x0205, B:99:0x0209, B:101:0x0219, B:102:0x021d, B:92:0x0196, B:94:0x01b4, B:95:0x01d0, B:87:0x0176, B:70:0x013f, B:96:0x01eb, B:82:0x0170, B:65:0x0139, B:43:0x00ed), top: B:109:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0196 A[Catch: all -> 0x0024, TryCatch #2 {all -> 0x0024, blocks: (B:4:0x0003, B:6:0x0021, B:10:0x0029, B:12:0x003d, B:15:0x0065, B:17:0x0075, B:19:0x007b, B:21:0x008e, B:23:0x0092, B:25:0x009f, B:27:0x00a9, B:29:0x00af, B:31:0x00bd, B:33:0x00c3, B:35:0x00d1, B:37:0x00d7, B:39:0x00dd, B:41:0x00e8, B:47:0x00f1, B:49:0x00ff, B:51:0x0105, B:53:0x010b, B:55:0x0111, B:57:0x0114, B:59:0x011a, B:61:0x012a, B:63:0x0135, B:72:0x0143, B:74:0x0149, B:76:0x0159, B:78:0x015d, B:80:0x0168, B:81:0x016d, B:90:0x017e, B:97:0x0205, B:99:0x0209, B:101:0x0219, B:102:0x021d, B:92:0x0196, B:94:0x01b4, B:95:0x01d0, B:87:0x0176, B:70:0x013f, B:96:0x01eb, B:82:0x0170, B:65:0x0139, B:43:0x00ed), top: B:109:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final synchronized void copydefault() {
        /*
            Method dump skipped, instructions count: 550
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFd1wSDK.copydefault():void");
    }

    private final synchronized void equals() {
        boolean z = false;
        synchronized (this) {
            try {
                copydefault = (AFKeystoreWrapper + 119) % 128;
                AFh1aSDK aFh1aSDK = (AFh1aSDK) getMediationNetwork(new Object[]{this}, -2108652204, 2108652208, System.identityHashCode(this));
                if (aFh1aSDK != null) {
                    if (aFh1aSDK.getMediationNetwork == -1) {
                        ((AFc1qSDK) getMediationNetwork(new Object[]{this}, 1891172040, -1891172038, System.identityHashCode(this))).AFAdRevenueData("af_send_exc_to_server_window");
                    } else if (((AFc1qSDK) getMediationNetwork(new Object[]{this}, 1891172040, -1891172038, System.identityHashCode(this))).getMonetizationNetwork("af_send_exc_to_server_window", -1L) == -1) {
                        AFKeystoreWrapper = (copydefault + 21) % 128;
                        getCurrencyIso4217Code(aFh1aSDK);
                    }
                    z = AFAdRevenueData(aFh1aSDK);
                }
                AFd1xSDK.AFa1vSDK aFa1vSDK = this.component1;
                if (aFa1vSDK != null) {
                    aFa1vSDK.onConfigurationChanged(z);
                    int i = AFKeystoreWrapper + 111;
                    copydefault = i % 128;
                    if (i % 2 == 0) {
                        return;
                    }
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final /* synthetic */ AFd1zSDK getCurrencyIso4217Code(AFd1wSDK aFd1wSDK) {
        int i = copydefault + 101;
        AFKeystoreWrapper = i % 128;
        int i2 = i % 2;
        AFd1zSDK aFd1zSDK = aFd1wSDK.AFAdRevenueData;
        if (i2 != 0) {
            return aFd1zSDK;
        }
        throw null;
    }

    public static /* synthetic */ Object getMediationNetwork(Object[] objArr, int i, int i2, int i3) {
        int i4 = (i * Sdk.SDKError.Reason.AD_LOAD_FAIL_RETRY_AFTER_VALUE) + (i2 * (-219));
        int i5 = ~((~i) | (~i2));
        int i6 = ~i3;
        int i7 = i4 + ((i5 | (~(i6 | i | i2))) * 220) + (((~(i6 | i2)) | i) * (-440)) + ((i | i2 | i3) * 220);
        return i7 != 1 ? i7 != 2 ? i7 != 3 ? i7 != 4 ? getMonetizationNetwork(objArr) : AFAdRevenueData(objArr) : getMediationNetwork(objArr) : getRevenue(objArr) : getCurrencyIso4217Code(objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getMonetizationNetwork(AFd1wSDK aFd1wSDK) {
        int i = copydefault + 13;
        AFKeystoreWrapper = i % 128;
        if (i % 2 != 0) {
            aFd1wSDK.copydefault();
        } else {
            aFd1wSDK.copydefault();
            throw null;
        }
    }

    private static /* synthetic */ Object getRevenue(Object[] objArr) {
        int i = copydefault + 25;
        AFKeystoreWrapper = i % 128;
        int i2 = i % 2;
        AFc1qSDK aFc1qSDK = (AFc1qSDK) ((AFd1wSDK) objArr[0]).getMonetizationNetwork.getValue();
        if (i2 == 0) {
            int i3 = 60 / 0;
        }
        AFKeystoreWrapper = (copydefault + 51) % 128;
        return aFc1qSDK;
    }

    private final AFf1kSDK getCurrencyIso4217Code() {
        copydefault = (AFKeystoreWrapper + 1) % 128;
        AFf1kSDK aFf1kSDK = (AFf1kSDK) this.getRevenue.getValue();
        int i = AFKeystoreWrapper + 1;
        copydefault = i % 128;
        if (i % 2 == 0) {
            return aFf1kSDK;
        }
        throw null;
    }

    private final AFc1oSDK getMediationNetwork() {
        copydefault = (AFKeystoreWrapper + 9) % 128;
        AFc1oSDK aFc1oSDK = (AFc1oSDK) this.getMediationNetwork.getValue();
        copydefault = (AFKeystoreWrapper + 21) % 128;
        return aFc1oSDK;
    }

    @NotNull
    public final AFc1cSDK getRevenue() {
        copydefault = (AFKeystoreWrapper + 93) % 128;
        AFc1cSDK aFc1cSDK = (AFc1cSDK) this.component3.getValue();
        int i = copydefault + 121;
        AFKeystoreWrapper = i % 128;
        if (i % 2 == 0) {
            int i2 = 3 / 0;
        }
        return aFc1cSDK;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getCurrencyIso4217Code(AFd1wSDK aFd1wSDK, Throwable th, String str) {
        AFh1aSDK aFh1aSDK = (AFh1aSDK) getMediationNetwork(new Object[]{aFd1wSDK}, -2108652204, 2108652208, System.identityHashCode(aFd1wSDK));
        if (aFh1aSDK != null) {
            int i = copydefault + 99;
            AFKeystoreWrapper = i % 128;
            if (i % 2 != 0 ? aFd1wSDK.AFAdRevenueData(aFh1aSDK) : !aFd1wSDK.AFAdRevenueData(aFh1aSDK)) {
                AFKeystoreWrapper = (copydefault + 91) % 128;
                aFd1wSDK.getRevenue().AFAdRevenueData(th, str);
                return;
            }
            AFKeystoreWrapper = (copydefault + 49) % 128;
        }
    }

    private static /* synthetic */ Object getMediationNetwork(Object[] objArr) {
        final AFd1wSDK aFd1wSDK = (AFd1wSDK) objArr[0];
        final Throwable th = (Throwable) objArr[1];
        final String str = (String) objArr[2];
        AFKeystoreWrapper = (copydefault + 49) % 128;
        aFd1wSDK.areAllFieldsValid().execute(new Runnable() { // from class: com.appsflyer.internal.Wwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                AFd1wSDK.getCurrencyIso4217Code(AFd1wSDK.this, th, str);
            }
        });
        int i = copydefault + 41;
        AFKeystoreWrapper = i % 128;
        if (i % 2 != 0) {
            return null;
        }
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getRevenue(AFd1wSDK aFd1wSDK) {
        int i = AFKeystoreWrapper + 61;
        copydefault = i % 128;
        if (i % 2 == 0) {
            aFd1wSDK.equals();
            copydefault = (AFKeystoreWrapper + 99) % 128;
            return;
        }
        aFd1wSDK.equals();
        throw null;
    }

    @Override // com.appsflyer.internal.AFd1xSDK
    public final void getMonetizationNetwork(@Nullable AFd1xSDK.AFa1vSDK aFa1vSDK) {
        int i = AFKeystoreWrapper + 31;
        copydefault = i % 128;
        if (i % 2 == 0) {
            this.component1 = aFa1vSDK;
            areAllFieldsValid().execute(new Runnable() { // from class: com.appsflyer.internal.Wwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    AFd1wSDK.getMonetizationNetwork(AFd1wSDK.this);
                }
            });
            return;
        }
        this.component1 = aFa1vSDK;
        areAllFieldsValid().execute(new Runnable() { // from class: com.appsflyer.internal.Wwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                AFd1wSDK.getMonetizationNetwork(AFd1wSDK.this);
            }
        });
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getMediationNetwork(AFd1wSDK aFd1wSDK) {
        AFKeystoreWrapper = (copydefault + 83) % 128;
        aFd1wSDK.copy();
        AFKeystoreWrapper = (copydefault + 45) % 128;
    }

    private final Map<String, String> getRevenue(AFh1aSDK aFh1aSDK) {
        Object[] objArr = new Object[1];
        a("炜桪ꪴ鐅⠖ᰫ", (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + 5, objArr);
        Map<String, String> mapOf = MapsKt.mapOf(TuplesKt.to(((String) objArr[0]).intern(), Build.BRAND), TuplesKt.to("model", Build.MODEL), TuplesKt.to("app_id", getMediationNetwork().getCurrencyIso4217Code.getMonetizationNetwork.getPackageName()), TuplesKt.to("p_ex", new AFa1uSDK().AFAdRevenueData()), TuplesKt.to("api", String.valueOf(Build.VERSION.SDK_INT)), TuplesKt.to(ServiceProvider.NAMED_SDK, this.component4), TuplesKt.to("uid", AFb1kSDK.getCurrencyIso4217Code(getMediationNetwork().getMediationNetwork)), TuplesKt.to("exc_config", aFh1aSDK.AFAdRevenueData()));
        int i = AFKeystoreWrapper + 111;
        copydefault = i % 128;
        if (i % 2 == 0) {
            return mapOf;
        }
        throw null;
    }

    @Override // com.appsflyer.internal.AFd1xSDK
    public final void AFAdRevenueData() {
        int i = AFKeystoreWrapper + 97;
        copydefault = i % 128;
        if (i % 2 != 0) {
            areAllFieldsValid().execute(new Runnable() { // from class: com.appsflyer.internal.Wwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    AFd1wSDK.getMediationNetwork(AFd1wSDK.this);
                }
            });
            int i2 = 82 / 0;
        } else {
            areAllFieldsValid().execute(new Runnable() { // from class: com.appsflyer.internal.Wwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    AFd1wSDK.getMediationNetwork(AFd1wSDK.this);
                }
            });
        }
        copydefault = (AFKeystoreWrapper + 119) % 128;
    }

    private final void getCurrencyIso4217Code(AFh1aSDK aFh1aSDK) {
        copydefault = (AFKeystoreWrapper + 97) % 128;
        int i = aFh1aSDK.getCurrencyIso4217Code;
        long currentTimeMillis = System.currentTimeMillis() + TimeUnit.DAYS.toMillis(aFh1aSDK.getMediationNetwork);
        AFc1qSDK aFc1qSDK = (AFc1qSDK) getMediationNetwork(new Object[]{this}, 1891172040, -1891172038, System.identityHashCode(this));
        aFc1qSDK.AFAdRevenueData("af_send_exc_to_server_window", currentTimeMillis);
        aFc1qSDK.getMediationNetwork("af_send_exc_min", i);
        int i2 = AFKeystoreWrapper + 17;
        copydefault = i2 % 128;
        if (i2 % 2 != 0) {
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0063, code lost:
        if (r2 == (-1)) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0067, code lost:
        if (r2 >= r8) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x006a, code lost:
        r0 = ((com.appsflyer.internal.AFc1qSDK) getMediationNetwork(new java.lang.Object[]{r14}, 1891172040, -1891172038, java.lang.System.identityHashCode(r14))).getRevenue("af_send_exc_min", -1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x007f, code lost:
        if (r0 == (-1)) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0081, code lost:
        r2 = com.appsflyer.internal.AFd1wSDK.AFKeystoreWrapper + 31;
        com.appsflyer.internal.AFd1wSDK.copydefault = r2 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x008b, code lost:
        if ((r2 % 2) == 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x008d, code lost:
        r3 = 95 / 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0098, code lost:
        if (getRevenue().getMediationNetwork() >= r0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a3, code lost:
        if (getRevenue().getMediationNetwork() >= r0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00aa, code lost:
        return getMonetizationNetwork(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ab, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00ac, code lost:
        r15 = com.appsflyer.internal.AFd1wSDK.copydefault + 63;
        com.appsflyer.internal.AFd1wSDK.AFKeystoreWrapper = r15 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b6, code lost:
        if ((r15 % 2) == 0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b8, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ba, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x003b, code lost:
        if (r15.getMonetizationNetwork < java.util.concurrent.TimeUnit.MILLISECONDS.toSeconds(r8)) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x005e, code lost:
        if (r15.getMonetizationNetwork < java.util.concurrent.TimeUnit.MILLISECONDS.toSeconds(r8)) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0060, code lost:
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean getMediationNetwork(com.appsflyer.internal.AFh1aSDK r15) {
        /*
            r14 = this;
            r0 = 1
            r1 = 0
            int r2 = com.appsflyer.internal.AFd1wSDK.copydefault
            int r2 = r2 + 19
            int r3 = r2 % 128
            com.appsflyer.internal.AFd1wSDK.AFKeystoreWrapper = r3
            int r2 = r2 % 2
            java.lang.String r3 = "af_send_exc_to_server_window"
            r4 = -1
            r6 = -1891172038(0xffffffff8f47013a, float:-9.811694E-30)
            r7 = 1891172040(0x70b8fec8, float:4.5802603E29)
            if (r2 != 0) goto L3e
            long r8 = java.lang.System.currentTimeMillis()
            java.lang.Object[] r2 = new java.lang.Object[r0]
            r2[r1] = r14
            int r10 = java.lang.System.identityHashCode(r14)
            java.lang.Object r2 = getMediationNetwork(r2, r7, r6, r10)
            com.appsflyer.internal.AFc1qSDK r2 = (com.appsflyer.internal.AFc1qSDK) r2
            long r2 = r2.getMonetizationNetwork(r3, r4)
            long r10 = r15.getMonetizationNetwork
            java.util.concurrent.TimeUnit r12 = java.util.concurrent.TimeUnit.MILLISECONDS
            long r12 = r12.toSeconds(r8)
            int r10 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            r11 = 9
            int r11 = r11 / r1
            if (r10 >= 0) goto L61
            goto L60
        L3e:
            long r8 = java.lang.System.currentTimeMillis()
            java.lang.Object[] r2 = new java.lang.Object[r0]
            r2[r1] = r14
            int r10 = java.lang.System.identityHashCode(r14)
            java.lang.Object r2 = getMediationNetwork(r2, r7, r6, r10)
            com.appsflyer.internal.AFc1qSDK r2 = (com.appsflyer.internal.AFc1qSDK) r2
            long r2 = r2.getMonetizationNetwork(r3, r4)
            long r10 = r15.getMonetizationNetwork
            java.util.concurrent.TimeUnit r12 = java.util.concurrent.TimeUnit.MILLISECONDS
            long r12 = r12.toSeconds(r8)
            int r10 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r10 >= 0) goto L61
        L60:
            return r1
        L61:
            int r4 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r4 == 0) goto Lac
            int r2 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1))
            if (r2 >= 0) goto L6a
            goto Lac
        L6a:
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r0[r1] = r14
            int r2 = java.lang.System.identityHashCode(r14)
            java.lang.Object r0 = getMediationNetwork(r0, r7, r6, r2)
            com.appsflyer.internal.AFc1qSDK r0 = (com.appsflyer.internal.AFc1qSDK) r0
            java.lang.String r2 = "af_send_exc_min"
            r3 = -1
            int r0 = r0.getRevenue(r2, r3)
            if (r0 == r3) goto Lab
            int r2 = com.appsflyer.internal.AFd1wSDK.AFKeystoreWrapper
            int r2 = r2 + 31
            int r3 = r2 % 128
            com.appsflyer.internal.AFd1wSDK.copydefault = r3
            int r2 = r2 % 2
            if (r2 == 0) goto L9b
            com.appsflyer.internal.AFc1cSDK r2 = r14.getRevenue()
            int r2 = r2.getMediationNetwork()
            r3 = 95
            int r3 = r3 / r1
            if (r2 >= r0) goto La6
            goto Lab
        L9b:
            com.appsflyer.internal.AFc1cSDK r2 = r14.getRevenue()
            int r2 = r2.getMediationNetwork()
            if (r2 >= r0) goto La6
            goto Lab
        La6:
            boolean r15 = r14.getMonetizationNetwork(r15)
            return r15
        Lab:
            return r1
        Lac:
            int r15 = com.appsflyer.internal.AFd1wSDK.copydefault
            int r15 = r15 + 63
            int r0 = r15 % 128
            com.appsflyer.internal.AFd1wSDK.AFKeystoreWrapper = r0
            int r15 = r15 % 2
            if (r15 == 0) goto Lb9
            return r1
        Lb9:
            r15 = 0
            throw r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFd1wSDK.getMediationNetwork(com.appsflyer.internal.AFh1aSDK):boolean");
    }

    private static /* synthetic */ Object getMonetizationNetwork(Object[] objArr) {
        final AFd1wSDK aFd1wSDK = (AFd1wSDK) objArr[0];
        int i = AFKeystoreWrapper + 77;
        copydefault = i % 128;
        if (i % 2 != 0) {
            aFd1wSDK.areAllFieldsValid().execute(new Runnable() { // from class: com.appsflyer.internal.Wwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    AFd1wSDK.getRevenue(AFd1wSDK.this);
                }
            });
            int i2 = 69 / 0;
            return null;
        }
        aFd1wSDK.areAllFieldsValid().execute(new Runnable() { // from class: com.appsflyer.internal.Wwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                AFd1wSDK.getRevenue(AFd1wSDK.this);
            }
        });
        return null;
    }

    private final boolean AFAdRevenueData(AFh1aSDK aFh1aSDK) {
        AFKeystoreWrapper = (copydefault + 29) % 128;
        long currentTimeMillis = System.currentTimeMillis();
        long monetizationNetwork = ((AFc1qSDK) getMediationNetwork(new Object[]{this}, 1891172040, -1891172038, System.identityHashCode(this))).getMonetizationNetwork("af_send_exc_to_server_window", -1L);
        if (aFh1aSDK.getMonetizationNetwork >= TimeUnit.MILLISECONDS.toSeconds(currentTimeMillis) && monetizationNetwork != -1) {
            AFKeystoreWrapper = (copydefault + 123) % 128;
            if (monetizationNetwork >= currentTimeMillis) {
                return getMonetizationNetwork(aFh1aSDK);
            }
        }
        return false;
    }

    private static Map<String, Object> getMonetizationNetwork(Map<String, ? extends Object> map, List<AFc1aSDK> list) {
        AFKeystoreWrapper = (copydefault + 121) % 128;
        Map<String, Object> mapOf = MapsKt.mapOf(TuplesKt.to("deviceInfo", map), TuplesKt.to("excs", AFd1qSDK.getMediationNetwork(list)));
        copydefault = (AFKeystoreWrapper + 15) % 128;
        return mapOf;
    }

    private final boolean getMonetizationNetwork(AFh1aSDK aFh1aSDK) {
        new AFd1pSDK();
        boolean currencyIso4217Code = AFd1pSDK.getCurrencyIso4217Code(this.component4, aFh1aSDK.getRevenue);
        int i = copydefault + 97;
        AFKeystoreWrapper = i % 128;
        if (i % 2 == 0) {
            int i2 = 79 / 0;
        }
        return currencyIso4217Code;
    }

    private static /* synthetic */ Object getCurrencyIso4217Code(Object[] objArr) {
        String str = (String) objArr[1];
        copydefault = (AFKeystoreWrapper + 61) % 128;
        ((AFd1wSDK) objArr[0]).component3().getMonetizationNetwork(str.getBytes(Charsets.UTF_8), MapsKt.mapOf(TuplesKt.to("Authorization", AFj1dSDK.getMonetizationNetwork(str, (String) objArr[2]))), 2000);
        int i = AFKeystoreWrapper + 69;
        copydefault = i % 128;
        if (i % 2 != 0) {
            int i2 = 36 / 0;
        }
        return null;
    }

    @Override // com.appsflyer.internal.AFd1xSDK
    public final void getMonetizationNetwork() {
        getMediationNetwork(new Object[]{this}, 452613973, -452613973, System.identityHashCode(this));
    }

    @Override // com.appsflyer.internal.AFd1xSDK
    public final void getMonetizationNetwork(@NotNull Throwable th, @NotNull String str) {
        getMediationNetwork(new Object[]{this, th, str}, -1045855402, 1045855405, System.identityHashCode(this));
    }

    @WorkerThread
    private final void getMediationNetwork(String str, String str2) {
        getMediationNetwork(new Object[]{this, str, str2}, -1856843688, 1856843689, System.identityHashCode(this));
    }
}
