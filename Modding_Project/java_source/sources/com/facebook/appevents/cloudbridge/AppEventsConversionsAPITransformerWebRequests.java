package com.facebook.appevents.cloudbridge;

import androidx.browser.trusted.sharing.ShareTarget;
import com.facebook.GraphRequest;
import com.facebook.LoggingBehavior;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import com.vungle.ads.internal.ui.AdActivity;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.UninitializedPropertyAccessException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.IntRange;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\r\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001BB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\r\u0010\u000eJ=\u0010\u0015\u001a\u00020\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0018\u0010\u0013\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u00120\u00112\b\b\u0002\u0010\u0014\u001a\u00020\u000fH\u0000¢\u0006\u0004\b\u0015\u0010\u0016J+\u0010\u0018\u001a\u00020\b2\u001a\u0010\u0017\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0012\u0018\u00010\u0011H\u0000¢\u0006\u0004\b\u0018\u0010\u0019J\u0087\u0001\u0010$\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\b\u0010\u001c\u001a\u0004\u0018\u00010\u00042\u0014\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00122\b\b\u0002\u0010\u001e\u001a\u00020\u000f2<\u0010#\u001a8\u0012\u0015\u0012\u0013\u0018\u00010\u0004¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(\"\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\b\u0018\u00010\u001fH\u0000¢\u0006\u0004\b$\u0010%J+\u0010&\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0012\u0018\u00010\u00112\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b&\u0010'R$\u0010,\u001a\u0012\u0012\u0004\u0012\u00020\u000f0(j\b\u0012\u0004\u0012\u00020\u000f`)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R$\u0010.\u001a\u0012\u0012\u0004\u0012\u00020\u000f0(j\b\u0012\u0004\u0012\u00020\u000f`)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010+R\"\u00105\u001a\u00020/8\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b\u0018\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R4\u0010;\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0012068\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b\t\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010\u0019R\"\u0010A\u001a\u00020\u000f8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b1\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@¨\u0006C"}, d2 = {"Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests;", "", "<init>", "()V", "", "datasetID", "url", "accessKey", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Lcom/facebook/GraphRequest;", AdActivity.REQUEST_KEY_EXTRA, "Wwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/GraphRequest;)V", "", "responseCode", "", "", "processedEvents", "maxRetryCount", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Integer;Ljava/util/List;I)V", DbParams.TABLE_EVENTS, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)V", "urlStr", "requestMethod", "jsonBodyStr", "requestProperties", "timeOutInterval", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "requestResult", "requestCallback", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/functions/Function2;)V", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/GraphRequest;)Ljava/util/List;", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/HashSet;", "ACCEPTABLE_HTTP_RESPONSE", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "RETRY_EVENTS_HTTP_RESPONSE", "Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests$CloudBridgeCredentials;", "Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests$CloudBridgeCredentials;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests$CloudBridgeCredentials;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests$CloudBridgeCredentials;)V", "credentials", "", "Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "transformedEvents", "I", "getCurrentRetryCount$facebook_core_release", "()I", "setCurrentRetryCount$facebook_core_release", "(I)V", "currentRetryCount", "CloudBridgeCredentials", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class AppEventsConversionsAPITransformerWebRequests {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static int f6248Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static List<Map<String, Object>> f6249Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static CloudBridgeCredentials f6250Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final AppEventsConversionsAPITransformerWebRequests INSTANCE = new AppEventsConversionsAPITransformerWebRequests();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final HashSet<Integer> f6252Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = SetsKt.hashSetOf(200, 202);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final HashSet<Integer> f6251Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = SetsKt.hashSetOf(503, 504, Integer.valueOf((int) CommonGatewayClient.CODE_TOO_MANY_REQUESTS));

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\tR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0012\u001a\u0004\b\u0014\u0010\tR\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0012\u001a\u0004\b\u0011\u0010\t¨\u0006\u0015"}, d2 = {"Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests$CloudBridgeCredentials;", "", "", "datasetID", "cloudBridgeURL", "accessKey", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class CloudBridgeCredentials {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f6253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f6254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f6255Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public CloudBridgeCredentials(@NotNull String str, @NotNull String str2, @NotNull String str3) {
            this.f6255Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f6254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
            this.f6253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str3;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6255Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CloudBridgeCredentials)) {
                return false;
            }
            CloudBridgeCredentials cloudBridgeCredentials = (CloudBridgeCredentials) obj;
            if (Intrinsics.areEqual(this.f6255Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, cloudBridgeCredentials.f6255Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f6254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, cloudBridgeCredentials.f6254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f6253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, cloudBridgeCredentials.f6253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((this.f6255Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31) + this.f6254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f6253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
        }

        @NotNull
        public String toString() {
            return "CloudBridgeCredentials(datasetID=" + this.f6255Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", cloudBridgeURL=" + this.f6254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", accessKey=" + this.f6253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ')';
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwww(GraphRequest graphRequest) {
        List split$default;
        String Wwwwwwwwwwwwwwwww2 = graphRequest.Wwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwww2 == null) {
            split$default = null;
        } else {
            split$default = StringsKt.split$default((CharSequence) Wwwwwwwwwwwwwwwww2, new String[]{"/"}, false, 0, 6, (Object) null);
        }
        if (split$default != null && split$default.size() == 2) {
            try {
                AppEventsConversionsAPITransformerWebRequests appEventsConversionsAPITransformerWebRequests = INSTANCE;
                String str = appEventsConversionsAPITransformerWebRequests.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() + "/capi/" + appEventsConversionsAPITransformerWebRequests.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() + "/events";
                List<Map<String, Object>> Wwwwwwwwwwwwwwwwwwwwwwww2 = appEventsConversionsAPITransformerWebRequests.Wwwwwwwwwwwwwwwwwwwwwwww(graphRequest);
                if (Wwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return;
                }
                appEventsConversionsAPITransformerWebRequests.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwww2);
                int min = Math.min(appEventsConversionsAPITransformerWebRequests.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().size(), 10);
                List slice = CollectionsKt.slice((List) appEventsConversionsAPITransformerWebRequests.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), new IntRange(0, min - 1));
                appEventsConversionsAPITransformerWebRequests.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().subList(0, min).clear();
                JSONArray jSONArray = new JSONArray((Collection) slice);
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("data", jSONArray);
                linkedHashMap.put("accessKey", appEventsConversionsAPITransformerWebRequests.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                JSONObject jSONObject = new JSONObject(linkedHashMap);
                Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.APP_EVENTS, "CAPITransformerWebRequests", "\nTransformed_CAPI_JSON:\nURL: %s\nFROM=========\n%s\n>>>>>>TO>>>>>>\n%s\n=============\n", str, graphRequest, jSONObject.toString(2));
                appEventsConversionsAPITransformerWebRequests.Wwwwwwwwwwwwwwwwwwwwwwwwwww(str, ShareTarget.METHOD_POST, jSONObject.toString(), MapsKt.mapOf(TuplesKt.to("Content-Type", "application/json")), 60000, new AppEventsConversionsAPITransformerWebRequests$transformGraphRequestAndSendToCAPIGEndPoint$1$1(slice));
                return;
            } catch (UninitializedPropertyAccessException e) {
                Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.DEVELOPER_ERRORS, "CAPITransformerWebRequests", "\n Credentials not initialized Error when logging: \n%s", e);
                return;
            }
        }
        Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.DEVELOPER_ERRORS, "CAPITransformerWebRequests", "\n GraphPathComponents Error when logging: \n%s", graphRequest);
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwww(@NotNull final GraphRequest graphRequest) {
        Utility utility = Utility.INSTANCE;
        Utility.Illl(new Runnable() { // from class: com.facebook.appevents.cloudbridge.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                AppEventsConversionsAPITransformerWebRequests.Wwwwwwwwwwwwwwwwwwwwww(GraphRequest.this);
            }
        });
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2, @NotNull String str3) {
        Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.APP_EVENTS, "CAPITransformerWebRequests", " \n\nCloudbridge Configured: \n================\ndatasetID: %s\nurl: %s\naccessKey: %s\n\n", str, str2, str3);
        AppEventsConversionsAPITransformerWebRequests appEventsConversionsAPITransformerWebRequests = INSTANCE;
        appEventsConversionsAPITransformerWebRequests.Wwwwwwwwwwwwwwwwwwwwwwwwww(new CloudBridgeCredentials(str, str2, str3));
        appEventsConversionsAPITransformerWebRequests.Wwwwwwwwwwwwwwwwwwwwwwwww(new ArrayList());
    }

    public final List<Map<String, Object>> Wwwwwwwwwwwwwwwwwwwwwwww(GraphRequest graphRequest) {
        JSONObject Wwwwwwwwwwwwwwwwww2 = graphRequest.Wwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwww2 != null) {
            Map<String, ? extends Object> mutableMap = MapsKt.toMutableMap(Utility.Wwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwww2));
            Object Wwwwwwwwwwww2 = graphRequest.Wwwwwwwwwwww();
            if (Wwwwwwwwwwww2 != null) {
                mutableMap.put("custom_events", Wwwwwwwwwwww2);
                StringBuilder sb = new StringBuilder();
                for (String str : mutableMap.keySet()) {
                    sb.append(str);
                    sb.append(" : ");
                    sb.append(mutableMap.get(str));
                    sb.append(System.getProperty("line.separator"));
                }
                Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.APP_EVENTS, "CAPITransformerWebRequests", "\nGraph Request data: \n\n%s \n\n", sb);
                return AppEventsConversionsAPITransformer.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mutableMap);
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Any");
        }
        return null;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull List<Map<String, Object>> list) {
        f6249Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull CloudBridgeCredentials cloudBridgeCredentials) {
        f6250Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cloudBridgeCredentials;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0097 A[Catch: IOException -> 0x003b, UnknownHostException -> 0x003e, TRY_LEAVE, TryCatch #4 {UnknownHostException -> 0x003e, IOException -> 0x003b, blocks: (B:3:0x0007, B:5:0x0012, B:19:0x0041, B:21:0x004d, B:26:0x005d, B:28:0x0097, B:35:0x00b3, B:39:0x00b9, B:40:0x00bc, B:41:0x00bd, B:43:0x00db, B:8:0x001a, B:11:0x0021, B:12:0x0025, B:14:0x002b, B:45:0x00e7, B:46:0x00ee), top: B:56:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00db A[Catch: IOException -> 0x003b, UnknownHostException -> 0x003e, TryCatch #4 {UnknownHostException -> 0x003e, IOException -> 0x003b, blocks: (B:3:0x0007, B:5:0x0012, B:19:0x0041, B:21:0x004d, B:26:0x005d, B:28:0x0097, B:35:0x00b3, B:39:0x00b9, B:40:0x00bc, B:41:0x00bd, B:43:0x00db, B:8:0x001a, B:11:0x0021, B:12:0x0025, B:14:0x002b, B:45:0x00e7, B:46:0x00ee), top: B:56:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@org.jetbrains.annotations.NotNull java.lang.String r8, @org.jetbrains.annotations.NotNull java.lang.String r9, @org.jetbrains.annotations.Nullable java.lang.String r10, @org.jetbrains.annotations.Nullable java.util.Map<java.lang.String, java.lang.String> r11, int r12, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function2<? super java.lang.String, ? super java.lang.Integer, kotlin.Unit> r13) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.cloudbridge.AppEventsConversionsAPITransformerWebRequests.Wwwwwwwwwwwwwwwwwwwwwwwwwww(java.lang.String, java.lang.String, java.lang.String, java.util.Map, int, kotlin.jvm.functions.Function2):void");
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Integer num, @NotNull List<? extends Map<String, ? extends Object>> list, int i) {
        if (CollectionsKt.contains(f6251Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, num)) {
            if (f6248Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww >= i) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().clear();
                f6248Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
                return;
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().addAll(0, list);
            f6248Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww++;
        }
    }

    @NotNull
    public final List<Map<String, Object>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        List<Map<String, Object>> list = f6249Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        list.getClass();
        return list;
    }

    @NotNull
    public final CloudBridgeCredentials Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        CloudBridgeCredentials cloudBridgeCredentials = f6250Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        cloudBridgeCredentials.getClass();
        return cloudBridgeCredentials;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable List<? extends Map<String, ? extends Object>> list) {
        if (list != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().addAll(list);
        }
        int max = Math.max(0, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().size() - 1000);
        if (max > 0) {
            Wwwwwwwwwwwwwwwwwwwwwwwww(TypeIntrinsics.asMutableList(CollectionsKt.drop(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), max)));
        }
    }
}
