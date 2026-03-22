package com.appsflyer.internal;

import android.util.Base64;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.google.firebase.messaging.Constants;
import java.nio.charset.Charset;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0086\b\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001a\u0010\u000b\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0002H×\u0001¢\u0006\u0004\b\u0014\u0010\u0013R\u0016\u0010\u0017\u001a\u00020\u00068\u0006@\u0006X\u0087\f¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0019\u001a\u00020\u00028\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0015\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u0018R\u0014\u0010\u0012\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0018"}, d2 = {"Lcom/appsflyer/internal/AFc1aSDK;", "", "", "p0", "p1", "p2", "", "p3", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "Lorg/json/JSONObject;", "getRevenue", "()Lorg/json/JSONObject;", "getMonetizationNetwork", "()Ljava/lang/String;", "toString", "getMediationNetwork", "I", "AFAdRevenueData", "Ljava/lang/String;", "getCurrencyIso4217Code", "AFa1zSDK"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class AFc1aSDK {
    @NotNull
    public static final AFa1zSDK AFa1zSDK = new AFa1zSDK(null);
    @NotNull
    final String AFAdRevenueData;
    @NotNull
    public String getCurrencyIso4217Code;
    int getMediationNetwork;
    @NotNull
    public String getRevenue;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J1\u0010\n\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0016\u0010\b\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00070\u0006\"\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0005\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u001b\u0010\u000f\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000f\u0010\u0010"}, d2 = {"Lcom/appsflyer/internal/AFc1aSDK$AFa1zSDK;", "", "<init>", "()V", "", "p0", "", "", "p1", "", "AFAdRevenueData", "(Ljava/lang/Integer;[Ljava/lang/String;)Z", "Lcom/appsflyer/internal/AFc1aSDK;", "getMediationNetwork", "(Ljava/lang/String;)Lcom/appsflyer/internal/AFc1aSDK;", "getRevenue", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nExceptionInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionInfo.kt\ncom/appsflyer/internal/components/monitorsdk/exmanager/ExceptionInfo$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,94:1\n13579#2,2:95\n*S KotlinDebug\n*F\n+ 1 ExceptionInfo.kt\ncom/appsflyer/internal/components/monitorsdk/exmanager/ExceptionInfo$Companion\n*L\n65#1:95,2\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class AFa1zSDK {
        private AFa1zSDK() {
        }

        private static boolean AFAdRevenueData(Integer num, String... strArr) {
            boolean z;
            if (num == null) {
                z = true;
            } else {
                z = false;
            }
            int length = strArr.length;
            for (int i = 0; i < 3; i++) {
                String str = strArr[i];
                if (!z && str != null && str.length() != 0) {
                    z = false;
                } else {
                    z = true;
                }
            }
            return z;
        }

        @Nullable
        public static AFc1aSDK getMediationNetwork(@NotNull String str) {
            List<String> split$default = StringsKt.split$default((CharSequence) str, new String[]{"\n"}, false, 0, 6, (Object) null);
            if (split$default.size() != 4) {
                return null;
            }
            String str2 = null;
            String str3 = null;
            String str4 = null;
            Integer num = null;
            for (String str5 : split$default) {
                if (StringsKt.startsWith$default(str5, "label=", false, 2, (Object) null)) {
                    str2 = getRevenue(str5, "label=");
                } else if (StringsKt.startsWith$default(str5, "hashName=", false, 2, (Object) null)) {
                    str3 = getRevenue(str5, "hashName=");
                } else if (StringsKt.startsWith$default(str5, "stackTrace=", false, 2, (Object) null)) {
                    str4 = getRevenue(str5, "stackTrace=");
                } else if (!StringsKt.startsWith$default(str5, "c=", false, 2, (Object) null)) {
                    break;
                } else {
                    num = Integer.valueOf(Integer.parseInt(StringsKt.trim((CharSequence) str5.substring(2)).toString()));
                }
            }
            if (AFAdRevenueData(num, str2, str3, str4)) {
                return null;
            }
            return new AFc1aSDK(str2, str3, str4, num.intValue());
        }

        private static String getRevenue(String str, String str2) {
            String obj = StringsKt.trim((CharSequence) str.substring(str2.length())).toString();
            Charset charset = Charsets.UTF_8;
            return new String(Base64.decode(obj.getBytes(charset), 2), charset);
        }

        public /* synthetic */ AFa1zSDK(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public AFc1aSDK(@NotNull String str, @NotNull String str2, @NotNull String str3, int i) {
        this.getCurrencyIso4217Code = str;
        this.AFAdRevenueData = str2;
        this.getRevenue = str3;
        this.getMediationNetwork = i;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AFc1aSDK)) {
            return false;
        }
        AFc1aSDK aFc1aSDK = (AFc1aSDK) obj;
        if (Intrinsics.areEqual(this.getCurrencyIso4217Code, aFc1aSDK.getCurrencyIso4217Code) && Intrinsics.areEqual(this.AFAdRevenueData, aFc1aSDK.AFAdRevenueData) && Intrinsics.areEqual(this.getRevenue, aFc1aSDK.getRevenue) && this.getMediationNetwork == aFc1aSDK.getMediationNetwork) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getMonetizationNetwork() {
        String str = this.getCurrencyIso4217Code;
        Charset charset = Charsets.UTF_8;
        String encodeToString = Base64.encodeToString(str.getBytes(charset), 2);
        String encodeToString2 = Base64.encodeToString(this.AFAdRevenueData.getBytes(charset), 2);
        String encodeToString3 = Base64.encodeToString(this.getRevenue.getBytes(charset), 2);
        int i = this.getMediationNetwork;
        return "label=" + encodeToString + "\nhashName=" + encodeToString2 + "\nstackTrace=" + encodeToString3 + "\nc=" + i;
    }

    @NotNull
    public final JSONObject getRevenue() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(Constants.ScionAnalytics.PARAM_LABEL, this.getCurrencyIso4217Code);
        jSONObject.put("hash_name", this.AFAdRevenueData);
        jSONObject.put(CmcdConfiguration.KEY_STREAM_TYPE, this.getRevenue);
        jSONObject.put("c", String.valueOf(this.getMediationNetwork));
        return jSONObject;
    }

    public final int hashCode() {
        return (((((this.getCurrencyIso4217Code.hashCode() * 31) + this.AFAdRevenueData.hashCode()) * 31) + this.getRevenue.hashCode()) * 31) + this.getMediationNetwork;
    }

    @NotNull
    public final String toString() {
        String str = this.getCurrencyIso4217Code;
        String str2 = this.AFAdRevenueData;
        String str3 = this.getRevenue;
        int i = this.getMediationNetwork;
        return "ExceptionInfo(label=" + str + ", hashName=" + str2 + ", stackTrace=" + str3 + ", counter=" + i + ")";
    }

    public /* synthetic */ AFc1aSDK(String str, String str2, String str3, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i2 & 8) != 0 ? 1 : i);
    }
}
