package com.appsflyer.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import java.util.concurrent.ExecutorService;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@SourceDebugExtension({"SMAP\nMetaReferrer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MetaReferrer.kt\ncom/appsflyer/internal/referrer/MetaReferrer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,295:1\n1#2:296\n*E\n"})
/* loaded from: classes3.dex */
public final class AFj1ySDK extends AFi1cSDK {
    @NotNull
    private final AFc1oSDK AFAdRevenueData;
    @NotNull
    private final Runnable component2;
    @Nullable
    private String equals;
    @NotNull
    private final ExecutorService getCurrencyIso4217Code;
    @NotNull
    private final AFj1zSDK getMonetizationNetwork;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public /* synthetic */ class AFa1vSDK {
        public static final /* synthetic */ int[] getRevenue;

        static {
            int[] iArr = new int[AFj1zSDK.values().length];
            try {
                iArr[AFj1zSDK.FACEBOOK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AFj1zSDK.INSTAGRAM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AFj1zSDK.FACEBOOK_LITE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            getRevenue = iArr;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AFj1ySDK(@org.jetbrains.annotations.NotNull com.appsflyer.internal.AFc1oSDK r3, @org.jetbrains.annotations.NotNull java.util.concurrent.ExecutorService r4, @org.jetbrains.annotations.NotNull com.appsflyer.internal.AFj1zSDK r5, @org.jetbrains.annotations.NotNull java.lang.Runnable r6, @org.jetbrains.annotations.NotNull java.lang.Runnable r7) {
        /*
            r2 = this;
            int[] r0 = com.appsflyer.internal.AFj1qSDK.AFa1tSDK.getCurrencyIso4217Code
            int r1 = r5.ordinal()
            r0 = r0[r1]
            r1 = 1
            if (r0 == r1) goto L1d
            r1 = 2
            if (r0 == r1) goto L1a
            r1 = 3
            if (r0 != r1) goto L14
            java.lang.String r0 = "facebook_lite"
            goto L1f
        L14:
            kotlin.NoWhenBranchMatchedException r3 = new kotlin.NoWhenBranchMatchedException
            r3.<init>()
            throw r3
        L1a:
            java.lang.String r0 = "instagram"
            goto L1f
        L1d:
            java.lang.String r0 = "facebook"
        L1f:
            java.lang.String r1 = "app"
            r2.<init>(r1, r0, r3, r6)
            r2.AFAdRevenueData = r3
            r2.getCurrencyIso4217Code = r4
            r2.getMonetizationNetwork = r5
            r2.component2 = r7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFj1ySDK.<init>(com.appsflyer.internal.AFc1oSDK, java.util.concurrent.ExecutorService, com.appsflyer.internal.AFj1zSDK, java.lang.Runnable, java.lang.Runnable):void");
    }

    private static boolean AFAdRevenueData(Context context) {
        if (context.getPackageManager().resolveContentProvider("com.instagram.contentprovider.InstallReferrerProvider", 0) == null) {
            return false;
        }
        return true;
    }

    private static boolean component3(Context context) {
        if (context.getPackageManager().resolveContentProvider("com.facebook.lite.provider.InstallReferrerProvider", 0) == null) {
            return false;
        }
        return true;
    }

    private final boolean getCurrencyIso4217Code(Context context) {
        int i = AFa1vSDK.getRevenue[this.getMonetizationNetwork.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return component3(context);
                }
                throw new NoWhenBranchMatchedException();
            }
            return AFAdRevenueData(context);
        }
        return getMediationNetwork(context);
    }

    private static boolean getMediationNetwork(Context context) {
        if (context.getPackageManager().resolveContentProvider("com.facebook.katana.provider.InstallReferrerProvider", 0) == null) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x008a, code lost:
        if (r0 == null) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean getRevenue(android.content.Context r12) {
        /*
            r11 = this;
            boolean r0 = r11.getRevenue()
            r1 = 0
            if (r0 != 0) goto L14
            com.appsflyer.AFLogger r2 = com.appsflyer.AFLogger.INSTANCE
            com.appsflyer.internal.AFg1cSDK r3 = com.appsflyer.internal.AFg1cSDK.META_REFERRER
            r6 = 4
            r7 = 0
            java.lang.String r4 = "Referrer collection disallowed by counter."
            r5 = 0
            com.appsflyer.internal.AFh1ySDK.d$default(r2, r3, r4, r5, r6, r7)
            return r1
        L14:
            com.appsflyer.internal.AFc1oSDK r0 = r11.AFAdRevenueData
            java.lang.String r2 = "com.facebook.sdk.ApplicationId"
            java.lang.String r0 = r0.getCurrencyIso4217Code(r2)
            java.lang.String r2 = "fb"
            r3 = 0
            if (r0 == 0) goto L26
            java.lang.String r0 = kotlin.text.StringsKt.removePrefix(r0, r2)
            goto L27
        L26:
            r0 = r3
        L27:
            if (r0 == 0) goto L2f
            int r4 = r0.length()
            if (r4 != 0) goto L3c
        L2f:
            com.appsflyer.AFLogger r5 = com.appsflyer.AFLogger.INSTANCE
            com.appsflyer.internal.AFg1cSDK r6 = com.appsflyer.internal.AFg1cSDK.META_REFERRER
            r9 = 4
            r10 = 0
            java.lang.String r7 = "Facebook app id Manifest metadata is not found."
            r8 = 0
            com.appsflyer.internal.AFh1ySDK.d$default(r5, r6, r7, r8, r9, r10)
            r0 = r3
        L3c:
            if (r0 != 0) goto L8d
            com.appsflyer.internal.AFc1oSDK r0 = r11.AFAdRevenueData
            java.lang.String r4 = "facebook_application_id"
            java.lang.String r0 = r0.getRevenue(r4)
            if (r0 == 0) goto L4d
            java.lang.String r0 = kotlin.text.StringsKt.removePrefix(r0, r2)
            goto L4e
        L4d:
            r0 = r3
        L4e:
            if (r0 == 0) goto L56
            int r4 = r0.length()
            if (r4 != 0) goto L63
        L56:
            com.appsflyer.AFLogger r5 = com.appsflyer.AFLogger.INSTANCE
            com.appsflyer.internal.AFg1cSDK r6 = com.appsflyer.internal.AFg1cSDK.META_REFERRER
            r9 = 4
            r10 = 0
            java.lang.String r7 = "Facebook app id string resource is not found."
            r8 = 0
            com.appsflyer.internal.AFh1ySDK.d$default(r5, r6, r7, r8, r9, r10)
            r0 = r3
        L63:
            if (r0 != 0) goto L8d
            com.appsflyer.internal.AFc1oSDK r0 = r11.AFAdRevenueData
            java.lang.String r4 = "com.appsflyer.FacebookApplicationId"
            java.lang.String r0 = r0.getCurrencyIso4217Code(r4)
            if (r0 == 0) goto L74
            java.lang.String r0 = kotlin.text.StringsKt.removePrefix(r0, r2)
            goto L75
        L74:
            r0 = r3
        L75:
            if (r0 == 0) goto L7d
            int r2 = r0.length()
            if (r2 != 0) goto L8a
        L7d:
            com.appsflyer.AFLogger r4 = com.appsflyer.AFLogger.INSTANCE
            com.appsflyer.internal.AFg1cSDK r5 = com.appsflyer.internal.AFg1cSDK.META_REFERRER
            r8 = 4
            r9 = 0
            java.lang.String r6 = "AF Facebook app id Manifest metadata is not found."
            r7 = 0
            com.appsflyer.internal.AFh1ySDK.d$default(r4, r5, r6, r7, r8, r9)
            r0 = r3
        L8a:
            if (r0 != 0) goto L8d
            goto L8e
        L8d:
            r3 = r0
        L8e:
            r11.equals = r3
            if (r3 != 0) goto L9f
            com.appsflyer.AFLogger r4 = com.appsflyer.AFLogger.INSTANCE
            com.appsflyer.internal.AFg1cSDK r5 = com.appsflyer.internal.AFg1cSDK.META_REFERRER
            r8 = 4
            r9 = 0
            java.lang.String r6 = "Referrer collection disallowed by missing Facebook app id."
            r7 = 0
            com.appsflyer.internal.AFh1ySDK.d$default(r4, r5, r6, r7, r8, r9)
            return r1
        L9f:
            boolean r12 = r11.getCurrencyIso4217Code(r12)
            if (r12 != 0) goto Lb2
            com.appsflyer.AFLogger r2 = com.appsflyer.AFLogger.INSTANCE
            com.appsflyer.internal.AFg1cSDK r3 = com.appsflyer.internal.AFg1cSDK.META_REFERRER
            r6 = 4
            r7 = 0
            java.lang.String r4 = "Referrer collection disallowed by missing content providers."
            r5 = 0
            com.appsflyer.internal.AFh1ySDK.d$default(r2, r3, r4, r5, r6, r7)
            return r1
        Lb2:
            r12 = 1
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFj1ySDK.getRevenue(android.content.Context):boolean");
    }

    @Override // com.appsflyer.internal.AFj1tSDK
    @SuppressLint({"NewApi"})
    public final void getMonetizationNetwork(@NotNull final Context context) {
        if (!getRevenue(context)) {
            this.component2.run();
        } else {
            this.getCurrencyIso4217Code.execute(new Runnable() { // from class: com.appsflyer.internal.Kkkkkkkkkkkkkkkk
                @Override // java.lang.Runnable
                public final void run() {
                    AFj1ySDK.getMonetizationNetwork(AFj1ySDK.this, context);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x021f, code lost:
        if (r20 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0221, code lost:
        androidx.core.provider.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r20);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0225, code lost:
        if (r20 != null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0227, code lost:
        r20.release();
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0242, code lost:
        if (r20 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0245, code lost:
        if (r20 != null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x027d, code lost:
        if (r20 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0280, code lost:
        if (r20 != null) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00f9 A[Catch: all -> 0x005f, TRY_LEAVE, TryCatch #3 {all -> 0x005f, blocks: (B:3:0x0021, B:7:0x0033, B:9:0x0039, B:27:0x00f9, B:13:0x0067, B:15:0x0079, B:16:0x007e, B:17:0x007f, B:19:0x0085, B:20:0x00aa, B:21:0x00ba, B:23:0x00c0, B:24:0x00e5), top: B:112:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0280  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void getMonetizationNetwork(com.appsflyer.internal.AFj1ySDK r26, android.content.Context r27) {
        /*
            Method dump skipped, instructions count: 678
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFj1ySDK.getMonetizationNetwork(com.appsflyer.internal.AFj1ySDK, android.content.Context):void");
    }
}
