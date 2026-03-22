package com.facebook;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import androidx.browser.trusted.sharing.ShareTarget;
import androidx.media3.common.MimeTypes;
import com.applovin.sdk.AppLovinMediationProvider;
import com.facebook.GraphRequest;
import com.facebook.GraphRequestBatch;
import com.facebook.internal.InternalSettings;
import com.facebook.internal.Logger;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.google.common.net.HttpHeaders;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mbridge.msdk.MBridgeConstans;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridge;
import com.unity3d.services.core.di.ServiceProvider;
import com.vungle.ads.internal.ui.AdActivity;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b@\u0018\u0000 s2\u00020\u0001:\ttusvwxyz{BQ\b\u0017\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0011\u0010\u0012\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0011\u0010\u0014\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0014\u0010\u0013J\u001f\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u001e\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u001f\u0010\u001dJ+\u0010%\u001a\u00020\u000f2\u0006\u0010!\u001a\u00020 2\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020#0\"H\u0002¢\u0006\u0004\b%\u0010&J\u0015\u0010(\u001a\u00020\u000f2\u0006\u0010'\u001a\u00020\u0016¢\u0006\u0004\b(\u0010)J\r\u0010+\u001a\u00020*¢\u0006\u0004\b+\u0010,J\r\u0010.\u001a\u00020-¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\u0004H\u0016¢\u0006\u0004\b0\u0010\u0013R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010\u0013\"\u0004\b:\u0010;R$\u0010C\u001a\u0004\u0018\u00010<8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR$\u0010G\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bD\u00108\u001a\u0004\bE\u0010\u0013\"\u0004\bF\u0010;R$\u0010K\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bH\u00108\u001a\u0004\bI\u0010\u0013\"\u0004\bJ\u0010;R\"\u0010P\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bL\u0010M\u001a\u0004\bN\u0010\u001d\"\u0004\bO\u0010)R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bQ\u0010R\u001a\u0004\bS\u0010T\"\u0004\bU\u0010VR$\u0010]\u001a\u0004\u0018\u00010\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bW\u0010X\u001a\u0004\bY\u0010Z\"\u0004\b[\u0010\\R$\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u00108\u001a\u0004\b^\u0010\u0013\"\u0004\b_\u0010;R.\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010`\u001a\u0004\ba\u0010b\"\u0004\bc\u0010dR.\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010e\u001a\u0004\u0018\u00010\b8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010f\u001a\u0004\bg\u0010h\"\u0004\bi\u0010jR\u0016\u0010k\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010MR\u0018\u0010l\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00108R\u0016\u0010n\u001a\u0004\u0018\u00010\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bm\u0010\u0013R\u0011\u0010p\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\bo\u0010\u0013R\u0011\u0010r\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\bq\u0010\u0013¨\u0006|"}, d2 = {"Lcom/facebook/GraphRequest;", "", "Lcom/facebook/AccessToken;", "accessToken", "", "graphPath", "Landroid/os/Bundle;", "parameters", "Lcom/facebook/HttpMethod;", "httpMethod", "Lcom/facebook/GraphRequest$Callback;", "callback", "version", "<init>", "(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;Ljava/lang/String;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwww", "baseUrl", "", "isBatch", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Z)Ljava/lang/String;", "Wwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/String;", "Kkkkkkkkkkkkkkkkkkkkkk", "()Z", "Wwwwwwww", "Wwwwwwwww", "Lorg/json/JSONArray;", "batch", "", "Lcom/facebook/GraphRequest$Attachment;", "attachments", "Wwwww", "(Lorg/json/JSONArray;Ljava/util/Map;)V", "forceOverride", "Www", "(Z)V", "Lcom/facebook/GraphResponse;", "Wwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/GraphResponse;", "Lcom/facebook/GraphRequestAsyncTask;", "Wwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/GraphRequestAsyncTask;", "toString", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/AccessToken;", "Wwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/AccessToken;", "setAccessToken", "(Lcom/facebook/AccessToken;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwww", "setGraphPath", "(Ljava/lang/String;)V", "Lorg/json/JSONObject;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lorg/json/JSONObject;", "Wwwwwwwwwwwwwwwwww", "()Lorg/json/JSONObject;", "Kkkkkkkkkkkkkkkkkkkkkkkkkk", "(Lorg/json/JSONObject;)V", "graphObject", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "getBatchEntryName", "setBatchEntryName", "batchEntryName", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "getBatchEntryDependsOn", "setBatchEntryDependsOn", "batchEntryDependsOn", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "getBatchEntryOmitResultOnSuccess", "setBatchEntryOmitResultOnSuccess", "batchEntryOmitResultOnSuccess", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/os/Bundle;", "Wwwwwwwwwwwwww", "()Landroid/os/Bundle;", "Kkkkkkkkkkkkkkkkkkkkkkkk", "(Landroid/os/Bundle;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Object;", "Wwwwwwwwwwww", "()Ljava/lang/Object;", "Kkkkkkkkkkkkkkkkkkkkkkk", "(Ljava/lang/Object;)V", "tag", MobileAdsBridge.versionMethodName, "setVersion", "Lcom/facebook/GraphRequest$Callback;", "Wwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/GraphRequest$Callback;", "Wwww", "(Lcom/facebook/GraphRequest$Callback;)V", "value", "Lcom/facebook/HttpMethod;", "Wwwwwwwwwwwwwww", "()Lcom/facebook/HttpMethod;", "Kkkkkkkkkkkkkkkkkkkkkkkkk", "(Lcom/facebook/HttpMethod;)V", "forceApplicationRequest", "overriddenURL", "Wwwwwwwwwwwwwwww", "graphPathWithVersion", "Wwwwwwwwwwwww", "relativeUrlForBatchedRequest", "Wwwwwwwwwww", "urlForSingleRequest", "Companion", "Attachment", "Callback", "GraphJSONArrayCallback", "GraphJSONObjectCallback", "KeyValueSerializer", "OnProgressCallback", "ParcelableResourceWithMimeType", "Serializer", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GraphRequest {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile String f6014Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Pattern f6015Wwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f6016Wwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6017Wwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f6019Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f6020Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public HttpMethod f6021Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Callback f6022Wwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f6023Wwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Object f6024Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Bundle f6025Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f6026Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f6027Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f6028Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public JSONObject f6029Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f6030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public AccessToken f6031Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6018Wwwwwwwwwwwwwwwwwwwww = GraphRequest.class.getSimpleName();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0007\u0010\tR\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00018\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\n\u0010\f¨\u0006\r"}, d2 = {"Lcom/facebook/GraphRequest$Attachment;", "", "Lcom/facebook/GraphRequest;", AdActivity.REQUEST_KEY_EXTRA, "value", "<init>", "(Lcom/facebook/GraphRequest;Ljava/lang/Object;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/GraphRequest;", "()Lcom/facebook/GraphRequest;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Object;", "()Ljava/lang/Object;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Attachment {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Object f6032Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final GraphRequest f6033Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Attachment(@NotNull GraphRequest graphRequest, @Nullable Object obj) {
            this.f6033Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = graphRequest;
            this.f6032Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = obj;
        }

        @Nullable
        public final Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6032Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final GraphRequest Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6033Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/facebook/GraphRequest$Callback;", "", "Lcom/facebook/GraphResponse;", "response", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/GraphResponse;)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface Callback {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull GraphResponse graphResponse);
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000¾\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\u0010%\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b>\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0013\u0010\rJA\u0010\u001a\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\t2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u000f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ'\u0010$\u001a\u00020\u00102\u0006\u0010!\u001a\u00020 2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b$\u0010%J/\u0010)\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\u001c2\u0006\u0010'\u001a\u00020\u00012\u0006\u0010#\u001a\u00020\"2\u0006\u0010(\u001a\u00020\u000bH\u0002¢\u0006\u0004\b)\u0010*J'\u00100\u001a\u00020\u00102\u0006\u0010,\u001a\u00020+2\u0006\u0010#\u001a\u00020-2\u0006\u0010/\u001a\u00020.H\u0002¢\u0006\u0004\b0\u00101J+\u00105\u001a\u00020\u00102\u0012\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u000203022\u0006\u0010#\u001a\u00020-H\u0002¢\u0006\u0004\b5\u00106J9\u00109\u001a\u00020\u00102\u0006\u0010#\u001a\u00020-2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020.072\u0012\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020308H\u0002¢\u0006\u0004\b9\u0010:J\u0017\u0010<\u001a\u00020\u001c2\u0006\u0010;\u001a\u00020\tH\u0002¢\u0006\u0004\b<\u0010=J\u0019\u0010>\u001a\u00020\u000b2\b\u0010'\u001a\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0004\b>\u0010?J\u0019\u0010@\u001a\u00020\u000b2\b\u0010'\u001a\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0004\b@\u0010?J\u0019\u0010A\u001a\u00020\u001c2\b\u0010'\u001a\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0004\bA\u0010BJ#\u0010G\u001a\u00020.2\b\u0010D\u001a\u0004\u0018\u00010C2\b\u0010F\u001a\u0004\u0018\u00010EH\u0007¢\u0006\u0004\bG\u0010HJ7\u0010K\u001a\u00020.2\b\u0010D\u001a\u0004\u0018\u00010C2\b\u0010I\u001a\u0004\u0018\u00010\u001c2\b\u0010!\u001a\u0004\u0018\u00010 2\b\u0010F\u001a\u0004\u0018\u00010JH\u0007¢\u0006\u0004\bK\u0010LJ7\u0010N\u001a\u00020.2\b\u0010D\u001a\u0004\u0018\u00010C2\b\u0010I\u001a\u0004\u0018\u00010\u001c2\b\u0010M\u001a\u0004\u0018\u00010+2\b\u0010F\u001a\u0004\u0018\u00010JH\u0007¢\u0006\u0004\bN\u0010OJ-\u0010P\u001a\u00020.2\b\u0010D\u001a\u0004\u0018\u00010C2\b\u0010I\u001a\u0004\u0018\u00010\u001c2\b\u0010F\u001a\u0004\u0018\u00010JH\u0007¢\u0006\u0004\bP\u0010QJ\u0017\u0010R\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\bR\u0010SJ\u0017\u0010U\u001a\u00020T2\u0006\u0010/\u001a\u00020.H\u0007¢\u0006\u0004\bU\u0010VJ)\u0010Y\u001a\b\u0012\u0004\u0012\u00020T0X2\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020.0W\"\u00020.H\u0007¢\u0006\u0004\bY\u0010ZJ#\u0010[\u001a\b\u0012\u0004\u0012\u00020T0X2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020.07H\u0007¢\u0006\u0004\b[\u0010\\J\u001d\u0010]\u001a\b\u0012\u0004\u0012\u00020T0X2\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b]\u0010^J#\u0010`\u001a\u00020_2\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020.0W\"\u00020.H\u0007¢\u0006\u0004\b`\u0010aJ\u001d\u0010b\u001a\u00020_2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020.07H\u0007¢\u0006\u0004\bb\u0010cJ\u0017\u0010d\u001a\u00020_2\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\bd\u0010eJ%\u0010f\u001a\b\u0012\u0004\u0012\u00020T0X2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\bf\u0010gJ%\u0010i\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\t2\f\u0010h\u001a\b\u0012\u0004\u0012\u00020T0XH\u0001¢\u0006\u0004\bi\u0010jJ\u0017\u0010k\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\tH\u0001¢\u0006\u0004\bk\u0010lJ\u001f\u0010m\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0006H\u0001¢\u0006\u0004\bm\u0010nR\u0014\u0010q\u001a\u00020\u001c8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bo\u0010pR\u001e\u0010r\u001a\u0004\u0018\u00010\u001c8B@\u0002X\u0082\u000e¢\u0006\f\n\u0004\br\u0010s\u001a\u0004\bt\u0010pR\u0014\u0010u\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0006\n\u0004\bu\u0010sR\u0014\u0010v\u001a\u00020\u001c8\u0006X\u0086T¢\u0006\u0006\n\u0004\bv\u0010sR\u0014\u0010w\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0006\n\u0004\bw\u0010sR\u0014\u0010x\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0006\n\u0004\bx\u0010sR\u0014\u0010y\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0006\n\u0004\by\u0010sR\u0014\u0010z\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0006\n\u0004\bz\u0010sR\u0014\u0010{\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0006\n\u0004\b{\u0010sR\u0014\u0010|\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0006\n\u0004\b|\u0010sR\u0014\u0010}\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0006\n\u0004\b}\u0010sR\u0014\u0010~\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0006\n\u0004\b~\u0010sR\u0014\u0010\u007f\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u007f\u0010sR\u0016\u0010\u0080\u0001\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0007\n\u0005\b\u0080\u0001\u0010sR\u0016\u0010\u0081\u0001\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0007\n\u0005\b\u0081\u0001\u0010sR\u0016\u0010\u0082\u0001\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0007\n\u0005\b\u0082\u0001\u0010sR\u0016\u0010\u0083\u0001\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0007\n\u0005\b\u0083\u0001\u0010sR\u0016\u0010\u0084\u0001\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0007\n\u0005\b\u0084\u0001\u0010sR\u0016\u0010\u0085\u0001\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0007\n\u0005\b\u0085\u0001\u0010sR\u0016\u0010\u0086\u0001\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0007\n\u0005\b\u0086\u0001\u0010sR\u0016\u0010\u0087\u0001\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0007\n\u0005\b\u0087\u0001\u0010sR\u0016\u0010\u0088\u0001\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0007\n\u0005\b\u0088\u0001\u0010sR\u0016\u0010\u0089\u0001\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0007\n\u0005\b\u0089\u0001\u0010sR\u0016\u0010\u008a\u0001\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0007\n\u0005\b\u008a\u0001\u0010sR\u0016\u0010\u008b\u0001\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0007\n\u0005\b\u008b\u0001\u0010sR\u0016\u0010\u008c\u0001\u001a\u00020\u001c8\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u008c\u0001\u0010sR\u0016\u0010\u008d\u0001\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0007\n\u0005\b\u008d\u0001\u0010sR\u0016\u0010\u008e\u0001\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0007\n\u0005\b\u008e\u0001\u0010sR\u0016\u0010\u008f\u0001\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0007\n\u0005\b\u008f\u0001\u0010sR\u0017\u0010\u0090\u0001\u001a\u00020\u00168\u0006X\u0086T¢\u0006\b\n\u0006\b\u0090\u0001\u0010\u0091\u0001R\u0016\u0010\u0092\u0001\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0007\n\u0005\b\u0092\u0001\u0010sR\u0016\u0010\u0093\u0001\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0093\u0001\u0010sR\u0016\u0010\u0094\u0001\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0007\n\u0005\b\u0094\u0001\u0010sR\u0016\u0010\u0095\u0001\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0007\n\u0005\b\u0095\u0001\u0010sR\u0016\u0010\u0096\u0001\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0007\n\u0005\b\u0096\u0001\u0010sR\u0016\u0010\u0097\u0001\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0007\n\u0005\b\u0097\u0001\u0010sR\u0016\u0010\u0098\u0001\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0007\n\u0005\b\u0098\u0001\u0010sR\u0016\u0010\u0099\u0001\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0007\n\u0005\b\u0099\u0001\u0010sR\u0016\u0010\u009a\u0001\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0007\n\u0005\b\u009a\u0001\u0010sR\u0016\u0010\u009b\u0001\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0007\n\u0005\b\u009b\u0001\u0010sR\u0016\u0010\u009c\u0001\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0007\n\u0005\b\u009c\u0001\u0010sR\u001a\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u009d\u0001\u0010sR\"\u0010 \u0001\u001a\r \u009f\u0001*\u0005\u0018\u00010\u009e\u00010\u009e\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b \u0001\u0010¡\u0001¨\u0006¢\u0001"}, d2 = {"Lcom/facebook/GraphRequest$Companion;", "", "<init>", "()V", "Ljava/net/URL;", "url", "Ljava/net/HttpURLConnection;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/net/URL;)Ljava/net/HttpURLConnection;", "Lcom/facebook/GraphRequestBatch;", "requests", "", "Wwwwwwwwwwwwwwww", "(Lcom/facebook/GraphRequestBatch;)Z", "connection", "shouldUseGzip", "", "Kkkkkkkkkkkkkkkkkkkk", "(Ljava/net/HttpURLConnection;Z)V", "Wwwwwwwwwwwwwww", "Lcom/facebook/internal/Logger;", "logger", "", "numRequests", "Ljava/io/OutputStream;", "outputStream", "Www", "(Lcom/facebook/GraphRequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;Z)V", "", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "Wwwwwwwwwwwwww", "(Ljava/lang/String;)Z", "Lorg/json/JSONObject;", "graphObject", "Lcom/facebook/GraphRequest$KeyValueSerializer;", "serializer", "Wwwww", "(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$KeyValueSerializer;)V", "key", "value", "passByValue", "Wwww", "(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V", "Landroid/os/Bundle;", "bundle", "Lcom/facebook/GraphRequest$Serializer;", "Lcom/facebook/GraphRequest;", AdActivity.REQUEST_KEY_EXTRA, "Kkkkkkkkkkkkkkkkkkkkkkk", "(Landroid/os/Bundle;Lcom/facebook/GraphRequest$Serializer;Lcom/facebook/GraphRequest;)V", "", "Lcom/facebook/GraphRequest$Attachment;", "attachments", "Kkkkkkkkkkkkkkkkkkkkkkkk", "(Ljava/util/Map;Lcom/facebook/GraphRequest$Serializer;)V", "", "", "Kkkkkkkkkkkkkkkkkkkkkk", "(Lcom/facebook/GraphRequest$Serializer;Ljava/util/Collection;Ljava/util/Map;)V", "batch", "Wwwwwwwwwwwwwwwwwww", "(Lcom/facebook/GraphRequestBatch;)Ljava/lang/String;", "Wwwwwwwwwwwww", "(Ljava/lang/Object;)Z", "Wwwwwwwwwwww", "Wwwwww", "(Ljava/lang/Object;)Ljava/lang/String;", "Lcom/facebook/AccessToken;", "accessToken", "Lcom/facebook/GraphRequest$GraphJSONObjectCallback;", "callback", "Wwwwwwwwww", "(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;", "graphPath", "Lcom/facebook/GraphRequest$Callback;", "Wwwwwwww", "(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;", "parameters", "Wwwwwww", "(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;", "Wwwwwwwwwww", "(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;", "Kkkkkkkkkkkkkkkkkkk", "(Lcom/facebook/GraphRequestBatch;)Ljava/net/HttpURLConnection;", "Lcom/facebook/GraphResponse;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/GraphRequest;)Lcom/facebook/GraphResponse;", "", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "([Lcom/facebook/GraphRequest;)Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Collection;)Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/GraphRequestBatch;)Ljava/util/List;", "Lcom/facebook/GraphRequestAsyncTask;", "Wwwwwwwwwwwwwwwwwwwww", "([Lcom/facebook/GraphRequest;)Lcom/facebook/GraphRequestAsyncTask;", "Wwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Collection;)Lcom/facebook/GraphRequestAsyncTask;", "Wwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;", "Wwwwwwwwwwwwwwwwwwww", "(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;", "responses", "Kkkkkkkkkkkkkkkkkkkkkkkkkk", "(Lcom/facebook/GraphRequestBatch;Ljava/util/List;)V", "Kkkkkkkkkkkkkkkkkk", "(Lcom/facebook/GraphRequestBatch;)V", "Kkkkkkkkkkkkkkkkkkkkk", "(Lcom/facebook/GraphRequestBatch;Ljava/net/HttpURLConnection;)V", "Wwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "mimeContentType", "userAgent", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwww", "ACCEPT_LANGUAGE_HEADER", "ACCESS_TOKEN_PARAM", "ATTACHED_FILES_PARAM", "ATTACHMENT_FILENAME_PREFIX", "BATCH_APP_ID_PARAM", "BATCH_BODY_PARAM", "BATCH_ENTRY_DEPENDS_ON_PARAM", "BATCH_ENTRY_NAME_PARAM", "BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM", "BATCH_METHOD_PARAM", "BATCH_PARAM", "BATCH_RELATIVE_URL_PARAM", "CAPTION_PARAM", "CONTENT_ENCODING_HEADER", "CONTENT_TYPE_HEADER", "DEBUG_KEY", "DEBUG_MESSAGES_KEY", "DEBUG_MESSAGE_KEY", "DEBUG_MESSAGE_LINK_KEY", "DEBUG_MESSAGE_TYPE_KEY", "DEBUG_PARAM", "DEBUG_SEVERITY_INFO", "DEBUG_SEVERITY_WARNING", "FIELDS_PARAM", "FORMAT_JSON", "FORMAT_PARAM", "ISO_8601_FORMAT_STRING", "MAXIMUM_BATCH_SIZE", "I", "ME", "MIME_BOUNDARY", "MY_FRIENDS", "MY_PHOTOS", "PICTURE_PARAM", "SDK_ANDROID", "SDK_PARAM", "SEARCH", "USER_AGENT_BASE", "USER_AGENT_HEADER", "VIDEOS_SUFFIX", "defaultBatchApplicationId", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "versionPattern", "Ljava/util/regex/Pattern;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final void Kkkkkkkkkkkkkkkkkkkkkkkkk(ArrayList arrayList, GraphRequestBatch graphRequestBatch) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                Pair pair = (Pair) obj;
                ((Callback) pair.first).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((GraphResponse) pair.second);
            }
            for (GraphRequestBatch.Callback callback : graphRequestBatch.Wwwwwwwwwwwwwwwwwwwwwww()) {
                callback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(graphRequestBatch);
            }
        }

        public static final void Wwwwwwwww(GraphJSONObjectCallback graphJSONObjectCallback, GraphResponse graphResponse) {
            if (graphJSONObjectCallback == null) {
                return;
            }
            graphJSONObjectCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(graphResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), graphResponse);
        }

        @JvmStatic
        public final void Kkkkkkkkkkkkkkkkkk(@NotNull GraphRequestBatch graphRequestBatch) {
            Iterator<GraphRequest> it = graphRequestBatch.iterator();
            while (it.hasNext()) {
                GraphRequest next = it.next();
                if (HttpMethod.GET == next.Wwwwwwwwwwwwwww()) {
                    Utility utility = Utility.INSTANCE;
                    if (Utility.Kk(next.Wwwwwwwwwwwwww().getString("fields"))) {
                        Logger.Companion companion = Logger.Companion;
                        LoggingBehavior loggingBehavior = LoggingBehavior.DEVELOPER_ERRORS;
                        StringBuilder sb = new StringBuilder();
                        sb.append("GET requests for /");
                        String Wwwwwwwwwwwwwwwww2 = next.Wwwwwwwwwwwwwwwww();
                        if (Wwwwwwwwwwwwwwwww2 == null) {
                            Wwwwwwwwwwwwwwwww2 = "";
                        }
                        sb.append(Wwwwwwwwwwwwwwwww2);
                        sb.append(" should contain an explicit \"fields\" parameter.");
                        companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(loggingBehavior, 5, "Request", sb.toString());
                    }
                }
            }
        }

        @JvmStatic
        @NotNull
        public final HttpURLConnection Kkkkkkkkkkkkkkkkkkk(@NotNull GraphRequestBatch graphRequestBatch) {
            URL url;
            Kkkkkkkkkkkkkkkkkk(graphRequestBatch);
            try {
                if (graphRequestBatch.size() == 1) {
                    url = new URL(graphRequestBatch.get(0).Wwwwwwwwwww());
                } else {
                    url = new URL(ServerProtocol.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
                }
                HttpURLConnection httpURLConnection = null;
                try {
                    httpURLConnection = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(url);
                    Kkkkkkkkkkkkkkkkkkkkk(graphRequestBatch, httpURLConnection);
                    return httpURLConnection;
                } catch (IOException e) {
                    Utility.Wwwwwwwwwwwwwwwww(httpURLConnection);
                    throw new FacebookException("could not construct request body", e);
                } catch (JSONException e2) {
                    Utility.Wwwwwwwwwwwwwwwww(httpURLConnection);
                    throw new FacebookException("could not construct request body", e2);
                }
            } catch (MalformedURLException e3) {
                throw new FacebookException("could not construct URL for request", e3);
            }
        }

        public final void Kkkkkkkkkkkkkkkkkkkk(HttpURLConnection httpURLConnection, boolean z) {
            if (z) {
                httpURLConnection.setRequestProperty("Content-Type", ShareTarget.ENCODING_TYPE_URL_ENCODED);
                httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
                return;
            }
            httpURLConnection.setRequestProperty("Content-Type", Wwwwwwwwwwwwwwwwww());
        }

        /* JADX WARN: Removed duplicated region for block: B:39:0x00df  */
        @kotlin.jvm.JvmStatic
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void Kkkkkkkkkkkkkkkkkkkkk(@org.jetbrains.annotations.NotNull com.facebook.GraphRequestBatch r12, @org.jetbrains.annotations.NotNull java.net.HttpURLConnection r13) throws java.io.IOException, org.json.JSONException {
            /*
                Method dump skipped, instructions count: 231
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.Companion.Kkkkkkkkkkkkkkkkkkkkk(com.facebook.GraphRequestBatch, java.net.HttpURLConnection):void");
        }

        public final void Kkkkkkkkkkkkkkkkkkkkkk(Serializer serializer, Collection<GraphRequest> collection, Map<String, Attachment> map) {
            JSONArray jSONArray = new JSONArray();
            for (GraphRequest graphRequest : collection) {
                graphRequest.Wwwww(jSONArray, map);
            }
            serializer.Wwwwwwwwwwwwwwwwwwwwwww("batch", jSONArray, collection);
        }

        public final void Kkkkkkkkkkkkkkkkkkkkkkk(Bundle bundle, Serializer serializer, GraphRequest graphRequest) {
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (Wwwwwwwwwwww(obj)) {
                    serializer.Wwwwwwwwwwwwwwwwwwwwwwwww(str, obj, graphRequest);
                }
            }
        }

        public final void Kkkkkkkkkkkkkkkkkkkkkkkk(Map<String, Attachment> map, Serializer serializer) {
            for (Map.Entry<String, Attachment> entry : map.entrySet()) {
                if (GraphRequest.Companion.Wwwwwwwwwwwww(entry.getValue().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                    serializer.Wwwwwwwwwwwwwwwwwwwwwwwww(entry.getKey(), entry.getValue().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), entry.getValue().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                }
            }
        }

        @JvmStatic
        public final void Kkkkkkkkkkkkkkkkkkkkkkkkkk(@NotNull final GraphRequestBatch graphRequestBatch, @NotNull List<GraphResponse> list) {
            Boolean valueOf;
            int size = graphRequestBatch.size();
            final ArrayList arrayList = new ArrayList();
            if (size > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    GraphRequest graphRequest = graphRequestBatch.get(i);
                    if (graphRequest.Wwwwwwwwwwwwwwwwwwww() != null) {
                        arrayList.add(new Pair(graphRequest.Wwwwwwwwwwwwwwwwwwww(), list.get(i)));
                    }
                    if (i2 >= size) {
                        break;
                    }
                    i = i2;
                }
            }
            if (arrayList.size() > 0) {
                Runnable runnable = new Runnable() { // from class: com.facebook.Wwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        GraphRequest.Companion.Kkkkkkkkkkkkkkkkkkkkkkkkk(arrayList, graphRequestBatch);
                    }
                };
                Handler Wwwwwwwwwwwwwwwwwwwwwwww2 = graphRequestBatch.Wwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    valueOf = null;
                } else {
                    valueOf = Boolean.valueOf(Wwwwwwwwwwwwwwwwwwwwwwww2.post(runnable));
                }
                if (valueOf == null) {
                    runnable.run();
                }
            }
        }

        public final void Www(GraphRequestBatch graphRequestBatch, Logger logger, int i, URL url, OutputStream outputStream, boolean z) {
            Serializer serializer = new Serializer(outputStream, logger, z);
            if (i == 1) {
                GraphRequest graphRequest = graphRequestBatch.get(0);
                Map<String, Attachment> hashMap = new HashMap<>();
                for (String str : graphRequest.Wwwwwwwwwwwwww().keySet()) {
                    Object obj = graphRequest.Wwwwwwwwwwwwww().get(str);
                    if (Wwwwwwwwwwwww(obj)) {
                        hashMap.put(str, new Attachment(graphRequest, obj));
                    }
                }
                if (logger != null) {
                    logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("  Parameters:\n");
                }
                Kkkkkkkkkkkkkkkkkkkkkkk(graphRequest.Wwwwwwwwwwwwww(), serializer, graphRequest);
                if (logger != null) {
                    logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("  Attachments:\n");
                }
                Kkkkkkkkkkkkkkkkkkkkkkkk(hashMap, serializer);
                JSONObject Wwwwwwwwwwwwwwwwww2 = graphRequest.Wwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwww2 != null) {
                    Wwwww(Wwwwwwwwwwwwwwwwww2, url.getPath(), serializer);
                    return;
                }
                return;
            }
            String Wwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwww(graphRequestBatch);
            if (Wwwwwwwwwwwwwwwwwww2.length() != 0) {
                serializer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("batch_app_id", Wwwwwwwwwwwwwwwwwww2);
                Map<String, Attachment> hashMap2 = new HashMap<>();
                Kkkkkkkkkkkkkkkkkkkkkk(serializer, graphRequestBatch, hashMap2);
                if (logger != null) {
                    logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("  Attachments:\n");
                }
                Kkkkkkkkkkkkkkkkkkkkkkkk(hashMap2, serializer);
                return;
            }
            throw new FacebookException("App ID was not specified at the request or Settings.");
        }

        public final void Wwww(String str, Object obj, KeyValueSerializer keyValueSerializer, boolean z) {
            Class<?> cls = obj.getClass();
            if (JSONObject.class.isAssignableFrom(cls)) {
                JSONObject jSONObject = (JSONObject) obj;
                if (z) {
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                        Wwww(String.format("%s[%s]", Arrays.copyOf(new Object[]{str, next}, 2)), jSONObject.opt(next), keyValueSerializer, z);
                    }
                } else if (jSONObject.has("id")) {
                    Wwww(str, jSONObject.optString("id"), keyValueSerializer, z);
                } else if (jSONObject.has("url")) {
                    Wwww(str, jSONObject.optString("url"), keyValueSerializer, z);
                } else if (jSONObject.has("fbsdk:create_object")) {
                    Wwww(str, jSONObject.toString(), keyValueSerializer, z);
                }
            } else if (JSONArray.class.isAssignableFrom(cls)) {
                JSONArray jSONArray = (JSONArray) obj;
                int length = jSONArray.length();
                if (length > 0) {
                    int i = 0;
                    while (true) {
                        int i2 = i + 1;
                        StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                        Wwww(String.format(Locale.ROOT, "%s[%d]", Arrays.copyOf(new Object[]{str, Integer.valueOf(i)}, 2)), jSONArray.opt(i), keyValueSerializer, z);
                        if (i2 < length) {
                            i = i2;
                        } else {
                            return;
                        }
                    }
                }
            } else if (!String.class.isAssignableFrom(cls) && !Number.class.isAssignableFrom(cls) && !Boolean.class.isAssignableFrom(cls)) {
                if (Date.class.isAssignableFrom(cls)) {
                    keyValueSerializer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date) obj));
                    return;
                }
                Utility utility = Utility.INSTANCE;
                Utility.Illllllllllllllllllllll(GraphRequest.f6018Wwwwwwwwwwwwwwwwwwwww, "The type of property " + str + " in the graph object is unknown. It won't be sent in the request.");
            } else {
                keyValueSerializer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, obj.toString());
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x002e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void Wwwww(org.json.JSONObject r10, java.lang.String r11, com.facebook.GraphRequest.KeyValueSerializer r12) {
            /*
                r9 = this;
                boolean r0 = r9.Wwwwwwwwwwwwww(r11)
                r1 = 1
                r2 = 0
                if (r0 == 0) goto L23
                r7 = 6
                r8 = 0
                java.lang.String r4 = ":"
                r5 = 0
                r6 = 0
                r3 = r11
                int r11 = kotlin.text.StringsKt.indexOf$default(r3, r4, r5, r6, r7, r8)
                java.lang.String r4 = "?"
                int r0 = kotlin.text.StringsKt.indexOf$default(r3, r4, r5, r6, r7, r8)
                r3 = 3
                if (r11 <= r3) goto L23
                r3 = -1
                if (r0 == r3) goto L21
                if (r11 >= r0) goto L23
            L21:
                r11 = r1
                goto L24
            L23:
                r11 = r2
            L24:
                java.util.Iterator r0 = r10.keys()
            L28:
                boolean r3 = r0.hasNext()
                if (r3 == 0) goto L49
                java.lang.Object r3 = r0.next()
                java.lang.String r3 = (java.lang.String) r3
                java.lang.Object r4 = r10.opt(r3)
                if (r11 == 0) goto L44
                java.lang.String r5 = "image"
                boolean r5 = kotlin.text.StringsKt.equals(r3, r5, r1)
                if (r5 == 0) goto L44
                r5 = r1
                goto L45
            L44:
                r5 = r2
            L45:
                r9.Wwww(r3, r4, r12, r5)
                goto L28
            L49:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.Companion.Wwwww(org.json.JSONObject, java.lang.String, com.facebook.GraphRequest$KeyValueSerializer):void");
        }

        public final String Wwwwww(Object obj) {
            if (obj instanceof String) {
                return (String) obj;
            }
            if (!(obj instanceof Boolean) && !(obj instanceof Number)) {
                if (obj instanceof Date) {
                    return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date) obj);
                }
                throw new IllegalArgumentException("Unsupported parameter type.");
            }
            return obj.toString();
        }

        @JvmStatic
        @NotNull
        public final GraphRequest Wwwwwww(@Nullable AccessToken accessToken, @Nullable String str, @Nullable Bundle bundle, @Nullable Callback callback) {
            return new GraphRequest(accessToken, str, bundle, HttpMethod.POST, callback, null, 32, null);
        }

        @JvmStatic
        @NotNull
        public final GraphRequest Wwwwwwww(@Nullable AccessToken accessToken, @Nullable String str, @Nullable JSONObject jSONObject, @Nullable Callback callback) {
            GraphRequest graphRequest = new GraphRequest(accessToken, str, null, HttpMethod.POST, callback, null, 32, null);
            graphRequest.Kkkkkkkkkkkkkkkkkkkkkkkkkk(jSONObject);
            return graphRequest;
        }

        @JvmStatic
        @NotNull
        public final GraphRequest Wwwwwwwwww(@Nullable AccessToken accessToken, @Nullable final GraphJSONObjectCallback graphJSONObjectCallback) {
            return new GraphRequest(accessToken, "me", null, null, new Callback() { // from class: com.facebook.Wwwwwwwwwwwwwwwwwww
                @Override // com.facebook.GraphRequest.Callback
                public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GraphResponse graphResponse) {
                    GraphRequest.Companion.Wwwwwwwww(GraphRequest.GraphJSONObjectCallback.this, graphResponse);
                }
            }, null, 32, null);
        }

        @JvmStatic
        @NotNull
        public final GraphRequest Wwwwwwwwwww(@Nullable AccessToken accessToken, @Nullable String str, @Nullable Callback callback) {
            return new GraphRequest(accessToken, str, null, null, callback, null, 32, null);
        }

        public final boolean Wwwwwwwwwwww(Object obj) {
            if (!(obj instanceof String) && !(obj instanceof Boolean) && !(obj instanceof Number) && !(obj instanceof Date)) {
                return false;
            }
            return true;
        }

        public final boolean Wwwwwwwwwwwww(Object obj) {
            if (!(obj instanceof Bitmap) && !(obj instanceof byte[]) && !(obj instanceof Uri) && !(obj instanceof ParcelFileDescriptor) && !(obj instanceof ParcelableResourceWithMimeType)) {
                return false;
            }
            return true;
        }

        public final boolean Wwwwwwwwwwwwww(String str) {
            Matcher matcher = GraphRequest.f6015Wwwwwwwwwwwwwwwwww.matcher(str);
            if (matcher.matches()) {
                str = matcher.group(1);
            }
            if (StringsKt.startsWith$default(str, "me/", false, 2, (Object) null) || StringsKt.startsWith$default(str, "/me/", false, 2, (Object) null)) {
                return true;
            }
            return false;
        }

        public final boolean Wwwwwwwwwwwwwww(GraphRequestBatch graphRequestBatch) {
            Iterator<GraphRequest> it = graphRequestBatch.iterator();
            while (it.hasNext()) {
                GraphRequest next = it.next();
                for (String str : next.Wwwwwwwwwwwwww().keySet()) {
                    if (Wwwwwwwwwwwww(next.Wwwwwwwwwwwwww().get(str))) {
                        return false;
                    }
                }
            }
            return true;
        }

        public final boolean Wwwwwwwwwwwwwwww(GraphRequestBatch graphRequestBatch) {
            for (GraphRequestBatch.Callback callback : graphRequestBatch.Wwwwwwwwwwwwwwwwwwwwwww()) {
                if (callback instanceof GraphRequestBatch.OnProgressCallback) {
                    return true;
                }
            }
            Iterator<GraphRequest> it = graphRequestBatch.iterator();
            while (it.hasNext()) {
                if (it.next().Wwwwwwwwwwwwwwwwwwww() instanceof OnProgressCallback) {
                    return true;
                }
            }
            return false;
        }

        public final String Wwwwwwwwwwwwwwwww() {
            if (GraphRequest.f6014Wwwwwwwwwwwwwwwww == null) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                GraphRequest.f6014Wwwwwwwwwwwwwwwww = String.format("%s.%s", Arrays.copyOf(new Object[]{"FBAndroidSDK", "17.0.2"}, 2));
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = InternalSettings.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (!Utility.Kk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                    GraphRequest.f6014Wwwwwwwwwwwwwwwww = String.format(Locale.ROOT, "%s/%s", Arrays.copyOf(new Object[]{GraphRequest.f6014Wwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2}, 2));
                }
            }
            return GraphRequest.f6014Wwwwwwwwwwwwwwwww;
        }

        public final String Wwwwwwwwwwwwwwwwww() {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            return String.format("multipart/form-data; boundary=%s", Arrays.copyOf(new Object[]{GraphRequest.f6017Wwwwwwwwwwwwwwwwwwww}, 1));
        }

        public final String Wwwwwwwwwwwwwwwwwww(GraphRequestBatch graphRequestBatch) {
            String Wwwwwwwwwwwwwwwwwwwwwwwww2 = graphRequestBatch.Wwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwww2 != null && !graphRequestBatch.isEmpty()) {
                return Wwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            Iterator<GraphRequest> it = graphRequestBatch.iterator();
            while (it.hasNext()) {
                AccessToken Wwwwwwwwwwwwwwwwwwwwww2 = it.next().Wwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwww2 != null) {
                    return Wwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
            }
            String str = GraphRequest.f6016Wwwwwwwwwwwwwwwwwww;
            if (str != null && str.length() > 0) {
                return str;
            }
            return FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww();
        }

        @JvmStatic
        @NotNull
        public final List<GraphResponse> Wwwwwwwwwwwwwwwwwwww(@NotNull HttpURLConnection httpURLConnection, @NotNull GraphRequestBatch graphRequestBatch) {
            List<GraphResponse> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = GraphResponse.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(httpURLConnection, graphRequestBatch);
            Utility.Wwwwwwwwwwwwwwwww(httpURLConnection);
            int size = graphRequestBatch.size();
            if (size == Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size()) {
                Kkkkkkkkkkkkkkkkkkkkkkkkkk(graphRequestBatch, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                AccessTokenManager.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            throw new FacebookException(String.format(Locale.US, "Received %d responses while expecting %d", Arrays.copyOf(new Object[]{Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size()), Integer.valueOf(size)}, 2)));
        }

        @JvmStatic
        @NotNull
        public final GraphRequestAsyncTask Wwwwwwwwwwwwwwwwwwwww(@NotNull GraphRequest... graphRequestArr) {
            return Wwwwwwwwwwwwwwwwwwwwww(ArraysKt.toList(graphRequestArr));
        }

        @JvmStatic
        @NotNull
        public final GraphRequestAsyncTask Wwwwwwwwwwwwwwwwwwwwww(@NotNull Collection<GraphRequest> collection) {
            return Wwwwwwwwwwwwwwwwwwwwwww(new GraphRequestBatch(collection));
        }

        @JvmStatic
        @NotNull
        public final GraphRequestAsyncTask Wwwwwwwwwwwwwwwwwwwwwww(@NotNull GraphRequestBatch graphRequestBatch) {
            Validate.Wwwwwwwwwwwwwwwwwwwwwww(graphRequestBatch, "requests");
            GraphRequestAsyncTask graphRequestAsyncTask = new GraphRequestAsyncTask(graphRequestBatch);
            graphRequestAsyncTask.executeOnExecutor(FacebookSdk.Wwwwwwwwwwwwww(), new Void[0]);
            return graphRequestAsyncTask;
        }

        @JvmStatic
        @NotNull
        public final List<GraphResponse> Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull GraphRequest... graphRequestArr) {
            return Wwwwwwwwwwwwwwwwwwwwwwwww(ArraysKt.toList(graphRequestArr));
        }

        @JvmStatic
        @NotNull
        public final List<GraphResponse> Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Collection<GraphRequest> collection) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwww(new GraphRequestBatch(collection));
        }

        @JvmStatic
        @NotNull
        public final List<GraphResponse> Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull GraphRequestBatch graphRequestBatch) {
            Exception exc;
            HttpURLConnection httpURLConnection;
            List<GraphResponse> list;
            Validate.Wwwwwwwwwwwwwwwwwwwwwww(graphRequestBatch, "requests");
            HttpURLConnection httpURLConnection2 = null;
            try {
                httpURLConnection = Kkkkkkkkkkkkkkkkkkk(graphRequestBatch);
                exc = null;
            } catch (Exception e) {
                exc = e;
                httpURLConnection = null;
            } catch (Throwable th) {
                th = th;
                Utility.Wwwwwwwwwwwwwwwww(httpURLConnection2);
                throw th;
            }
            try {
                if (httpURLConnection != null) {
                    list = Wwwwwwwwwwwwwwwwwwww(httpURLConnection, graphRequestBatch);
                } else {
                    List<GraphResponse> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = GraphResponse.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(graphRequestBatch.Wwwwwwwwwwwwwwwwwwwww(), null, new FacebookException(exc));
                    Kkkkkkkkkkkkkkkkkkkkkkkkkk(graphRequestBatch, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    list = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                }
                Utility.Wwwwwwwwwwwwwwwww(httpURLConnection);
                return list;
            } catch (Throwable th2) {
                th = th2;
                httpURLConnection2 = httpURLConnection;
                Utility.Wwwwwwwwwwwwwwwww(httpURLConnection2);
                throw th;
            }
        }

        @JvmStatic
        @NotNull
        public final GraphResponse Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull GraphRequest graphRequest) {
            List<GraphResponse> Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwww(graphRequest);
            if (Wwwwwwwwwwwwwwwwwwwwwwww2.size() == 1) {
                return Wwwwwwwwwwwwwwwwwwwwwwww2.get(0);
            }
            throw new FacebookException("invalid state: expected a single response");
        }

        public final HttpURLConnection Wwwwwwwwwwwwwwwwwwwwwwwwwwww(URL url) throws IOException {
            URLConnection openConnection = url.openConnection();
            if (openConnection != null) {
                HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
                httpURLConnection.setRequestProperty("User-Agent", Wwwwwwwwwwwwwwwww());
                httpURLConnection.setRequestProperty(HttpHeaders.ACCEPT_LANGUAGE, Locale.getDefault().toString());
                httpURLConnection.setChunkedStreamingMode(0);
                return httpURLConnection;
            }
            throw new NullPointerException("null cannot be cast to non-null type java.net.HttpURLConnection");
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bæ\u0080\u0001\u0018\u00002\u00020\u0001J#\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H&¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/facebook/GraphRequest$GraphJSONArrayCallback;", "", "Lorg/json/JSONArray;", "objects", "Lcom/facebook/GraphResponse;", "response", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONArray;Lcom/facebook/GraphResponse;)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface GraphJSONArrayCallback {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable JSONArray jSONArray, @Nullable GraphResponse graphResponse);
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bæ\u0080\u0001\u0018\u00002\u00020\u0001J#\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H&¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/facebook/GraphRequest$GraphJSONObjectCallback;", "", "Lorg/json/JSONObject;", "obj", "Lcom/facebook/GraphResponse;", "response", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface GraphJSONObjectCallback {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable JSONObject jSONObject, @Nullable GraphResponse graphResponse);
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\bâ\u0080\u0001\u0018\u00002\u00020\u0001J\u001f\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H&¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/facebook/GraphRequest$KeyValueSerializer;", "", "", "key", "value", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface KeyValueSerializer {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2);
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u001f\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H&¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/facebook/GraphRequest$OnProgressCallback;", "Lcom/facebook/GraphRequest$Callback;", "", "current", AppLovinMediationProvider.MAX, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(JJ)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface OnProgressCallback extends Callback {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, long j2);
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\f\u0018\u0000 \u001b*\n\b\u0000\u0010\u0002*\u0004\u0018\u00010\u00012\u00020\u0001:\u0001\u001bB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u0011\b\u0012\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0006\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0019\u0010\u0003\u001a\u0004\u0018\u00018\u00008\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001c"}, d2 = {"Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;", "Landroid/os/Parcelable;", "RESOURCE", "resource", "", "mimeType", "<init>", "(Landroid/os/Parcelable;Ljava/lang/String;)V", "Landroid/os/Parcel;", "source", "(Landroid/os/Parcel;)V", "", "describeContents", "()I", "out", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Landroid/os/Parcelable;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/os/Parcelable;", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class ParcelableResourceWithMimeType<RESOURCE extends Parcelable> implements Parcelable {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final RESOURCE f6035Wwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f6036Wwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull
        public static final Companion Companion = new Companion(null);
        @JvmField
        @NotNull
        public static final Parcelable.Creator<ParcelableResourceWithMimeType<?>> CREATOR = new Parcelable.Creator<ParcelableResourceWithMimeType<?>>() { // from class: com.facebook.GraphRequest$ParcelableResourceWithMimeType$Companion$CREATOR$1
            @Override // android.os.Parcelable.Creator
            @NotNull
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public GraphRequest.ParcelableResourceWithMimeType<?>[] newArray(int i) {
                return new GraphRequest.ParcelableResourceWithMimeType[i];
            }

            @Override // android.os.Parcelable.Creator
            @NotNull
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public GraphRequest.ParcelableResourceWithMimeType<?> createFromParcel(@NotNull Parcel parcel) {
                return new GraphRequest.ParcelableResourceWithMimeType<>(parcel, (DefaultConstructorMarker) null);
            }
        };

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public Companion() {
            }
        }

        public /* synthetic */ ParcelableResourceWithMimeType(Parcel parcel, DefaultConstructorMarker defaultConstructorMarker) {
            this(parcel);
        }

        @Nullable
        public final RESOURCE Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6035Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6036Wwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NotNull Parcel parcel, int i) {
            parcel.writeString(this.f6036Wwwwwwwwwwwwwwwwwwwwwwwww);
            parcel.writeParcelable(this.f6035Wwwwwwwwwwwwwwwwwwwwwwww, i);
        }

        public ParcelableResourceWithMimeType(RESOURCE resource, @Nullable String str) {
            this.f6036Wwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f6035Wwwwwwwwwwwwwwwwwwwwwwww = resource;
        }

        public ParcelableResourceWithMimeType(Parcel parcel) {
            this.f6036Wwwwwwwwwwwwwwwwwwwwwwwww = parcel.readString();
            this.f6035Wwwwwwwwwwwwwwwwwwwwwwww = (RESOURCE) parcel.readParcelable(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getClassLoader());
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0011\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ)\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0011\u0010\u0012J+\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00132\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u001d\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ\u001d\u0010!\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b!\u0010\"J'\u0010&\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010$\u001a\u00020#2\b\u0010%\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b&\u0010'J'\u0010*\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010)\u001a\u00020(2\b\u0010%\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b*\u0010+J\r\u0010,\u001a\u00020\u0010¢\u0006\u0004\b,\u0010-J+\u00101\u001a\u00020\u00102\b\u0010.\u001a\u0004\u0018\u00010\n2\b\u0010/\u001a\u0004\u0018\u00010\n2\b\u00100\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b1\u00102J-\u00106\u001a\u00020\u00102\u0006\u00103\u001a\u00020\n2\u0016\u00105\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\f04\"\u0004\u0018\u00010\f¢\u0006\u0004\b6\u00107J-\u00108\u001a\u00020\u00102\u0006\u00103\u001a\u00020\n2\u0016\u00105\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\f04\"\u0004\u0018\u00010\f¢\u0006\u0004\b8\u00107R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u00109R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010=\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u0010<R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010<R\u0018\u0010A\u001a\u00060>j\u0002`?8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b:\u0010@¨\u0006B"}, d2 = {"Lcom/facebook/GraphRequest$Serializer;", "Lcom/facebook/GraphRequest$KeyValueSerializer;", "Ljava/io/OutputStream;", "outputStream", "Lcom/facebook/internal/Logger;", "logger", "", "useUrlEncode", "<init>", "(Ljava/io/OutputStream;Lcom/facebook/internal/Logger;Z)V", "", "key", "", "value", "Lcom/facebook/GraphRequest;", AdActivity.REQUEST_KEY_EXTRA, "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V", "Lorg/json/JSONArray;", "requestJsonArray", "", "requests", "Wwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)V", "Landroid/graphics/Bitmap;", "bitmap", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Landroid/graphics/Bitmap;)V", "", "bytes", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;[B)V", "Landroid/net/Uri;", "contentUri", "mimeType", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V", "Landroid/os/ParcelFileDescriptor;", "descriptor", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwww", "()V", "name", "filename", "contentType", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "format", "", "args", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;[Ljava/lang/Object;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/io/OutputStream;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/internal/Logger;", "Z", "firstWrite", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "()Ljava/lang/RuntimeException;", "invalidTypeError", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Serializer implements KeyValueSerializer {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f6037Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f6038Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Logger f6039Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final OutputStream f6040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Serializer(@NotNull OutputStream outputStream, @Nullable Logger logger, boolean z) {
            this.f6040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = outputStream;
            this.f6039Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = logger;
            this.f6037Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull JSONArray jSONArray, @NotNull Collection<GraphRequest> collection) {
            OutputStream outputStream = this.f6040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (!(outputStream instanceof RequestOutputStream)) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, jSONArray.toString());
                return;
            }
            RequestOutputStream requestOutputStream = (RequestOutputStream) outputStream;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, null, null);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("[", new Object[0]);
            int i = 0;
            for (GraphRequest graphRequest : collection) {
                int i2 = i + 1;
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                requestOutputStream.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(graphRequest);
                if (i > 0) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(",%s", jSONObject.toString());
                } else {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("%s", jSONObject.toString());
                }
                i = i2;
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("]", new Object[0]);
            Logger logger = this.f6039Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (logger == null) {
                return;
            }
            logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Intrinsics.stringPlus("    ", str), jSONArray.toString());
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwww() {
            if (!this.f6037Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                Wwwwwwwwwwwwwwwwwwwwwwwwww("--%s", GraphRequest.f6017Wwwwwwwwwwwwwwwwwwww);
            } else {
                this.f6040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.write("&".getBytes(Charsets.UTF_8));
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @Nullable Object obj, @Nullable GraphRequest graphRequest) {
            OutputStream outputStream = this.f6040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (outputStream instanceof RequestOutputStream) {
                ((RequestOutputStream) outputStream).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(graphRequest);
            }
            Companion companion = GraphRequest.Companion;
            if (companion.Wwwwwwwwwwww(obj)) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, companion.Wwwwww(obj));
            } else if (obj instanceof Bitmap) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, (Bitmap) obj);
            } else if (obj instanceof byte[]) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, (byte[]) obj);
            } else if (obj instanceof Uri) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str, (Uri) obj, null);
            } else if (obj instanceof ParcelFileDescriptor) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww(str, (ParcelFileDescriptor) obj, null);
            } else if (obj instanceof ParcelableResourceWithMimeType) {
                ParcelableResourceWithMimeType parcelableResourceWithMimeType = (ParcelableResourceWithMimeType) obj;
                Parcelable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = parcelableResourceWithMimeType.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = parcelableResourceWithMimeType.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof ParcelFileDescriptor) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwww(str, (ParcelFileDescriptor) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof Uri) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str, (Uri) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                } else {
                    throw Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
            } else {
                throw Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull Object... objArr) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, Arrays.copyOf(objArr, objArr.length));
            if (!this.f6037Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("\r\n", new Object[0]);
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull ParcelFileDescriptor parcelFileDescriptor, @Nullable String str2) {
            int Wwwwwwwwwwwwwwwwww2;
            if (str2 == null) {
                str2 = "content/unknown";
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str, str2);
            OutputStream outputStream = this.f6040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (outputStream instanceof ProgressNoopOutputStream) {
                ((ProgressNoopOutputStream) outputStream).Wwwwwwwwwwwwwwwwwwwwwwwwwww(parcelFileDescriptor.getStatSize());
                Wwwwwwwwwwwwwwwwww2 = 0;
            } else {
                ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
                Utility utility = Utility.INSTANCE;
                Wwwwwwwwwwwwwwwwww2 = Utility.Wwwwwwwwwwwwwwwwww(autoCloseInputStream, this.f6040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwww("", new Object[0]);
            Wwwwwwwwwwwwwwwwwwwwwwww();
            Logger logger = this.f6039Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (logger == null) {
                return;
            }
            String stringPlus = Intrinsics.stringPlus("    ", str);
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stringPlus, String.format(Locale.ROOT, "<Data: %d>", Arrays.copyOf(new Object[]{Integer.valueOf(Wwwwwwwwwwwwwwwwww2)}, 1)));
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull Uri uri, @Nullable String str2) {
            int Wwwwwwwwwwwwwwwwww2;
            if (str2 == null) {
                str2 = "content/unknown";
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str, str2);
            if (this.f6040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww instanceof ProgressNoopOutputStream) {
                ((ProgressNoopOutputStream) this.f6040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwww(Utility.Wwwwwwww(uri));
                Wwwwwwwwwwwwwwwwww2 = 0;
            } else {
                InputStream openInputStream = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getContentResolver().openInputStream(uri);
                Utility utility = Utility.INSTANCE;
                Wwwwwwwwwwwwwwwwww2 = Utility.Wwwwwwwwwwwwwwwwww(openInputStream, this.f6040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwww("", new Object[0]);
            Wwwwwwwwwwwwwwwwwwwwwwww();
            Logger logger = this.f6039Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (logger == null) {
                return;
            }
            String stringPlus = Intrinsics.stringPlus("    ", str);
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stringPlus, String.format(Locale.ROOT, "<Data: %d>", Arrays.copyOf(new Object[]{Integer.valueOf(Wwwwwwwwwwwwwwwwww2)}, 1)));
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, @Nullable String str2, @Nullable String str3) {
            if (!this.f6037Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Content-Disposition: form-data; name=\"%s\"", str);
                if (str2 != null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("; filename=\"%s\"", str2);
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwww("", new Object[0]);
                if (str3 != null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwww("%s: %s", "Content-Type", str3);
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwww("", new Object[0]);
                return;
            }
            OutputStream outputStream = this.f6040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            outputStream.write(String.format("%s=", Arrays.copyOf(new Object[]{str}, 1)).getBytes(Charsets.UTF_8));
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull byte[] bArr) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str, "content/unknown");
            this.f6040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.write(bArr);
            Wwwwwwwwwwwwwwwwwwwwwwwwww("", new Object[0]);
            Wwwwwwwwwwwwwwwwwwwwwwww();
            Logger logger = this.f6039Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (logger == null) {
                return;
            }
            String stringPlus = Intrinsics.stringPlus("    ", str);
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stringPlus, String.format(Locale.ROOT, "<Data: %d>", Arrays.copyOf(new Object[]{Integer.valueOf(bArr.length)}, 1)));
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull Bitmap bitmap) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str, MimeTypes.IMAGE_PNG);
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, this.f6040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            Wwwwwwwwwwwwwwwwwwwwwwwwww("", new Object[0]);
            Wwwwwwwwwwwwwwwwwwwwwwww();
            Logger logger = this.f6039Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (logger == null) {
                return;
            }
            logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Intrinsics.stringPlus("    ", str), "<Image>");
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull Object... objArr) {
            if (!this.f6037Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                if (this.f6038Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    OutputStream outputStream = this.f6040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    Charset charset = Charsets.UTF_8;
                    outputStream.write("--".getBytes(charset));
                    OutputStream outputStream2 = this.f6040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    String str2 = GraphRequest.f6017Wwwwwwwwwwwwwwwwwwww;
                    if (str2 != null) {
                        outputStream2.write(str2.getBytes(charset));
                        this.f6040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.write("\r\n".getBytes(charset));
                        this.f6038Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                    }
                }
                OutputStream outputStream3 = this.f6040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
                outputStream3.write(String.format(str, Arrays.copyOf(copyOf, copyOf.length)).getBytes(Charsets.UTF_8));
                return;
            }
            OutputStream outputStream4 = this.f6040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
            Locale locale = Locale.US;
            Object[] copyOf2 = Arrays.copyOf(objArr, objArr.length);
            outputStream4.write(URLEncoder.encode(String.format(locale, str, Arrays.copyOf(copyOf2, copyOf2.length)), "UTF-8").getBytes(Charsets.UTF_8));
        }

        public final RuntimeException Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new IllegalArgumentException("value is not a supported type.");
        }

        @Override // com.facebook.GraphRequest.KeyValueSerializer
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, null, null);
            Wwwwwwwwwwwwwwwwwwwwwwwwww("%s", str2);
            Wwwwwwwwwwwwwwwwwwwwwwww();
            Logger logger = this.f6039Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (logger == null) {
                return;
            }
            logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Intrinsics.stringPlus("    ", str), str2);
        }
    }

    static {
        char[] charArray = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
        StringBuilder sb = new StringBuilder();
        SecureRandom secureRandom = new SecureRandom();
        int nextInt = secureRandom.nextInt(11) + 30;
        if (nextInt > 0) {
            int i = 0;
            do {
                i++;
                sb.append(charArray[secureRandom.nextInt(charArray.length)]);
            } while (i < nextInt);
            f6017Wwwwwwwwwwwwwwwwwwww = sb.toString();
            f6015Wwwwwwwwwwwwwwwwww = Pattern.compile("^/?v\\d+\\.\\d+/(.*)");
        }
        f6017Wwwwwwwwwwwwwwwwwwww = sb.toString();
        f6015Wwwwwwwwwwwwwwwwww = Pattern.compile("^/?v\\d+\\.\\d+/(.*)");
    }

    @JvmOverloads
    public GraphRequest() {
        this(null, null, null, null, null, null, 63, null);
    }

    @JvmStatic
    @NotNull
    public static final GraphRequest Wwwwww(@Nullable AccessToken accessToken, @Nullable String str, @Nullable JSONObject jSONObject, @Nullable Callback callback) {
        return Companion.Wwwwwwww(accessToken, str, jSONObject, callback);
    }

    @JvmStatic
    @NotNull
    public static final GraphRequest Wwwwwww(@Nullable AccessToken accessToken, @Nullable GraphJSONObjectCallback graphJSONObjectCallback) {
        return Companion.Wwwwwwwwww(accessToken, graphJSONObjectCallback);
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Callback callback, GraphResponse graphResponse) {
        JSONObject optJSONObject;
        JSONArray optJSONArray;
        int length;
        String optString;
        String optString2;
        String optString3;
        JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = graphResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            optJSONObject = null;
        } else {
            optJSONObject = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.optJSONObject("__debug__");
        }
        if (optJSONObject == null) {
            optJSONArray = null;
        } else {
            optJSONArray = optJSONObject.optJSONArray("messages");
        }
        if (optJSONArray != null && (length = optJSONArray.length()) > 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                if (optJSONObject2 == null) {
                    optString = null;
                } else {
                    optString = optJSONObject2.optString("message");
                }
                if (optJSONObject2 == null) {
                    optString2 = null;
                } else {
                    optString2 = optJSONObject2.optString("type");
                }
                if (optJSONObject2 == null) {
                    optString3 = null;
                } else {
                    optString3 = optJSONObject2.optString("link");
                }
                if (optString != null && optString2 != null) {
                    LoggingBehavior loggingBehavior = LoggingBehavior.GRAPH_API_DEBUG_INFO;
                    if (Intrinsics.areEqual(optString2, "warning")) {
                        loggingBehavior = LoggingBehavior.GRAPH_API_DEBUG_WARNING;
                    }
                    if (!Utility.Kk(optString3)) {
                        optString = ((Object) optString) + " Link: " + ((Object) optString3);
                    }
                    Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(loggingBehavior, f6018Wwwwwwwwwwwwwwwwwwwww, optString);
                }
                if (i2 >= length) {
                    break;
                }
                i = i2;
            }
        }
        if (callback == null) {
            return;
        }
        callback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(graphResponse);
    }

    public final boolean Kkkkkkkkkkkkkkkkkkkkkk() {
        boolean contains$default;
        String Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwww2 == null) {
            contains$default = false;
        } else {
            contains$default = StringsKt.contains$default((CharSequence) Wwwwwwwwwwwwwwwwwwwww2, (CharSequence) "|", false, 2, (Object) null);
        }
        if (Wwwwwwwwwwwwwwwwwwwww2 != null && StringsKt.startsWith$default(Wwwwwwwwwwwwwwwwwwwww2, "IG", false, 2, (Object) null) && !contains$default && Wwwwwwwww()) {
            return true;
        }
        if (Wwwwwwww() || contains$default) {
            return false;
        }
        return true;
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkkk(@Nullable Object obj) {
        this.f6024Wwwwwwwwwwwwwwwwwwwwwwwwwww = obj;
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkkkk(@NotNull Bundle bundle) {
        this.f6025Wwwwwwwwwwwwwwwwwwwwwwwwwwww = bundle;
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkkkkk(@Nullable HttpMethod httpMethod) {
        if (this.f6019Wwwwwwwwwwwwwwwwwwwwww != null && httpMethod != HttpMethod.GET) {
            throw new FacebookException("Can't change HTTP method on request with overridden URL.");
        }
        if (httpMethod == null) {
            httpMethod = HttpMethod.GET;
        }
        this.f6021Wwwwwwwwwwwwwwwwwwwwwwww = httpMethod;
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkkkkkk(@Nullable JSONObject jSONObject) {
        this.f6029Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject;
    }

    public final void Www(boolean z) {
        this.f6020Wwwwwwwwwwwwwwwwwwwwwww = z;
    }

    public final void Wwww(@Nullable final Callback callback) {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        if (!FacebookSdk.Kkkkkkkkkkkkkkkkkkkkkkkk(LoggingBehavior.GRAPH_API_DEBUG_INFO) && !FacebookSdk.Kkkkkkkkkkkkkkkkkkkkkkkk(LoggingBehavior.GRAPH_API_DEBUG_WARNING)) {
            this.f6022Wwwwwwwwwwwwwwwwwwwwwwwww = callback;
        } else {
            this.f6022Wwwwwwwwwwwwwwwwwwwwwwwww = new Callback() { // from class: com.facebook.Wwwwwwwwwwwwwwwwwwww
                @Override // com.facebook.GraphRequest.Callback
                public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GraphResponse graphResponse) {
                    GraphRequest.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GraphRequest.Callback.this, graphResponse);
                }
            };
        }
    }

    public final void Wwwww(JSONArray jSONArray, Map<String, Attachment> map) throws JSONException, IOException {
        JSONObject jSONObject = new JSONObject();
        String str = this.f6028Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (str != null) {
            jSONObject.put("name", str);
            jSONObject.put("omit_response_on_success", this.f6026Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        String str2 = this.f6027Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (str2 != null) {
            jSONObject.put("depends_on", str2);
        }
        String Wwwwwwwwwwwww2 = Wwwwwwwwwwwww();
        jSONObject.put("relative_url", Wwwwwwwwwwwww2);
        jSONObject.put(FirebaseAnalytics.Param.METHOD, this.f6021Wwwwwwwwwwwwwwwwwwwwwwww);
        AccessToken accessToken = this.f6031Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (accessToken != null) {
            Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(accessToken.Wwwwwwwwwwwwwwwwwwwwww());
        }
        ArrayList arrayList = new ArrayList();
        for (String str3 : this.f6025Wwwwwwwwwwwwwwwwwwwwwwwwwwww.keySet()) {
            Object obj = this.f6025Wwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str3);
            if (Companion.Wwwwwwwwwwwww(obj)) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format(Locale.ROOT, "%s%d", Arrays.copyOf(new Object[]{"file", Integer.valueOf(map.size())}, 2));
                arrayList.add(format);
                map.put(format, new Attachment(this, obj));
            }
        }
        if (!arrayList.isEmpty()) {
            jSONObject.put("attached_files", TextUtils.join(",", arrayList));
        }
        JSONObject jSONObject2 = this.f6029Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (jSONObject2 != null) {
            final ArrayList arrayList2 = new ArrayList();
            Companion.Wwwww(jSONObject2, Wwwwwwwwwwwww2, new KeyValueSerializer() { // from class: com.facebook.GraphRequest$serializeToBatch$1
                @Override // com.facebook.GraphRequest.KeyValueSerializer
                public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str4, @NotNull String str5) throws IOException {
                    ArrayList<String> arrayList3 = arrayList2;
                    StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                    arrayList3.add(String.format(Locale.US, "%s=%s", Arrays.copyOf(new Object[]{str4, URLEncoder.encode(str5, "UTF-8")}, 2)));
                }
            });
            jSONObject.put("body", TextUtils.join("&", arrayList2));
        }
        jSONArray.put(jSONObject);
    }

    public final boolean Wwwwwwww() {
        if (!Intrinsics.areEqual(FacebookSdk.Wwwwwwwwww(), "instagram.com")) {
            return true;
        }
        return !Wwwwwwwww();
    }

    public final boolean Wwwwwwwww() {
        if (this.f6030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            return false;
        }
        String str = "^/?" + FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww() + "/?.*";
        if (!this.f6020Wwwwwwwwwwwwwwwwwwwwwww && !Pattern.matches(str, this.f6030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && !Pattern.matches("^/?app/?.*", this.f6030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            return false;
        }
        return true;
    }

    public final String Wwwwwwwwww(String str) {
        if (!Wwwwwwww()) {
            str = ServerProtocol.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        return String.format("%s/%s", Arrays.copyOf(new Object[]{str, Wwwwwwwwwwwwwwww()}, 2));
    }

    @NotNull
    public final String Wwwwwwwwwww() {
        String Wwwwwwwwwwwwwwwwwwwwwwwwww2;
        String str = this.f6019Wwwwwwwwwwwwwwwwwwwwww;
        if (str != null) {
            return String.valueOf(str);
        }
        String str2 = this.f6030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (this.f6021Wwwwwwwwwwwwwwwwwwwwwwww == HttpMethod.POST && str2 != null && StringsKt.endsWith$default(str2, "/videos", false, 2, (Object) null)) {
            Wwwwwwwwwwwwwwwwwwwwwwwwww2 = ServerProtocol.Wwwwwwwwwwwwwwwwwwwwwwwww();
        } else {
            ServerProtocol serverProtocol = ServerProtocol.INSTANCE;
            Wwwwwwwwwwwwwwwwwwwwwwwwww2 = ServerProtocol.Wwwwwwwwwwwwwwwwwwwwwwwwww(FacebookSdk.Wwwwwwwwww());
        }
        String Wwwwwwwwww2 = Wwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2);
        Wwwwwwwwwwwwwwwwwwwwwwwwww();
        return Wwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwww2, false);
    }

    @Nullable
    public final Object Wwwwwwwwwwww() {
        return this.f6024Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final String Wwwwwwwwwwwww() {
        if (this.f6019Wwwwwwwwwwwwwwwwwwwwww == null) {
            String Wwwwwwwwww2 = Wwwwwwwwww(ServerProtocol.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
            Wwwwwwwwwwwwwwwwwwwwwwwwww();
            Uri parse = Uri.parse(Wwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwww2, true));
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            return String.format("%s?%s", Arrays.copyOf(new Object[]{parse.getPath(), parse.getQuery()}, 2));
        }
        throw new FacebookException("Can't override URL for a batch request");
    }

    @NotNull
    public final Bundle Wwwwwwwwwwwwww() {
        return this.f6025Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final HttpMethod Wwwwwwwwwwwwwww() {
        return this.f6021Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final String Wwwwwwwwwwwwwwww() {
        if (f6015Wwwwwwwwwwwwwwwwww.matcher(this.f6030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).matches()) {
            return this.f6030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        return String.format("%s/%s", Arrays.copyOf(new Object[]{this.f6023Wwwwwwwwwwwwwwwwwwwwwwwwww, this.f6030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww}, 2));
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwww() {
        return this.f6030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final JSONObject Wwwwwwwwwwwwwwwwww() {
        return this.f6029Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final String Wwwwwwwwwwwwwwwwwww() {
        String Wwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww();
        String Wwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwww2.length() > 0 && Wwwwwwwwwwwwwwww2.length() > 0) {
            return Wwwwwwwwwwwwwwwwwwwwww2 + '|' + Wwwwwwwwwwwwwwww2;
        }
        Utility utility = Utility.INSTANCE;
        Utility.Illllllllllllllllllllll(f6018Wwwwwwwwwwwwwwwwwwwww, "Warning: Request without access token missing application ID or client token.");
        return null;
    }

    @Nullable
    public final Callback Wwwwwwwwwwwwwwwwwwww() {
        return this.f6022Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final String Wwwwwwwwwwwwwwwwwwwww() {
        AccessToken accessToken = this.f6031Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (accessToken != null) {
            if (!this.f6025Wwwwwwwwwwwwwwwwwwwwwwwwwwww.containsKey("access_token")) {
                String Wwwwwwwwwwwwwwwwwwwwww2 = accessToken.Wwwwwwwwwwwwwwwwwwwwww();
                Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwww2);
                return Wwwwwwwwwwwwwwwwwwwwww2;
            }
        } else if (!this.f6025Wwwwwwwwwwwwwwwwwwwwwwwwwwww.containsKey("access_token")) {
            return Wwwwwwwwwwwwwwwwwww();
        }
        return this.f6025Wwwwwwwwwwwwwwwwwwwwwwwwwwww.getString("access_token");
    }

    @Nullable
    public final AccessToken Wwwwwwwwwwwwwwwwwwwwww() {
        return this.f6031Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final GraphRequestAsyncTask Wwwwwwwwwwwwwwwwwwwwwww() {
        return Companion.Wwwwwwwwwwwwwwwwwwwww(this);
    }

    @NotNull
    public final GraphResponse Wwwwwwwwwwwwwwwwwwwwwwww() {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwww(String str, boolean z) {
        if (!z && this.f6021Wwwwwwwwwwwwwwwwwwwwwwww == HttpMethod.POST) {
            return str;
        }
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        for (String str2 : this.f6025Wwwwwwwwwwwwwwwwwwwwwwwwwwww.keySet()) {
            Object obj = this.f6025Wwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str2);
            if (obj == null) {
                obj = "";
            }
            Companion companion = Companion;
            if (companion.Wwwwwwwwwwww(obj)) {
                buildUpon.appendQueryParameter(str2, companion.Wwwwww(obj).toString());
            } else if (this.f6021Wwwwwwwwwwwwwwwwwwwwwwww != HttpMethod.GET) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                throw new IllegalArgumentException(String.format(Locale.US, "Unsupported parameter type for GET request: %s", Arrays.copyOf(new Object[]{obj.getClass().getSimpleName()}, 1)));
            }
        }
        return buildUpon.toString();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        Bundle bundle = this.f6025Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (Kkkkkkkkkkkkkkkkkkkkkk()) {
            bundle.putString("access_token", Wwwwwwwwwwwwwwwwwww());
        } else {
            String Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwww2 != null) {
                bundle.putString("access_token", Wwwwwwwwwwwwwwwwwwwww2);
            }
        }
        if (!bundle.containsKey("access_token")) {
            Utility utility = Utility.INSTANCE;
            Utility.Kk(FacebookSdk.Wwwwwwwwwwwwwwww());
        }
        bundle.putString(ServiceProvider.NAMED_SDK, "android");
        bundle.putString("format", "json");
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        if (FacebookSdk.Kkkkkkkkkkkkkkkkkkkkkkkk(LoggingBehavior.GRAPH_API_DEBUG_INFO)) {
            bundle.putString("debug", "info");
        } else if (FacebookSdk.Kkkkkkkkkkkkkkkkkkkkkkkk(LoggingBehavior.GRAPH_API_DEBUG_WARNING)) {
            bundle.putString("debug", "warning");
        }
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{Request: ");
        sb.append(" accessToken: ");
        Object obj = this.f6031Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (obj == null) {
            obj = AbstractJsonLexerKt.NULL;
        }
        sb.append(obj);
        sb.append(", graphPath: ");
        sb.append(this.f6030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        sb.append(", graphObject: ");
        sb.append(this.f6029Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        sb.append(", httpMethod: ");
        sb.append(this.f6021Wwwwwwwwwwwwwwwwwwwwwwww);
        sb.append(", parameters: ");
        sb.append(this.f6025Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
        sb.append("}");
        return sb.toString();
    }

    public /* synthetic */ GraphRequest(AccessToken accessToken, String str, Bundle bundle, HttpMethod httpMethod, Callback callback, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : accessToken, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : bundle, (i & 8) != 0 ? null : httpMethod, (i & 16) != 0 ? null : callback, (i & 32) != 0 ? null : str2);
    }

    @JvmOverloads
    public GraphRequest(@Nullable AccessToken accessToken, @Nullable String str, @Nullable Bundle bundle, @Nullable HttpMethod httpMethod, @Nullable Callback callback, @Nullable String str2) {
        this.f6026Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        this.f6031Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = accessToken;
        this.f6030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f6023Wwwwwwwwwwwwwwwwwwwwwwwwww = str2;
        Wwww(callback);
        Kkkkkkkkkkkkkkkkkkkkkkkkk(httpMethod);
        if (bundle != null) {
            this.f6025Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new Bundle(bundle);
        } else {
            this.f6025Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new Bundle();
        }
        if (this.f6023Wwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            this.f6023Wwwwwwwwwwwwwwwwwwwwwwwwww = FacebookSdk.Wwwwwwwwwww();
        }
    }
}
