package com.facebook;

import com.facebook.AccessToken;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import com.google.android.material.timepicker.TimeModel;
import com.vungle.ads.internal.ui.AdActivity;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b%\u0018\u0000 /2\u00020\u0001:\u0002/0BC\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000fB-\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u000e\u0010\u0010B+\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0011\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u0012B#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u0013J\u000f\u0010\u0014\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0016\u0010\u0017R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u0014\u0010 \u001a\u0004\b!\u0010\u0017R\u0016\u0010\t\u001a\u0004\u0018\u00010\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0019\u0010\r\u001a\u0004\u0018\u00010\f8\u0006¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b\u001c\u0010(R\u0019\u0010*\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b)\u0010#\u001a\u0004\b\"\u0010\u0015R\u0019\u0010.\u001a\u0004\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\b+\u0010%\u001a\u0004\b,\u0010-¨\u00061"}, d2 = {"Lcom/facebook/GraphResponse;", "", "Lcom/facebook/GraphRequest;", AdActivity.REQUEST_KEY_EXTRA, "Ljava/net/HttpURLConnection;", "connection", "", "rawResponse", "Lorg/json/JSONObject;", "graphObject", "Lorg/json/JSONArray;", "graphObjectArray", "Lcom/facebook/FacebookRequestError;", "error", "<init>", "(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/FacebookRequestError;)V", "(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V", "graphObjects", "(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONArray;)V", "(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lorg/json/JSONObject;", "toString", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/GraphRequest;", "getRequest", "()Lcom/facebook/GraphRequest;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/net/HttpURLConnection;", "getConnection", "()Ljava/net/HttpURLConnection;", "Ljava/lang/String;", "getRawResponse", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lorg/json/JSONObject;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lorg/json/JSONArray;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/FacebookRequestError;", "()Lcom/facebook/FacebookRequestError;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "jsonObject", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "getJsonArray", "()Lorg/json/JSONArray;", "jsonArray", "Companion", "PagingDirection", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GraphResponse {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6053Wwwwwwwwwwwwwwwwwwwwwwwwww = GraphResponse.class.getCanonicalName();
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final JSONArray f6054Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final JSONObject f6055Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FacebookRequestError f6056Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final JSONArray f6057Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final JSONObject f6058Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6059Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HttpURLConnection f6060Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final GraphRequest f6061Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J%\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0001¢\u0006\u0004\b\n\u0010\u000bJ1\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ/\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0001¢\u0006\u0004\b\u0012\u0010\u0013J7\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\t0\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00140\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0007¢\u0006\u0004\b\u0017\u0010\u0018J5\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00140\b2\u0006\u0010\u0019\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ1\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u00142\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u001e\u0010\u001fR\u0014\u0010 \u001a\u00020\u00108\u0002X\u0082T¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010\"\u001a\u00020\u00108\u0002X\u0082T¢\u0006\u0006\n\u0004\b\"\u0010!R\u0014\u0010#\u001a\u00020\u00108\u0006X\u0086T¢\u0006\u0006\n\u0004\b#\u0010!R\u0014\u0010$\u001a\u00020\u00108\u0002X\u0082T¢\u0006\u0006\n\u0004\b$\u0010!R\u0014\u0010%\u001a\u00020\u00108\u0006X\u0086T¢\u0006\u0006\n\u0004\b%\u0010!R\u0016\u0010&\u001a\u0004\u0018\u00010\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010!¨\u0006'"}, d2 = {"Lcom/facebook/GraphResponse$Companion;", "", "<init>", "()V", "Ljava/net/HttpURLConnection;", "connection", "Lcom/facebook/GraphRequestBatch;", "requests", "", "Lcom/facebook/GraphResponse;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;", "Ljava/io/InputStream;", "stream", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;", "", "responseString", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;", "Lcom/facebook/GraphRequest;", "Lcom/facebook/FacebookException;", "error", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;", "sourceObject", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;", AdActivity.REQUEST_KEY_EXTRA, "originalResult", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/GraphResponse;", "BODY_KEY", "Ljava/lang/String;", "CODE_KEY", "NON_JSON_RESPONSE_PROPERTY", "RESPONSE_LOG_TAG", "SUCCESS_KEY", "TAG", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final List<GraphResponse> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull HttpURLConnection httpURLConnection, @NotNull GraphRequestBatch graphRequestBatch) {
            List<GraphResponse> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            InputStream inputStream;
            try {
                try {
                    if (!FacebookSdk.Www()) {
                        String unused = GraphResponse.f6053Wwwwwwwwwwwwwwwwwwwwwwwwww;
                        throw new FacebookException("GraphRequest can't be used when Facebook SDK isn't fully initialized");
                    }
                    if (httpURLConnection.getResponseCode() >= 400) {
                        inputStream = httpURLConnection.getErrorStream();
                    } else {
                        inputStream = httpURLConnection.getInputStream();
                    }
                    List<GraphResponse> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inputStream, httpURLConnection, graphRequestBatch);
                    Utility.Wwwwwwwwwwwwwwwwwwwwwwwww(inputStream);
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                } catch (FacebookException e) {
                    Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.REQUESTS, "Response", "Response <Error>: %s", e);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(graphRequestBatch, httpURLConnection, e);
                    Utility.Wwwwwwwwwwwwwwwwwwwwwwwww(null);
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                } catch (Exception e2) {
                    Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.REQUESTS, "Response", "Response <Error>: %s", e2);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(graphRequestBatch, httpURLConnection, new FacebookException(e2));
                    Utility.Wwwwwwwwwwwwwwwwwwwwwwwww(null);
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                }
            } catch (Throwable th) {
                Utility.Wwwwwwwwwwwwwwwwwwwwwwwww(null);
                throw th;
            }
        }

        @JvmStatic
        @NotNull
        public final List<GraphResponse> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @Nullable HttpURLConnection httpURLConnection, @NotNull GraphRequestBatch graphRequestBatch) throws FacebookException, JSONException, IOException {
            List<GraphResponse> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(httpURLConnection, graphRequestBatch, new JSONTokener(str).nextValue());
            Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.REQUESTS, "Response", "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n", graphRequestBatch.Wwwwwwwwwwwwwwwwwwwwww(), Integer.valueOf(str.length()), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }

        @JvmStatic
        @NotNull
        public final List<GraphResponse> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable InputStream inputStream, @Nullable HttpURLConnection httpURLConnection, @NotNull GraphRequestBatch graphRequestBatch) throws FacebookException, JSONException, IOException {
            String Illllllllllll = Utility.Illllllllllll(inputStream);
            Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.INCLUDE_RAW_RESPONSES, "Response", "Response (raw)\n  Size: %d\n  Response:\n%s\n", Integer.valueOf(Illllllllllll.length()), Illllllllllll);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Illllllllllll, httpURLConnection, graphRequestBatch);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0058  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.List<com.facebook.GraphResponse> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(java.net.HttpURLConnection r9, java.util.List<com.facebook.GraphRequest> r10, java.lang.Object r11) throws com.facebook.FacebookException, org.json.JSONException {
            /*
                r8 = this;
                int r0 = r10.size()
                java.util.ArrayList r1 = new java.util.ArrayList
                r1.<init>(r0)
                r2 = 1
                r3 = 0
                if (r0 != r2) goto L53
                java.lang.Object r2 = r10.get(r3)
                com.facebook.GraphRequest r2 = (com.facebook.GraphRequest) r2
                org.json.JSONObject r4 = new org.json.JSONObject     // Catch: java.io.IOException -> L34 org.json.JSONException -> L36
                r4.<init>()     // Catch: java.io.IOException -> L34 org.json.JSONException -> L36
                java.lang.String r5 = "body"
                r4.put(r5, r11)     // Catch: java.io.IOException -> L34 org.json.JSONException -> L36
                if (r9 != 0) goto L22
                r5 = 200(0xc8, float:2.8E-43)
                goto L26
            L22:
                int r5 = r9.getResponseCode()     // Catch: java.io.IOException -> L34 org.json.JSONException -> L36
            L26:
                java.lang.String r6 = "code"
                r4.put(r6, r5)     // Catch: java.io.IOException -> L34 org.json.JSONException -> L36
                org.json.JSONArray r5 = new org.json.JSONArray     // Catch: java.io.IOException -> L34 org.json.JSONException -> L36
                r5.<init>()     // Catch: java.io.IOException -> L34 org.json.JSONException -> L36
                r5.put(r4)     // Catch: java.io.IOException -> L34 org.json.JSONException -> L36
                goto L54
            L34:
                r4 = move-exception
                goto L38
            L36:
                r4 = move-exception
                goto L46
            L38:
                com.facebook.GraphResponse r5 = new com.facebook.GraphResponse
                com.facebook.FacebookRequestError r6 = new com.facebook.FacebookRequestError
                r6.<init>(r9, r4)
                r5.<init>(r2, r9, r6)
                r1.add(r5)
                goto L53
            L46:
                com.facebook.GraphResponse r5 = new com.facebook.GraphResponse
                com.facebook.FacebookRequestError r6 = new com.facebook.FacebookRequestError
                r6.<init>(r9, r4)
                r5.<init>(r2, r9, r6)
                r1.add(r5)
            L53:
                r5 = r11
            L54:
                boolean r2 = r5 instanceof org.json.JSONArray
                if (r2 == 0) goto La3
                r2 = r5
                org.json.JSONArray r2 = (org.json.JSONArray) r2
                int r4 = r2.length()
                if (r4 != r0) goto La3
                int r0 = r2.length()
                if (r0 <= 0) goto La2
            L67:
                int r2 = r3 + 1
                java.lang.Object r4 = r10.get(r3)
                com.facebook.GraphRequest r4 = (com.facebook.GraphRequest) r4
                r6 = r5
                org.json.JSONArray r6 = (org.json.JSONArray) r6     // Catch: com.facebook.FacebookException -> L7e org.json.JSONException -> L80
                java.lang.Object r3 = r6.get(r3)     // Catch: com.facebook.FacebookException -> L7e org.json.JSONException -> L80
                com.facebook.GraphResponse r3 = r8.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r4, r9, r3, r11)     // Catch: com.facebook.FacebookException -> L7e org.json.JSONException -> L80
                r1.add(r3)     // Catch: com.facebook.FacebookException -> L7e org.json.JSONException -> L80
                goto L9d
            L7e:
                r3 = move-exception
                goto L82
            L80:
                r3 = move-exception
                goto L90
            L82:
                com.facebook.GraphResponse r6 = new com.facebook.GraphResponse
                com.facebook.FacebookRequestError r7 = new com.facebook.FacebookRequestError
                r7.<init>(r9, r3)
                r6.<init>(r4, r9, r7)
                r1.add(r6)
                goto L9d
            L90:
                com.facebook.GraphResponse r6 = new com.facebook.GraphResponse
                com.facebook.FacebookRequestError r7 = new com.facebook.FacebookRequestError
                r7.<init>(r9, r3)
                r6.<init>(r4, r9, r7)
                r1.add(r6)
            L9d:
                if (r2 < r0) goto La0
                goto La2
            La0:
                r3 = r2
                goto L67
            La2:
                return r1
            La3:
                com.facebook.FacebookException r9 = new com.facebook.FacebookException
                java.lang.String r10 = "Unexpected number of results"
                r9.<init>(r10)
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphResponse.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(java.net.HttpURLConnection, java.util.List, java.lang.Object):java.util.List");
        }

        public final GraphResponse Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GraphRequest graphRequest, HttpURLConnection httpURLConnection, Object obj, Object obj2) throws JSONException {
            Boolean bool = null;
            if (obj instanceof JSONObject) {
                JSONObject jSONObject = (JSONObject) obj;
                FacebookRequestError Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FacebookRequestError.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, obj2, httpURLConnection);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    String unused = GraphResponse.f6053Wwwwwwwwwwwwwwwwwwwwwwwwww;
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.toString();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == 190) {
                        Utility utility = Utility.INSTANCE;
                        if (Utility.Kkkkkk(graphRequest.Wwwwwwwwwwwwwwwwwwwwww())) {
                            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww() != 493) {
                                AccessToken.Companion.Wwwwwwwwwwwwwwwwwwwwwwww(null);
                            } else {
                                AccessToken.Companion companion = AccessToken.Companion;
                                AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                                    bool = Boolean.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwww());
                                }
                                if (Intrinsics.areEqual(bool, Boolean.FALSE)) {
                                    companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                }
                            }
                        }
                    }
                    return new GraphResponse(graphRequest, httpURLConnection, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
                Object Kkkkkkkkkkkkkkkkk2 = Utility.Kkkkkkkkkkkkkkkkk(jSONObject, "body", "FACEBOOK_NON_JSON_RESULT");
                if (Kkkkkkkkkkkkkkkkk2 instanceof JSONObject) {
                    JSONObject jSONObject2 = (JSONObject) Kkkkkkkkkkkkkkkkk2;
                    return new GraphResponse(graphRequest, httpURLConnection, jSONObject2.toString(), jSONObject2);
                } else if (Kkkkkkkkkkkkkkkkk2 instanceof JSONArray) {
                    JSONArray jSONArray = (JSONArray) Kkkkkkkkkkkkkkkkk2;
                    return new GraphResponse(graphRequest, httpURLConnection, jSONArray.toString(), jSONArray);
                } else {
                    obj = JSONObject.NULL;
                }
            }
            if (obj == JSONObject.NULL) {
                return new GraphResponse(graphRequest, httpURLConnection, obj.toString(), (JSONObject) null);
            }
            throw new FacebookException(Intrinsics.stringPlus("Got unexpected object type in response, class: ", obj.getClass().getSimpleName()));
        }

        @JvmStatic
        @NotNull
        public final List<GraphResponse> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull List<GraphRequest> list, @Nullable HttpURLConnection httpURLConnection, @Nullable FacebookException facebookException) {
            List<GraphRequest> list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
            for (GraphRequest graphRequest : list2) {
                arrayList.add(new GraphResponse(graphRequest, httpURLConnection, new FacebookRequestError(httpURLConnection, facebookException)));
            }
            return arrayList;
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/facebook/GraphResponse$PagingDirection;", "", "(Ljava/lang/String;I)V", "NEXT", "PREVIOUS", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum PagingDirection {
        NEXT,
        PREVIOUS;

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static PagingDirection[] valuesCustom() {
            PagingDirection[] valuesCustom = values();
            return (PagingDirection[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }
    }

    public GraphResponse(@NotNull GraphRequest graphRequest, @Nullable HttpURLConnection httpURLConnection, @Nullable String str, @Nullable JSONObject jSONObject, @Nullable JSONArray jSONArray, @Nullable FacebookRequestError facebookRequestError) {
        this.f6061Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = graphRequest;
        this.f6060Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = httpURLConnection;
        this.f6059Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f6058Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject;
        this.f6057Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONArray;
        this.f6056Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = facebookRequestError;
        this.f6055Wwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject;
        this.f6054Wwwwwwwwwwwwwwwwwwwwwwwwwww = jSONArray;
    }

    @Nullable
    public final JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6055Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6058Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final FacebookRequestError Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6056Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public String toString() {
        String str;
        int responseCode;
        try {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            Locale locale = Locale.US;
            HttpURLConnection httpURLConnection = this.f6060Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (httpURLConnection == null) {
                responseCode = 200;
            } else {
                responseCode = httpURLConnection.getResponseCode();
            }
            str = String.format(locale, TimeModel.NUMBER_FORMAT, Arrays.copyOf(new Object[]{Integer.valueOf(responseCode)}, 1));
        } catch (IOException unused) {
            str = "unknown";
        }
        return "{Response:  responseCode: " + str + ", graphObject: " + this.f6058Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", error: " + this.f6056Wwwwwwwwwwwwwwwwwwwwwwwwwwwww + "}";
    }

    public GraphResponse(@NotNull GraphRequest graphRequest, @Nullable HttpURLConnection httpURLConnection, @NotNull String str, @Nullable JSONObject jSONObject) {
        this(graphRequest, httpURLConnection, str, jSONObject, null, null);
    }

    public GraphResponse(@NotNull GraphRequest graphRequest, @Nullable HttpURLConnection httpURLConnection, @NotNull String str, @NotNull JSONArray jSONArray) {
        this(graphRequest, httpURLConnection, str, null, jSONArray, null);
    }

    public GraphResponse(@NotNull GraphRequest graphRequest, @Nullable HttpURLConnection httpURLConnection, @NotNull FacebookRequestError facebookRequestError) {
        this(graphRequest, httpURLConnection, null, null, null, facebookRequestError);
    }
}
