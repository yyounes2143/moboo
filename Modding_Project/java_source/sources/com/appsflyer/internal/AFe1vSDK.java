package com.appsflyer.internal;

import android.util.Base64;
import com.appsflyer.AFLogger;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\u0015\u0010\u000b\u001a\u00020\b8BX\u0083\u0084\u0002¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0015\u0010\r\u001a\u00020\b8BX\u0083\u0084\u0002¢\u0006\u0006\n\u0004\b\f\u0010\nR\u0011\u0010\u000f\u001a\u00020\b8G¢\u0006\u0006\u001a\u0004\b\f\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0011\u0010\f\u001a\u00020\u00128G¢\u0006\u0006\u001a\u0004\b\u000b\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u00048\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0014R\u0011\u0010\u0016\u001a\u00020\b8G¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u000e"}, d2 = {"Lcom/appsflyer/internal/AFe1vSDK;", "", "Lcom/appsflyer/internal/AFc1oSDK;", "p0", "Lcom/appsflyer/internal/AFc1qSDK;", "p1", "<init>", "(Lcom/appsflyer/internal/AFc1oSDK;Lcom/appsflyer/internal/AFc1qSDK;)V", "", "component2", "Lkotlin/Lazy;", "getMediationNetwork", "AFAdRevenueData", "getMonetizationNetwork", "()Ljava/lang/String;", "getCurrencyIso4217Code", "getRevenue", "Lcom/appsflyer/internal/AFc1oSDK;", "", "()Z", "Lcom/appsflyer/internal/AFc1qSDK;", "component1", "component3", "AFa1ySDK"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class AFe1vSDK {
    @Nullable
    private static AFe1ySDK component1;
    @NotNull
    private final AFc1qSDK getMediationNetwork;
    @NotNull
    private final AFc1oSDK getRevenue;
    @NotNull
    public static final AFa1ySDK AFa1ySDK = new AFa1ySDK(null);
    @NotNull
    public static String getMonetizationNetwork = "https://%scdn-%ssettings.%s/android/v1/%s/settings";
    @NotNull
    public static String getCurrencyIso4217Code = "https://%scdn-%stestsettings.%s/android/v1/%s/settings";
    @NotNull
    private static final List<String> component4 = CollectionsKt.listOf((Object[]) new String[]{"googleplay", "playstore", "googleplaystore"});
    @NotNull
    private final Lazy component2 = LazyKt.lazy(new Function0<String>() { // from class: com.appsflyer.internal.AFe1vSDK.5
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: getMediationNetwork */
        public final String invoke() {
            String AFAdRevenueData = com.appsflyer.internal.AFa1ySDK.AFAdRevenueData(AFe1vSDK.this.getMediationNetwork, AFe1vSDK.this.getRevenue.component3());
            String str = "";
            if (AFAdRevenueData != null && !StringsKt.isBlank(AFAdRevenueData)) {
                String obj = StringsKt.trim((CharSequence) AFAdRevenueData).toString();
                if (!AFa1ySDK.getMonetizationNetwork().contains(obj.toLowerCase(Locale.getDefault()))) {
                    AFAdRevenueData = "-" + obj;
                } else {
                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                    AFLogger.afWarnLog(String.format("AF detected using redundant Google-Play channel for attribution - %s. Using without channel postfix.", Arrays.copyOf(new Object[]{obj}, 1)));
                    AFAdRevenueData = "";
                }
            }
            if (AFAdRevenueData != null) {
                str = AFAdRevenueData;
            }
            return StringsKt.trim((CharSequence) str).toString();
        }
    });
    @NotNull
    public final Lazy AFAdRevenueData = LazyKt.lazy(new Function0<String>() { // from class: com.appsflyer.internal.AFe1vSDK.1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: getRevenue */
        public final String invoke() {
            return AFe1vSDK.getMediationNetwork(AFe1vSDK.this.getRevenue.getCurrencyIso4217Code.getMonetizationNetwork.getPackageName(), AFe1vSDK.AFAdRevenueData(AFe1vSDK.this));
        }
    });

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public /* synthetic */ class AFa1uSDK {
        public static final /* synthetic */ int[] AFAdRevenueData;

        static {
            int[] iArr = new int[AFe1tSDK.values().length];
            try {
                iArr[AFe1tSDK.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AFe1tSDK.API.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AFe1tSDK.RC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            AFAdRevenueData = iArr;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R \u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\u0016\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0087\f¢\u0006\u0006\n\u0004\b\b\u0010\u000bR\u0016\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\f¢\u0006\u0006\n\u0004\b\r\u0010\u000bR\u001e\u0010\b\u001a\u0004\u0018\u00010\u000e8\u0006@\u0007X\u0087\u000e¢\u0006\f\n\u0004\b\u000f\u0010\u0010\"\u0004\b\b\u0010\u0011"}, d2 = {"Lcom/appsflyer/internal/AFe1vSDK$AFa1ySDK;", "", "<init>", "()V", "", "", "component4", "Ljava/util/List;", "getMonetizationNetwork", "()Ljava/util/List;", "AFAdRevenueData", "Ljava/lang/String;", "getMediationNetwork", "getCurrencyIso4217Code", "Lcom/appsflyer/internal/AFe1ySDK;", "component1", "Lcom/appsflyer/internal/AFe1ySDK;", "(Lcom/appsflyer/internal/AFe1ySDK;)V"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class AFa1ySDK {
        private AFa1ySDK() {
        }

        @JvmName(name = "getMonetizationNetwork")
        @NotNull
        public static List<String> getMonetizationNetwork() {
            return AFe1vSDK.component4;
        }

        public /* synthetic */ AFa1ySDK(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmName(name = "getMonetizationNetwork")
        public static void getMonetizationNetwork(@Nullable AFe1ySDK aFe1ySDK) {
            AFe1vSDK.component1 = aFe1ySDK;
        }
    }

    public AFe1vSDK(@NotNull AFc1oSDK aFc1oSDK, @NotNull AFc1qSDK aFc1qSDK) {
        this.getRevenue = aFc1oSDK;
        this.getMediationNetwork = aFc1qSDK;
    }

    @JvmName(name = "AFAdRevenueData")
    @NotNull
    public final String AFAdRevenueData() {
        AFe1tSDK aFe1tSDK;
        if (getMediationNetwork()) {
            aFe1tSDK = AFe1tSDK.DEFAULT;
        } else {
            aFe1tSDK = AFe1tSDK.API;
        }
        int i = AFa1uSDK.AFAdRevenueData[aFe1tSDK.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return "";
                }
                throw new NoWhenBranchMatchedException();
            }
            AFe1ySDK aFe1ySDK = component1;
            String str = aFe1ySDK != null ? aFe1ySDK.getCurrencyIso4217Code : null;
            return str == null ? "" : str;
        }
        return "appsflyersdk.com";
    }

    @JvmName(name = "getCurrencyIso4217Code")
    @NotNull
    public final String getCurrencyIso4217Code() {
        AFe1tSDK aFe1tSDK;
        String str;
        if (getMediationNetwork()) {
            aFe1tSDK = AFe1tSDK.DEFAULT;
        } else {
            aFe1tSDK = AFe1tSDK.API;
        }
        int i = AFa1uSDK.AFAdRevenueData[aFe1tSDK.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return "";
                }
                throw new NoWhenBranchMatchedException();
            }
            AFe1ySDK aFe1ySDK = component1;
            if (aFe1ySDK != null) {
                str = aFe1ySDK.getMonetizationNetwork;
            } else {
                str = null;
            }
            if (str == null) {
                return "";
            }
            return str;
        }
        return (String) this.AFAdRevenueData.getValue();
    }

    @JvmName(name = "getMediationNetwork")
    public static boolean getMediationNetwork() {
        return component1 == null;
    }

    public static final /* synthetic */ String getMediationNetwork(String str, String str2) {
        String substring = new Regex("[^\\w]+").replace(Base64.encodeToString(MessageDigest.getInstance("SHA-256").digest((str + str2).getBytes(Charsets.UTF_8)), 2).toLowerCase(Locale.ROOT), "").substring(0, 6);
        return substring + ".";
    }

    public static final void getMonetizationNetwork(@Nullable AFe1ySDK aFe1ySDK) {
        AFa1ySDK.getMonetizationNetwork(aFe1ySDK);
    }

    public static final /* synthetic */ String AFAdRevenueData(AFe1vSDK aFe1vSDK) {
        return (String) aFe1vSDK.component2.getValue();
    }
}
